#include <windows.h>
#include <string>
#include <tchar.h>
#include <stdio.h>
#include "ResourceEditor.h"
#include "winchar.h"

using namespace std;

typedef std::string tstring;

static bool GetDLLVersionUsingRE(const tstring& filepath, DWORD& high, DWORD & low)
{
  bool found = false;

  FILE *fdll = fopen(filepath.c_str(), "rb");
  if (!fdll)
    return 0;

  fseek(fdll, 0, SEEK_END);
  unsigned int len = ftell(fdll);
  fseek(fdll, 0, SEEK_SET);

  LPBYTE dll = (LPBYTE) malloc(len);

  if (!dll)
  {
    fclose(fdll);
    return 0;
  }

  if (fread(dll, 1, len, fdll) != len)
  {
    fclose(fdll);
    free(dll);
    return 0;
  }

  try
  {
    CResourceEditor *dllre = new CResourceEditor(dll, len);
#ifdef _UNICODE
    LPBYTE ver = dllre->GetResourceW(VS_FILE_INFO, MAKEINTRESOURCE(VS_VERSION_INFO), 0);
    int versize = dllre->GetResourceSizeW(VS_FILE_INFO, MAKEINTRESOURCE(VS_VERSION_INFO), 0);
#else
    LPBYTE ver = dllre->GetResourceA(VS_FILE_INFO, MAKEINTRESOURCE(VS_VERSION_INFO), 0);
    int versize = dllre->GetResourceSizeA(VS_FILE_INFO, MAKEINTRESOURCE(VS_VERSION_INFO), 0);
#endif

    if (ver)
    {
      if ((size_t) versize > sizeof(WORD) * 3)
      {
        // get VS_FIXEDFILEINFO from VS_VERSIONINFO
        WCHAR *szKey = (WCHAR *)(ver + sizeof(WORD) * 3);
        int len = (winchar_strlen(szKey) + 1) * sizeof(WCHAR) + sizeof(WORD) * 3;
        len = (len + 3) & ~3; // align on DWORD boundry
        VS_FIXEDFILEINFO *verinfo = (VS_FIXEDFILEINFO *)(ver + len);
        if (versize > len && verinfo->dwSignature == VS_FFI_SIGNATURE)
        {
          low = verinfo->dwFileVersionLS;
          high = verinfo->dwFileVersionMS;
          found = true;
        }
      }
      dllre->FreeResource(ver);
    }

    delete dllre;
  }
  catch (exception&)
  {
  }

  return found;
}

static bool GetDLLVersionUsingAPI(const tstring& filepath, DWORD& high, DWORD& low)
{
  bool found = false;

#ifdef _WIN32
  TCHAR path[1024];
  TCHAR *name;
  path[0] = 0;

  GetFullPathName(filepath.c_str(), 1024, path, &name);

  DWORD d;
  DWORD verSize = GetFileVersionInfoSize(path, &d);
  if (verSize)
  {
    void *buf = (void *) GlobalAlloc(GPTR, verSize);
    if (buf)
    {
      UINT uLen;
      VS_FIXEDFILEINFO *pvsf;
      if (GetFileVersionInfo(path, 0, verSize, buf) && VerQueryValue(buf, _T("\\"), (void**) &pvsf, &uLen))
      {
        low = pvsf->dwFileVersionLS;
        high = pvsf->dwFileVersionMS;
        found = true;
      }
      GlobalFree(buf);
    }
  }
#endif

  return found;
}

#ifdef _WIN32

// the following structure must be byte-aligned.
#pragma pack( push, pre_vxd_ver, 1 )
typedef struct _VXD_VERSION_RESOURCE {
  char  cType;				// Should not be converted to TCHAR (JP)
  WORD  wID;
  char  cName;				// Should not be converted to TCHAR (JP)
  WORD  wOrdinal;
  WORD  wFlags;
  DWORD dwResSize;
  BYTE  bVerData;
} VXD_VERSION_RESOURCE, *PVXD_VERSION_RESOURCE;
#pragma pack( pop, pre_vxd_ver )

static BOOL GetVxdVersion( LPCTSTR szFile, LPDWORD lpdwLen, LPVOID lpData ) 
{

  HANDLE hFile        = NULL;
  HANDLE hFileMapping = NULL;
  void * pView        = NULL;
  DWORD  dwSize       = 0;
  DWORD  dwError      = 0;

  PIMAGE_DOS_HEADER       pDosExeHdr = NULL;
  PIMAGE_NT_HEADERS       pNtExeHdr  = NULL;
  PIMAGE_VXD_HEADER       pLEHdr     = NULL;
  PVXD_VERSION_RESOURCE   pVerRes    = NULL;
  LPVOID                  pRawRes    = NULL;

  // Open the file for shared read access.
  hFile = CreateFile( szFile, GENERIC_READ, FILE_SHARE_READ,
       NULL, OPEN_EXISTING, 0, NULL );
  if ( hFile == INVALID_HANDLE_VALUE )
  {
    return FALSE;
  }

  // Create a read-only file mapping object for the file.
  hFileMapping = CreateFileMapping( hFile, NULL,
       PAGE_READONLY, 0, 0, NULL);
  if ( !hFileMapping )
  {
    dwError = GetLastError();

    if ( hFile != INVALID_HANDLE_VALUE )
      CloseHandle( hFile );

    SetLastError( dwError );
    return FALSE;
  }

  // Map a view of the the file.
  pView = MapViewOfFile( hFileMapping, FILE_MAP_READ, 0, 0, 0 );
  if ( !pView )
  {
    dwError = GetLastError();

    if ( hFileMapping )
      CloseHandle( hFileMapping );

    if ( hFile != INVALID_HANDLE_VALUE )
      CloseHandle( hFile );

    SetLastError( dwError );
    return FALSE;
  }

  // The DOS header begins at byte 0.
  pDosExeHdr = (PIMAGE_DOS_HEADER) pView;

  // Check to make sure the file has a DOS EXE header.
  if ( pDosExeHdr->e_magic != IMAGE_DOS_SIGNATURE ) 
  {
    if ( pView )
      UnmapViewOfFile( pView );

    if ( hFileMapping )
      CloseHandle( hFileMapping );

    if ( hFile != INVALID_HANDLE_VALUE )
      CloseHandle( hFile );

    SetLastError( ERROR_BAD_FORMAT );
    return FALSE;
  }

  // Find the beginning of the NT header at offset e_lfanew.
  pNtExeHdr = (PIMAGE_NT_HEADERS) ( (DWORD) pView
       + (DWORD) pDosExeHdr->e_lfanew );

  // Check to make sure the file is a VxD.
  if ( (DWORD) pNtExeHdr->Signature != IMAGE_VXD_SIGNATURE ) 
  {
    if ( pView )
      UnmapViewOfFile( pView );

    if ( hFileMapping )
      CloseHandle( hFileMapping );

    if ( hFile != INVALID_HANDLE_VALUE )
      CloseHandle( hFile );

    SetLastError( ERROR_BAD_FORMAT );
    return FALSE;
  }

  // The LE header begins at the same place as the NT header.
  pLEHdr = (PIMAGE_VXD_HEADER) pNtExeHdr;

  // e32_winreslen contains the size of the VxD's version resource.
  if ( pLEHdr->e32_winreslen == 0 ) {
    *lpdwLen = 0;
    if ( pView )
      UnmapViewOfFile( pView );

    if ( hFileMapping )
      CloseHandle( hFileMapping );

    if ( hFile != INVALID_HANDLE_VALUE )
      CloseHandle( hFile );

    SetLastError( ERROR_RESOURCE_DATA_NOT_FOUND );
    return FALSE;
  }

  // e32_winresoff contains the offset of the resource in the VxD.
  pVerRes = (VXD_VERSION_RESOURCE *) ( (DWORD) pView
       + (DWORD) pLEHdr->e32_winresoff );
  dwSize = pVerRes->dwResSize;
  pRawRes = &(pVerRes->bVerData);

  // Make sure the supplied buffer is large enough for the resource.
  if ( ( lpData == NULL ) || ( *lpdwLen < dwSize ) ) {
    *lpdwLen = dwSize;

    if ( pView )
      UnmapViewOfFile( pView );

    if ( hFileMapping )
      CloseHandle( hFileMapping );

    if ( hFile != INVALID_HANDLE_VALUE )
      CloseHandle( hFile );

    SetLastError( ERROR_INSUFFICIENT_BUFFER );
    return FALSE;
  }

  // Zero the passed buffer and copy the resource into it.
  ZeroMemory( lpData, *lpdwLen );
  CopyMemory( lpData, pRawRes, dwSize );
  *lpdwLen = dwSize;

  // Clean up resources.
  if ( pView )
    UnmapViewOfFile( pView );

  if ( hFileMapping )
    CloseHandle( hFileMapping );

  if ( hFile != INVALID_HANDLE_VALUE )
    CloseHandle( hFile );

  SetLastError(0);
  return TRUE;
}

static DWORD GetVxdVersionInfoSize( LPCTSTR szFile ) 
{
  DWORD dwResult = 0;

  // Call GetVxdVersion() with NULL for the pointer to the buffer.
  if ( !GetVxdVersion( szFile, &dwResult, NULL ) ) 
  {
    DWORD dwError = GetLastError();

    // GetVxdVersion() will fail with ERROR_INSUFFICIENT_BUFFER and
    // the required buffer size will be returned in dwResult.
    if ( GetLastError() == ERROR_INSUFFICIENT_BUFFER ) 
    {
      SetLastError( 0 );
      return dwResult;
    }
  }

  // The following line is never executed.
  return 0;
}

static BOOL GetVxdVersionInfo( LPCTSTR szFile, DWORD dwLen, LPVOID lpData ) 
{
  return GetVxdVersion( szFile, &dwLen, lpData );
}

#endif //_WIN32

static bool GetDLLVersionFromVXD(const tstring& filepath, DWORD& high, DWORD& low)
{
  bool found = false;

#ifdef _WIN32
  DWORD verSize = GetVxdVersionInfoSize(filepath.c_str());
  if (verSize)
  {
    void *buf = (void *) GlobalAlloc(GPTR, verSize);
    if (buf)
    {
      UINT uLen;
      VS_FIXEDFILEINFO *pvsf;
      if (GetVxdVersionInfo(filepath.c_str(), verSize, buf) && VerQueryValue(buf, _T("\\"), (void**) &pvsf, &uLen))
      {
        low = pvsf->dwFileVersionLS;
        high = pvsf->dwFileVersionMS;
        found = true;
      }
      GlobalFree(buf);
    }
  }
#endif

  return found;
}

bool GetDLLVersion(const tstring& filepath, DWORD& high, DWORD& low)
{
  if (GetDLLVersionUsingAPI(filepath, high, low))
    return true;

  if (GetDLLVersionUsingRE(filepath, high, low))
    return true;

  if (GetDLLVersionFromVXD(filepath, high, low))
    return true;

  return false;
}

int main(int argc, char* argv[])
{
   DWORD high, low;

   for (int i = 1; i < argc; ++i)
   {
      if (GetDLLVersion(argv[i], high, low))
      {
         printf("%s: high = %u, low = %u\n", argv[1], high, low);
      }
   }
}
