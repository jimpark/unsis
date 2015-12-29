#include "ttf.h"
#include "util.h"
#include <windows.h>

// Code based on http://www.codeproject.com/KB/GDI/fontnamefromfile.aspx.
// For proper handling of names using the platform, encoding id, and language
// id, please refer to the typography spec:
// http://www.microsoft.com/typography/otspec/name.htm
// http://developer.apple.com/fonts/ttrefman/rm06/Chap6name.html

#define SWAPWORD(x) MAKEWORD(HIBYTE(x), LOBYTE(x))
#define SWAPLONG(x) MAKELONG(SWAPWORD(HIWORD(x)), SWAPWORD(LOWORD(x)))

typedef struct _TT_OFFSET_TABLE {
    USHORT uMajorVersion;
    USHORT uMinorVersion;
    USHORT uNumOfTables;
    USHORT uSearchRange;
    USHORT uEntrySelector;
    USHORT uRangeShift;
} TT_OFFSET_TABLE;

typedef struct _TT_TABLE_DIRECTORY{
    char szTag[4]; //table name
    ULONG uCheckSum; //Check sum
    ULONG uOffset; //Offset from beginning of file
    ULONG uLength; //length of the table in bytes
} TT_TABLE_DIRECTORY;

//Header of names table

typedef struct _TT_NAME_TABLE_HEADER {
    USHORT uFSelector; //format selector. Always 0
    USHORT uNRCount; //Name Records count
    USHORT uStorageOffset; //Offset for strings storage, 
                           //from start of the table
} TT_NAME_TABLE_HEADER;

//Record in names table

typedef struct _TT_NAME_RECORD {
    USHORT uPlatformID;
    USHORT uEncodingID;
    USHORT uLanguageID;
    USHORT uNameID;
    USHORT uStringLength;
    USHORT uStringOffset; //from start of storage area
} TT_NAME_RECORD;

enum TTFField
{
   CopyrightNotice,              //  0
   FontFamilyName,               //  1
   FontSubfamilyName,            //  2
   UniqueFontIdentifier,         //  3
   FullFontName,                 //  4
   VersionString,                //  5
   PostScriptName,               //  6
   Trademark,                    //  7
   Manufacturer,                 //  8
   Designer,                     //  9
   Description,                  // 10
   URLVendor,                    // 11
   URLDesigner,                  // 12
   LicenseDescription,           // 13
   LicenseInfoURL,               // 14
   Reserved, // Do not use       // 15
   PreferredFamily,              // 16
   PreferredSubfamily,           // 17
   CompatibleFull, // MAC Only      18
   SampleText,                   // 19
   PostScriptCIDFindFontName,    // 20
   WWSFamilyName,                // 21
   WWSSubfamilyName              // 22
};

BOOL GetTTFNameString(TCHAR* ttfFileName, int field, TCHAR* buf, int bufChars)
{
   TT_OFFSET_TABLE ttfTable;
   TT_TABLE_DIRECTORY tblDir;
   TT_NAME_TABLE_HEADER ttNTHeader;
   TT_NAME_RECORD ttRecord;
   int i;
   HANDLE hFile = NULL;
   BOOL bFound = FALSE;
   BOOL rval = FALSE;
   DWORD bytesRead = 0;
   wchar_t* strBuf = NULL;
   char tblName[5];

   hFile = CreateFile(
      ttfFileName,
      GENERIC_READ,
      FILE_SHARE_READ,
      NULL,
      OPEN_EXISTING,
      FILE_ATTRIBUTE_NORMAL,
      NULL);

   if (hFile == INVALID_HANDLE_VALUE)
   {
      log_printf3(_T("%s: failed opening file \"%s\"\n"), _T("GetTTFNameString"), ttfFileName);
   }
   else
   {
      ReadFile(hFile,
               &ttfTable,
               sizeof(TT_OFFSET_TABLE), 
               &bytesRead,
               NULL);

      ttfTable.uNumOfTables = SWAPWORD(ttfTable.uNumOfTables);
      ttfTable.uMajorVersion = SWAPWORD(ttfTable.uMajorVersion);
      ttfTable.uMinorVersion = SWAPWORD(ttfTable.uMinorVersion);

      if (ttfTable.uMajorVersion != 1 || ttfTable.uMinorVersion != 0)
      {
         // Cannot parse further!
         // ERROR_MSG(_T("%File: the file \"%s\" is in unsupported TTF format.\n"));
         return rval;
      }

      for (i=0; i< ttfTable.uNumOfTables; i++)
      {
         ReadFile(hFile,
                  &tblDir,
                  sizeof(TT_TABLE_DIRECTORY),
                  &bytesRead,
                  NULL);
         
         //table's tag cannot exceed 4 characters

         lstrcpynA(tblName, tblDir.szTag, sizeof(tblName));
         tblName[4] = 0;

         if(lstrcmpA("name", tblName) == 0)
         {
            //we found our table. Rearrange order and quit the loop
            bFound = TRUE;
            tblDir.uLength = SWAPLONG(tblDir.uLength);
            tblDir.uOffset = SWAPLONG(tblDir.uOffset);
            break;
         }
      }

      if(bFound)
      {
         //move to offset we got from Offsets Table
         SetFilePointer(hFile, tblDir.uOffset, NULL, FILE_BEGIN);

         ReadFile(hFile, &ttNTHeader, sizeof(TT_NAME_TABLE_HEADER), &bytesRead, NULL);

         //again, don't forget to swap bytes!

         ttNTHeader.uNRCount = SWAPWORD(ttNTHeader.uNRCount);
         ttNTHeader.uStorageOffset = SWAPWORD(ttNTHeader.uStorageOffset);

         for(i=0; i<ttNTHeader.uNRCount; i++)
         {
            ReadFile(hFile, &ttRecord, sizeof(TT_NAME_RECORD), &bytesRead, NULL);
            ttRecord.uNameID = SWAPWORD(ttRecord.uNameID);
            ttRecord.uPlatformID = SWAPWORD(ttRecord.uPlatformID);
            ttRecord.uLanguageID = SWAPWORD(ttRecord.uLanguageID);
            ttRecord.uStringLength = SWAPWORD(ttRecord.uStringLength);
            ttRecord.uStringOffset = SWAPWORD(ttRecord.uStringOffset);

            // We only want English for Windows for consistency.
            if(ttRecord.uNameID == field && ttRecord.uPlatformID == 3 && ttRecord.uLanguageID == 0x409)
            {
#ifndef _UNICODE
               int wchCount;
#endif
               int j;
               int numChars = ttRecord.uStringLength / sizeof(wchar_t);

               SetFilePointer(hFile, tblDir.uOffset + ttRecord.uStringOffset + 
                        ttNTHeader.uStorageOffset, NULL, FILE_BEGIN);

               strBuf = (wchar_t*)GlobalAlloc(GPTR, ttRecord.uStringLength + sizeof(wchar_t));
               ReadFile(hFile, strBuf, ttRecord.uStringLength, &bytesRead, NULL);

               for (j = 0; j < numChars; ++j)
               {
                  // Swap the bytes to make it UTF-16LE.
                  strBuf[j] = SWAPWORD(strBuf[j]);
               }
               strBuf[numChars] = 0;

#ifdef _UNICODE
               lstrcpyn(buf, &strBuf[0], bufChars);
               rval = TRUE;
#else
               wchCount = WideCharToMultiByte(
                     1252,
                     0,
                     strBuf,
                     numChars,
                     buf,
                     bufChars,
                     NULL,
                     NULL);
               buf[wchCount] = 0;

               if (wchCount != 0)
               {
                  rval = TRUE;
               }
#endif
               GlobalFree(strBuf);
               break;
            }
         }
      }

      CloseHandle(hFile);
   }

   return rval;
}


BOOL GetTTFVersionString(TCHAR* ttfFileName, TCHAR* buf, int bufChars)
{
   TCHAR versionBuf[128];
   BOOL rval = GetTTFNameString(ttfFileName, VersionString, versionBuf, 128);

   if(rval == TRUE)
   {
      TCHAR* startPtr = versionBuf;
      TCHAR prefix[sizeof("Version ")]; // Ok since we only want strlen

      lstrcpyn(prefix, versionBuf, sizeof(prefix)/sizeof(TCHAR)); // Ok since we only want strlen
      prefix[sizeof(prefix)/sizeof(TCHAR) - 1] = 0;

      if (lstrcmp(prefix, _T("Version ")) == 0)
      {
         startPtr += sizeof("Version ") - 1; // Ok since we only want strlen
      }

      lstrcpyn(buf, startPtr, bufChars);
   }

   return rval;
}

BOOL GetTTFFontName(TCHAR* ttfFileName, TCHAR* buf, int bufChars)
{
   return GetTTFNameString(ttfFileName, FullFontName, buf, bufChars);
}
