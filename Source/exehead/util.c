/*
 * util.c
 * 
 * This file is a part of NSIS.
 * 
 * Copyright (C) 1999-2009 Nullsoft and Contributors
 * 
 * Licensed under the zlib/libpng license (the "License");
 * you may not use this file except in compliance with the License.
 * 
 * Licence details can be found in the file COPYING.
 * 
 * This software is provided 'as-is', without any express or implied
 * warranty.
 *
 * Unicode support by Jim Park -- 08/11/2007
 */

#include "../Platform.h"
#include <shellapi.h>
#include "util.h"
#include "state.h"
#include "config.h"
#include "lang.h"
#include "fileform.h"
#include "exec.h"
#include "ui.h"
#include "resource.h"
#include <tlhelp32.h>
#include "../tchar.h"

#ifdef NSIS_CONFIG_LOG
#if !defined(NSIS_CONFIG_LOG_ODS) && !defined(NSIS_CONFIG_LOG_STDOUT)
TCHAR g_log_file[1024];
#endif
#endif

// *** DO NOT DECLARE MORE VARIABLES INSIDE THIS PRAGMAS ***
// This will produce a special section called ".ndata" (stands for nsis data)
// this way makensis during build time, can search for this section by name
// and change the virtual size of this section
// which result in extra memory for extra variables without code to do allocation :)
// nsis then removes the "DISCARDABLE" style from section (for safe)
#ifdef _MSC_VER
#  pragma bss_seg(NSIS_VARS_SECTION)
NSIS_STRING g_usrvars[1];
#  pragma bss_seg()
#  pragma comment(linker, "/section:" NSIS_VARS_SECTION ",rwd")
#else
#  ifdef __GNUC__
NSIS_STRING g_usrvars[1] __attribute__((section (NSIS_VARS_SECTION)));
#  else
#    error Unknown compiler. You must implement the seperate PE section yourself.
#  endif
#endif

HANDLE NSISCALL myCreateProcess(TCHAR *cmd)
{
  PROCESS_INFORMATION ProcInfo;
  static STARTUPINFO StartUp;
  StartUp.cb=sizeof(StartUp);
  if (!CreateProcess(NULL, cmd, NULL, NULL, FALSE, 0, NULL, NULL, &StartUp, &ProcInfo))
    return NULL;
  CloseHandle(ProcInfo.hThread);
  return ProcInfo.hProcess;
}

/*BOOL NSISCALL my_SetWindowText(HWND hWnd, const TCHAR *val)
{
  return SendMessage(hWnd,WM_SETTEXT,0,(LPARAM)val);
}*/

BOOL NSISCALL my_SetDialogItemText(HWND dlg, UINT idx, const TCHAR *val)
{
  return SetDlgItemText(dlg,idx,val);
//  return my_SetWindowText(GetDlgItem(dlg, idx), val);
}

int NSISCALL my_GetDialogItemText(UINT idx, TCHAR *val)
{
  extern HWND m_curwnd;
  return GetDlgItemText(m_curwnd, idx, val, NSIS_MAX_STRLEN);
//  return my_GetWindowText(GetDlgItem(m_curwnd, idx), val, NSIS_MAX_STRLEN);
}

int NSISCALL my_MessageBox(const TCHAR *text, UINT type) {
  int _type = type & 0x001FFFFF;
  static MSGBOXPARAMS mbp = {
    sizeof(MSGBOXPARAMS),
    0,
    0,
    0,
    0,
    0,
    MAKEINTRESOURCE(IDI_ICON2),
    0,
    0,
    0
  };
  
#ifdef NSIS_CONFIG_SILENT_SUPPORT
  // default for silent installers
  if (g_exec_flags.silent && type >> 21)
    return type >> 21;
#endif
  // no silent or no default, just show
  if (g_exec_flags.rtl)
    _type ^= MB_RIGHT | MB_RTLREADING;

  mbp.hwndOwner = g_hwnd;
  mbp.hInstance = g_hInstance;
  mbp.lpszText = text;
  mbp.lpszCaption = g_caption;
  mbp.dwStyle = _type;
  
  return MessageBoxIndirect(&mbp);
}

void NSISCALL myDelete(TCHAR *buf, int flags)
{
  static TCHAR lbuf[NSIS_MAX_STRLEN];

  HANDLE h;
  WIN32_FIND_DATA fd;
  TCHAR *fn;
  int valid_dir=is_valid_instpath(buf);

  if ((flags & DEL_SIMPLE))
  {
    g_exec_flags.exec_error += !DeleteFile(buf);
    return;
  }

#ifdef NSIS_SUPPORT_RMDIR
  if (!(flags & DEL_DIR) || (valid_dir && (flags & DEL_RECURSE)))
#endif//NSIS_SUPPORT_RMDIR
  {
    mystrcpy(lbuf,buf);
#ifdef NSIS_SUPPORT_RMDIR
    if (flags & DEL_DIR)
      mystrcat(lbuf,_T("\\*.*"));
    else
#endif//NSIS_SUPPORT_RMDIR
      trimslashtoend(buf);

    // only append backslash if the path isn't relative to the working directory [bug #1851273]
    if (*buf || *lbuf == _T('\\'))
      mystrcat(buf,_T("\\"));

    fn=buf+mystrlen(buf);

    h = FindFirstFile(lbuf,&fd);
    if (h != INVALID_HANDLE_VALUE)
    {
      do
      {
        TCHAR *fdfn = fd.cFileName;
        if (*findchar(fdfn, _T('?')) && *fd.cAlternateFileName)
          // name contains unicode, use short name
          fdfn = fd.cAlternateFileName;

#ifdef NSIS_SUPPORT_RMDIR
        if (fdfn[0] == _T('.') && !fdfn[1]) continue;
        if (fdfn[0] == _T('.') && fdfn[1] == _T('.') && !fdfn[2]) continue;
#endif//NSIS_SUPPORT_RMDIR
        {
          mystrcpy(fn,fdfn);
          if (fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
          {
#ifdef NSIS_SUPPORT_RMDIR
            if ((flags & (DEL_DIR | DEL_RECURSE)) == (DEL_DIR | DEL_RECURSE))
            {
              myDelete(buf,flags);
            }
#endif//NSIS_SUPPORT_RMDIR
          }
          else
          {
            log_printf2(_T("Delete: DeleteFile(\"%s\")"),buf);
            remove_ro_attr(buf);
            if (!DeleteFile(buf))
            {
#ifdef NSIS_SUPPORT_MOVEONREBOOT
              if (flags & DEL_REBOOT)
              {
                log_printf2(_T("Delete: DeleteFile on Reboot(\"%s\")"),buf);
                update_status_text(LANG_DELETEONREBOOT,buf);
                MoveFileOnReboot(buf,NULL);
              }
              else
#endif//NSIS_SUPPORT_MOVEONREBOOT
              {
                log_printf2(_T("Delete: DeleteFile failed(\"%s\")"),buf);
                g_exec_flags.exec_error++;
              }
            }
            else
              update_status_text(LANG_DELETEFILE,buf);
          }
        }
      } while (FindNextFile(h,&fd));
      FindClose(h);
    }

#ifdef NSIS_SUPPORT_RMDIR
    if (flags & DEL_DIR)
      fn[-1]=0;
#endif//NSIS_SUPPORT_RMDIR
  }

#ifdef NSIS_SUPPORT_RMDIR
  if ((flags & DEL_DIR))
  {
    if (!valid_dir)
    {
      log_printf2(_T("RMDir: RemoveDirectory invalid input(\"%s\")"),buf);
      g_exec_flags.exec_error++;
    }
    else if (file_exists(buf))
    {
      addtrailingslash(buf);
      log_printf2(_T("RMDir: RemoveDirectory(\"%s\")"),buf);
      remove_ro_attr(buf);
      if (!RemoveDirectory(buf))
      {
#ifdef NSIS_SUPPORT_MOVEONREBOOT
        if (flags & DEL_REBOOT)
        {
          log_printf2(_T("RMDir: RemoveDirectory on Reboot(\"%s\")"),buf);
          update_status_text(LANG_DELETEONREBOOT,buf);
          MoveFileOnReboot(buf,NULL);
        }
        else
#endif//NSIS_SUPPORT_MOVEONREBOOT
        {
          log_printf2(_T("RMDir: RemoveDirectory failed(\"%s\")"),buf);
          g_exec_flags.exec_error++;
        }
      }
      else
      {
        update_status_text(LANG_REMOVEDIR,buf);
      }
    }
  }
#endif//NSIS_SUPPORT_RMDIR
}

TCHAR *NSISCALL addtrailingslash(TCHAR *str)
{
  if (lastchar(str)!=_T('\\')) mystrcat(str,_T("\\"));
  return str;
}

/*char NSISCALL lastchar(const char *str)
{
  return *CharPrev(str,str+mystrlen(str));
}*/

TCHAR * NSISCALL findchar(TCHAR *str, TCHAR c)
{
  while (*str && *str != c)
  {
    str = CharNext(str);
  }
  return str;
}

// Separates a full path to the directory portion and file name portion
// and returns the pointer to the filename portion.
TCHAR * NSISCALL trimslashtoend(TCHAR *buf)
{
  TCHAR *p = buf + mystrlen(buf);
  do
  {
    if (*p == _T('\\'))
      break;
    p = CharPrev(buf, p);
  } while (p > buf);

  *p = 0;

  return p + 1;
}

int NSISCALL validpathspec(TCHAR *ubuf)
{
  TCHAR dl = ubuf[0] | 0x20; // convert alleged drive letter to lower case
  // TCHAR dl = _totlower(ubuf[0]);
//  return ((*(WORD*)ubuf==CHAR2_TO_WORD(_T('\\'),_T('\\'))) || (dl >= _T('a') && dl <= _T('z') && ubuf[1]==_T(':')));
  return ((ubuf[0] == _T('\\') && ubuf[1] == _T('\\')) ||
          (dl >= _T('a') && dl <= _T('z') && ubuf[1] == _T(':')));
}

TCHAR * NSISCALL skip_root(TCHAR *path)
{
  TCHAR *p = CharNext(path);
  TCHAR *p2 = CharNext(p);

  if (*path && p[0] == _T(':') && p[1] == _T('\\')) // *(WORD*)p == CHAR2_TO_WORD(_T(':'), _T('\\')))
  {
    return CharNext(p2);
  }
  else if (path[0] == _T('\\') && path[1] == _T('\\')) // *(WORD*)path == CHAR2_TO_WORD(_T('\\'),_T('\\')))
  {
    // skip host and share name
    int x = 2;
    while (x--)
    {
      p2 = findchar(p2, _T('\\'));
      if (!*p2)
        return NULL;
      p2++; // skip backslash
    }

    return p2;
  }
  else
    return NULL;
}

int NSISCALL is_valid_instpath(TCHAR *s)
{
  static TCHAR tmp[NSIS_MAX_STRLEN];
  TCHAR *root;

  mystrcpy(tmp, s);

  root = skip_root(tmp);

  if (!root)
    return 0;

  // must be called after skip_root or AllowRootDirInstall won't work.
  // validate_filename removes trailing blackslashes and so converts
  // "C:\" to "C:" which is not a valid directory. skip_root returns
  // NULL for "C:" so the above test returns 0.
  // validate_filename is called so directories such as "C:\ " will
  // not pass as a valid non-root directory.
  validate_filename(root);

  if ((g_flags & CH_FLAGS_NO_ROOT_DIR) && (!*root || *root == _T('\\')))
    return 0;

  while (mystrlen(tmp) > root - tmp)
  {
    WIN32_FIND_DATA *fd = file_exists(tmp);
    // if the directory bit not set then it's a file, which is not a valid inst dir...
    // GetFileAttributes is not used because it doesn't work with certain files (error 32)
    // as for concerns of the user using * or ?, that's invalid anyway...
    if (fd && !(fd->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
      return 0;
    trimslashtoend(tmp);
  }

  // if the root drive exists
  addtrailingslash(tmp); // don't check the current directory, check the root directory
  if (GetFileAttributes(tmp) == INVALID_FILE_ATTRIBUTES)
    return 0;

  return 1;
}

int NSISCALL mystrcmpn(const TCHAR* a, const TCHAR* b, int count)
{
  while (*a != 0 && *b != 0 && count != 0)
  {
    if (*a < *b) return -1;
    if (*b < *a) return 1;

    ++a;
    ++b;
    --count;
  }

  if (count == 0 || (*a == 0 && *b == 0)) return 0;
  if (*a) return 1;
  return -1;
}

const TCHAR * NSISCALL mystrstr(const TCHAR* a, const TCHAR* b)
{
  int bl = lstrlen(b);
  int al = lstrlen(a);

  if (al - bl >= 0)
  {
    int max = al - bl;
    int offset = 0;

    while (offset <= max)
    {
      if (mystrcmpn(&a[offset], b, bl) == 0) return &a[offset];
      ++offset;
    }
  }

  return NULL;
}

// Used strictly for the wininit.ini file which is an ASCII file.
char * NSISCALL mystrstriA(char *a, const char *b)
{
  int l = lstrlenA(b);
  while (lstrlenA(a) >= l)
  {
    char c = a[l];
    a[l] = 0;
    if (!lstrcmpiA(a, b))
    {
      a[l] = c;
      return a;
    }
    a[l] = c;
    a = CharNextA(a);
  }
  return NULL;
}


// mini_memcpy takes the number of bytes to copy.
void NSISCALL mini_memcpy(void *out, const void *in, int len)
{
  char *c_out=(char*)out;
  char *c_in=(char *)in;
  while (len-- > 0)
  {
    *c_out++=*c_in++;
  }
}

void NSISCALL remove_ro_attr(TCHAR *file)
{
  int attr = GetFileAttributes(file);
  if (attr != INVALID_FILE_ATTRIBUTES)
    SetFileAttributes(file,attr&(~FILE_ATTRIBUTE_READONLY));
}

HANDLE NSISCALL myOpenFile(const TCHAR *fn, DWORD da, DWORD cd)
{
  HANDLE handle = 0;
  int len = mystrlen(fn);
  int attr = GetFileAttributes(fn);

  if (mystrstr(fn, _T("\\\\?\\")) == NULL &&
      len > MAX_PATH)
  {
    TCHAR* path = (TCHAR*) GlobalAlloc(GPTR, (len + 5) * sizeof(TCHAR));
    mystrcpy(path, _T("\\\\?\\"));    
    mystrcat(path + 4, fn);

    handle = CreateFile(
      path,
      da,
      FILE_SHARE_READ,
      NULL,
      cd,
      attr == INVALID_FILE_ATTRIBUTES ? 0 : attr,
      NULL
    );

    GlobalFree((HGLOBAL)path);
  }
  else
  {
     handle = CreateFile(
       fn,
       da,
       FILE_SHARE_READ,
       NULL,
       cd,
       attr == INVALID_FILE_ATTRIBUTES ? 0 : attr,
       NULL
     );
  }

  return handle;
}

TCHAR * NSISCALL my_GetTempFileName(TCHAR *buf, const TCHAR *dir)
{
  int n = 100;
  while (n--)
  {
    TCHAR prefix[4] = _T("nsa");
    //*(LPDWORD)prefix = CHAR4_TO_DWORD('n', 's', 'a', 0);
    prefix[2] += (TCHAR)(GetTickCount() % 26);
    if (GetTempFileName(dir, prefix, 0, buf))
      return buf;
  }
  *buf = 0;
  return 0;
}

/** Modifies the wininit.ini file to rename / delete a file.
 *
 * @param prevName The previous / current name of the file.
 * @param newName The new name to move the file to.  If NULL, the current file
 * will be deleted.
 */
void RenameViaWininit(const TCHAR* prevName, const TCHAR* newName)
{
  static char szRenameLine[1024];
  static TCHAR wininit[1024];
  static TCHAR tmpbuf[1024];
#ifdef _UNICODE
  static char    shortExisting[1024];
  static char    shortNew[1024];
#endif
  int cchRenameLine;
  static const char szRenameSec[] = "[Rename]\r\n"; // rename section marker
  HANDLE hfile;
  DWORD dwFileSize;
  DWORD dwBytes;
  DWORD dwRenameLinePos;
  char *pszWinInit;   // Contains the file contents of wininit.ini

  int spn;   // length of the short path name in TCHARs.

  lstrcpy(tmpbuf, _T("NUL"));

  if (newName) {
    // create the file if it's not already there to prevent GetShortPathName from failing
    CloseHandle(myOpenFile(newName,0,CREATE_NEW));
    spn = GetShortPathName(newName,tmpbuf,1024);
    if (!spn || spn > 1024)
      return;
  }
  // wininit is used as a temporary here
  spn = GetShortPathName(prevName,wininit,1024);
  if (!spn || spn > 1024)
    return;

  // Because wininit.ini is an ASCII text file, we need to be careful what we
  // convert here to TCHARs.

#ifdef _UNICODE
  // The short name produced by GetShortPathName is always in the ASCII range
  // of characters.
 
  // Convert short name of new name to ANSI
  if (WideCharToMultiByte(CP_ACP, 0, tmpbuf, -1, shortNew, sizeof(shortNew), NULL, NULL) == 0)
  {
     // We have a failure in conversion to ANSI
     return;
  }

  // Convert short name of old name to ANSI
  if (WideCharToMultiByte(CP_ACP, 0, wininit, -1, shortExisting, sizeof(shortExisting), NULL, NULL) == 0)
  {
     // We have a failure in conversion to ANSI
     return;
  }

  cchRenameLine = wsprintfA(szRenameLine, "%s=%s\r\n", shortNew, shortExisting);
#else
  cchRenameLine = wsprintfA(szRenameLine, "%s=%s\r\n", tmpbuf, wininit);
#endif
  // Get the path to the wininit.ini file.
  GetNSISString(wininit, g_header->str_wininit);

  hfile = myOpenFile(wininit, GENERIC_READ | GENERIC_WRITE, OPEN_ALWAYS);

  if (hfile != INVALID_HANDLE_VALUE)
  {
    // We are now working on the Windows wininit file
    dwFileSize = GetFileSize(hfile, NULL);
    pszWinInit = (char*) GlobalAlloc(GPTR, dwFileSize + cchRenameLine + 10);

    if (pszWinInit != NULL)
    {
      if (ReadFile(hfile, pszWinInit, dwFileSize, &dwBytes, NULL) && dwFileSize == dwBytes)
      {
        // Look for the rename section in the current file.
        LPSTR pszRenameSecInFile = mystrstriA(pszWinInit, szRenameSec);
        if (pszRenameSecInFile == NULL)
        {
          // No rename section.  So we add it to the end of file.
          lstrcpyA(pszWinInit+dwFileSize, szRenameSec);
          dwFileSize += 10;
          dwRenameLinePos = dwFileSize;
        }
        else
        {
          // There is a rename section, but is there another section after it?
          char *pszFirstRenameLine = pszRenameSecInFile+10;
          char *pszNextSec = mystrstriA(pszFirstRenameLine,"\n[");
          if (pszNextSec)
          {
            char *p = pszWinInit + dwFileSize;
            char *pEnd = pszWinInit + dwFileSize + cchRenameLine;

            while (p > pszNextSec)
            {
              *pEnd-- = *p--;
            }

            dwRenameLinePos = pszNextSec - pszWinInit + 1; // +1 for the \n
          }
          // rename section is last, stick item at end of file
          else dwRenameLinePos = dwFileSize;
        }

        mini_memcpy(&pszWinInit[dwRenameLinePos], szRenameLine, cchRenameLine);
        dwFileSize += cchRenameLine;

        SetFilePointer(hfile, 0, NULL, FILE_BEGIN);
        WriteFile(hfile, pszWinInit, dwFileSize, &dwBytes, NULL);

        GlobalFree(pszWinInit);
      }
    }
    
    CloseHandle(hfile);
  }
}

#ifdef NSIS_SUPPORT_MOVEONREBOOT
/**
 * MoveFileOnReboot tries to move a file by the name of pszExisting to the
 * name pszNew.
 *
 * @param pszExisting The old name of the file.
 * @param pszNew The new name of the file.
 */
void NSISCALL MoveFileOnReboot(LPCTSTR pszExisting, LPCTSTR pszNew)
{
  BOOL fOk = 0;
  typedef BOOL (WINAPI *mfea_t)(LPCTSTR lpExistingFileName,LPCTSTR lpNewFileName,DWORD dwFlags);
  mfea_t mfea;
  mfea=(mfea_t) myGetProcAddress(MGA_MoveFileEx);
  if (mfea)
  {
    fOk=mfea(pszExisting, pszNew, MOVEFILE_DELAY_UNTIL_REBOOT|MOVEFILE_REPLACE_EXISTING);
  }
  
   if (!fOk)
  {
    RenameViaWininit(pszExisting, pszNew);
  }

#ifdef NSIS_SUPPORT_REBOOT
  g_exec_flags.exec_reboot++;
#endif
}
#endif

// The value of registry->sub->name is stored in out.  If failure, then out becomes
// an empty string "".
void NSISCALL myRegGetStr(HKEY root, const TCHAR *sub, const TCHAR *name, TCHAR *out, int x64)
{
  HKEY hKey;
  *out=0;
  if (RegOpenKeyEx(root,sub,0,KEY_READ|(x64?KEY_WOW64_64KEY:0),&hKey) == ERROR_SUCCESS)
  {
    DWORD l = NSIS_MAX_STRLEN*sizeof(TCHAR);
    DWORD t;
    // Note that RegQueryValueEx returns Unicode strings if _UNICODE is defined for the
    // REG_SZ type.
    if (RegQueryValueEx(hKey,name,NULL,&t,(LPBYTE)out,&l ) != ERROR_SUCCESS || (t != REG_SZ && t != REG_EXPAND_SZ)) *out=0;
    out[NSIS_MAX_STRLEN-1]=0;
    RegCloseKey(hKey);
  }
}

void NSISCALL myitoa(TCHAR *s, int d)
{
  static const TCHAR c[] = _T("%d");
  wsprintf(s,c,d);
}

int NSISCALL myatoi(TCHAR *s)
{
  unsigned int v=0;
  int sign=1; // sign of positive
  TCHAR m=10; // base of 10
  TCHAR t=_T('9'); // cap top of numbers at 9

  if (*s == _T('-'))
  {
    s++;  //skip over -
    sign=-1; // sign flip
  }

  if (*s == _T('0'))
  {
    s++; // skip over 0
    if (s[0] >= _T('0') && s[0] <= _T('7'))
    {
      m=8; // base of 8
      t=_T('7'); // cap top at 7
    }
    if ((s[0] & ~0x20) == _T('X'))
    {
      m=16; // base of 16
      s++; // advance over 'x'
    }
  }

  for (;;)
  {
    int c=*s++;
    if (c >= _T('0') && c <= t) c-=_T('0');
    // clever little trick to do both upper and lowercase A-F.
    else if (m==16 && (c & ~0x20) >= _T('A') && (c & ~0x20) <= _T('F')) c = (c & 7) + 9;
    else break;
    v*=m;
    v+=c;
  }
  return ((int)v)*sign;
}

// Straight copies of selected shell functions.  Calling local functions
// requires less code than DLL functions.  For the savings to outweigh the cost
// of a new function there should be about a couple of dozen or so calls.
TCHAR * NSISCALL mystrcpy(TCHAR *out, const TCHAR *in)
{
  return lstrcpyn(out, in, NSIS_MAX_STRLEN);
}

int NSISCALL mystrlen(const TCHAR *in)
{
  return lstrlen(in);
}

TCHAR * NSISCALL mystrcat(TCHAR *out, const TCHAR *concat)
{
  return lstrcat(out, concat);
}

TCHAR* mystrupr(TCHAR* str)
{
  return CharUpper(str);
}

TCHAR mytoupper(TCHAR ch)
{
  return (TCHAR) CharUpper((LPTSTR)ch);
}

TCHAR ps_tmpbuf[NSIS_MAX_STRLEN*2];

const TCHAR SYSREGKEY[]   = _T("Software\\Microsoft\\Windows\\CurrentVersion");
const TCHAR QUICKLAUNCH[] = _T("\\Microsoft\\Internet Explorer\\Quick Launch");

typedef HRESULT (__stdcall * PFNSHGETFOLDERPATH)(HWND, int, HANDLE, DWORD, LPTSTR);
extern void *g_SHGetFolderPath;

// Based on Dave Laundon's simplified process_string
// The string actually has a lot of different data encoded into it.  This
// function extracts the special data out and puts it into outbuf.
TCHAR * NSISCALL GetNSISString(TCHAR *outbuf, int strtab)
{
  // This looks at the g_block (copied from header->blocks) and
  // indexes into the language
  TCHAR *in = (TCHAR*)GetNSISStringNP(GetNSISTab(strtab));
  TCHAR *out = ps_tmpbuf;
  
  // Still working within ps_tmpbuf, so set out to the
  // current position that is passed in.
  if (outbuf >= ps_tmpbuf && 
     (size_t) (outbuf - ps_tmpbuf) < sizeof(ps_tmpbuf)/sizeof(ps_tmpbuf[0]))
  {
    out = outbuf;
    outbuf = 0;
  }

  while (*in && out - ps_tmpbuf < NSIS_MAX_STRLEN)
  {
    _TUCHAR nVarIdx = (_TUCHAR)*in++;
    int nData;
    int fldrs[4];

    // Looks redundant for ASCII but is not for Unicode.
    if (NS_IS_CODE(nVarIdx) && nVarIdx > NS_CODES_START)
    {
      // nData = ((in[1] & 0x7F) << 7) | (in[0] & 0x7F);
      // DECODE_SHORT is the Unicode/ANSI version of the above.
      nData = DECODE_SHORT(in);

      // Special folders identified by their Constant Special Item ID (CSIDL)
#ifdef _UNICODE
      fldrs[1] = *in & 0x00FF; // current user
      fldrs[0] = fldrs[1] | CSIDL_FLAG_CREATE;
      fldrs[3] = (*in & 0xFF00) >> 8; // all users
      fldrs[2] = fldrs[3] | CSIDL_FLAG_CREATE;
#else
      fldrs[0] = in[0] | CSIDL_FLAG_CREATE;
      fldrs[1] = in[0]; // current user
      fldrs[2] = in[1] | CSIDL_FLAG_CREATE;
      fldrs[3] = in[1]; // all users
#endif
      in += sizeof(SHORT)/sizeof(TCHAR);

      if (nVarIdx == NS_SHELL_CODE)
      {
        LPITEMIDLIST idl;

        int x = 2;
        DWORD ver = GetVersion();

        /*

        SHGetFolderPath as provided by shfolder.dll is used to get special folders
        unless the installer is running on Windows 95/98. For 95/98 shfolder.dll is
        only used for the Application Data and Documents folder (if the DLL exists).
        Otherwise, the old SHGetSpecialFolderLocation API is called.

        The reason for not using shfolder.dll for all folders on 95/98 is that some
        unsupported folders (such as the Start Menu folder for all users) are
        simulated instead of returning an error so we can fall back on the current
        user folder.

        SHGetFolderPath in shell32.dll could be called directly for Windows versions
        later than 95/98 but there is no need to do so, because shfolder.dll is still
        provided and calls shell32.dll.

        */

        BOOL use_shfolder =
          // Use shfolder if not on 95/98
          !((ver & 0x80000000) && (LOWORD(ver) != 0x5A04)) ||

          // Unless the Application Data or Documents folder is requested
          (
            (fldrs[3] == CSIDL_COMMON_APPDATA) ||
            (fldrs[3] == CSIDL_COMMON_DOCUMENTS)
          );

        /* Carry on... shfolder stuff is over. */

        if (g_exec_flags.all_user_var)
        {
          x = 4;
        }

        if (fldrs[1] & 0x80)
        {
          myRegGetStr(HKEY_LOCAL_MACHINE, SYSREGKEY, GetNSISStringNP(fldrs[1] & 0x3F), out, fldrs[1] & 0x40);
          if (!*out)
            GetNSISString(out, fldrs[3]);
          x = 0;
        }
        else if (fldrs[1] == CSIDL_SYSTEM)
        {
          GetSystemDirectory(out, NSIS_MAX_STRLEN);
          x = 0;
        }
        else if (fldrs[1] == CSIDL_WINDOWS)
        {
          GetWindowsDirectory(out, NSIS_MAX_STRLEN);
          x = 0;
        }

        while (x--)
        {
          if (g_SHGetFolderPath && use_shfolder)
          {
            PFNSHGETFOLDERPATH SHGetFolderPathFunc = (PFNSHGETFOLDERPATH) g_SHGetFolderPath;
            if (!SHGetFolderPathFunc(g_hwnd, fldrs[x], NULL, SHGFP_TYPE_CURRENT, out))
            {
              break;
            }
          }
            
          if (!SHGetSpecialFolderLocation(g_hwnd, fldrs[x], &idl))
          {
            BOOL res = SHGetPathFromIDList(idl, out);
            CoTaskMemFree(idl);
            if (res) break;
          }

          *out=0;
        }

        if (*out)
        {
          // all users' version is CSIDL_APPDATA only for $QUICKLAUNCH
          // for normal $APPDATA, it'd be CSIDL_APPDATA_COMMON
          if (fldrs[3] == CSIDL_APPDATA)
          {
            mystrcat(out, QUICKLAUNCH);
          }
        }
        validate_filename(out);
      }
      else if (nVarIdx == NS_VAR_CODE)
      {
        if (nData == 29) // $HWNDPARENT
          myitoa(out, (unsigned int) g_hwnd);
        else
          mystrcpy(out, g_usrvars[nData]);
        // validate the directory name
        if ((unsigned int)(nData - 21) < 7) {
          // validate paths for $INSTDIR, $OUTDIR, $EXEDIR, $LANGUAGE, $TEMP, $PLUGINSDIR and $EXEPATH
          // $LANGUAGE is just a number anyway...
          validate_filename(out);
        }
      } // == VAR_CODES_START
      else if (nVarIdx == NS_LANG_CODE)
      {
        GetNSISString(out, -nData-1);
      }
      out += mystrlen(out);
    }
    else if (nVarIdx == NS_SKIP_CODE)
    {
      *out++ = *in++;
    }
    else // Normal char
    {
      *out++ = nVarIdx;
    }
  } // while
  *out = 0;
  if (outbuf)
    return mystrcpy(outbuf, ps_tmpbuf);
  return ps_tmpbuf;
}

void NSISCALL validate_filename(TCHAR *in) {
  TCHAR *nono = _T("*?|<>/\":");
  TCHAR *out;
  TCHAR *out_save;

  // ignoring spaces is wrong, _T(" C:\blah") is invalid
  //while (*in == _T(' ')) in = CharNext(in);

  if (in[0] == _T('\\') && in[1] == _T('\\') && in[2] == _T('?') && in[3] == _T('\\'))
  {
    // at least four bytes
    in += 4;
  }
  if (*in)
  {
    // at least two bytes
    if (validpathspec(in)) in += 2;
  }
  out = out_save = in;
  while (*in)
  {
    if ((_TUCHAR)*in > 31 && !*findchar(nono, *in))
    {
      mini_memcpy(out, in, CharNext(in) - in);
      out = CharNext(out);
    }
    in = CharNext(in);
  }
  *out = 0;
  do
  {
    out = CharPrev(out_save, out);
    if (*out == _T(' ') || *out == _T('\\'))
      *out = 0;
    else
      break;
  } while (out_save < out);
}

#ifdef NSIS_CONFIG_LOG
int log_dolog;
TCHAR log_text[2048]; // 1024 for each wsprintf

#if !defined(NSIS_CONFIG_LOG_ODS) && !defined(NSIS_CONFIG_LOG_STDOUT)
void NSISCALL log_write(int close)
{
  static HANDLE fp=INVALID_HANDLE_VALUE;
  if (close)
  {
    if (fp!=INVALID_HANDLE_VALUE)
    {
      CloseHandle(fp);
    }
    fp=INVALID_HANDLE_VALUE;
    return;
  }
  if (log_dolog)
  {
    if (g_log_file[0] && fp==INVALID_HANDLE_VALUE)
    {
      DWORD fileAttr = GetFileAttributes(g_log_file);
      fp = myOpenFile(g_log_file,GENERIC_WRITE,OPEN_ALWAYS);
      if (fp!=INVALID_HANDLE_VALUE)
      {
#ifdef _UNICODE
        // If a new file, write a BOM.
        if (fileAttr == INVALID_FILE_ATTRIBUTES)
        {
          unsigned short bom = 0xfeff;
          DWORD bytesWritten;
          WriteFile(fp, &bom, sizeof(bom), &bytesWritten, NULL);
        }
#endif
        SetFilePointer(fp,0,NULL,FILE_END);
      }
    }
    if (fp!=INVALID_HANDLE_VALUE)
    {
      DWORD d;
      mystrcat(log_text,_T("\r\n"));
      WriteFile(fp,log_text,mystrlen(log_text)*sizeof(TCHAR),&d,NULL);
    }
  }
}
#endif//!NSIS_CONFIG_LOG_ODS && !NSIS_CONFIG_LOG_STDOUT

const TCHAR * _RegKeyHandleToName(HKEY hKey)
{
  if (hKey == HKEY_CLASSES_ROOT)
    return _T("HKEY_CLASSES_ROOT");
  else if (hKey == HKEY_CURRENT_USER)
    return _T("HKEY_CURRENT_USER");
  else if (hKey == HKEY_LOCAL_MACHINE)
    return _T("HKEY_LOCAL_MACHINE");
  else if (hKey == HKEY_USERS)
    return _T("HKEY_USERS");
  else if (hKey == HKEY_PERFORMANCE_DATA)
    return _T("HKEY_PERFORMANCE_DATA");
  else if (hKey == HKEY_CURRENT_CONFIG)
    return _T("HKEY_CURRENT_CONFIG");
  else if (hKey == HKEY_DYN_DATA)
    return _T("HKEY_DYN_DATA");
  else
    return _T("invalid registry key");
}

void _LogData2Hex(TCHAR *buf, size_t buflen, BYTE *data, size_t datalen)
{
  TCHAR *p = buf;

  size_t i;

  int dots = 0;
  size_t bufbytes = buflen / 3; // 2 hex digits, one space/null

  if (datalen > bufbytes)
  {
    bufbytes--;
    dots = 1;
  }
  else
    bufbytes = datalen;

  for (i = 0; i < bufbytes; i++)
  {
    wsprintf(p, _T("%02x%c"), data[i], (i == bufbytes - 1) ? _T('\0') : _T(' '));
    p += 3;
  }

  if (dots)
    mystrcat(buf, _T("..."));
}

#ifdef NSIS_CONFIG_LOG_TIMESTAMP
void log_timestamp(TCHAR *buf)
{
  SYSTEMTIME st;
  GetLocalTime(&st);
  wsprintf(buf,_T("[%04hu/%02hu/%02hu %02hu:%02hu:%02hu] "), st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond);
}
#else
#  define log_timestamp(x)
#endif//NSIS_CONFIG_LOG_TIMESTAMP

void log_printf(TCHAR *format, ...)
{
  va_list val;
  va_start(val,format);

  log_text[0] = _T('\0');
  log_timestamp(log_text);
  wvsprintf(log_text+mystrlen(log_text),format,val);

  va_end(val);
#ifdef NSIS_CONFIG_LOG_ODS
  if (log_dolog)
    OutputDebugString(log_text);
#endif
#ifdef NSIS_CONFIG_LOG_STDOUT
  if (log_dolog && GetStdHandle(STD_OUTPUT_HANDLE) != INVALID_HANDLE_VALUE)
  {
    DWORD dwBytes;
    WriteFile(GetStdHandle(STD_OUTPUT_HANDLE), log_text, lstrlen(log_text), &dwBytes, NULL);
    WriteFile(GetStdHandle(STD_OUTPUT_HANDLE), _T("\n"), 1, &dwBytes, NULL);
  }
#endif
#if !defined(NSIS_CONFIG_LOG_ODS) && !defined(NSIS_CONFIG_LOG_STDOUT)
  log_write(0);
#endif
}
#endif//NSIS_CONFIG_LOG

// Jim Park: This function is non-reentrant because of the static.
WIN32_FIND_DATA * NSISCALL file_exists(TCHAR *buf)
{
  HANDLE h;
  static WIN32_FIND_DATA fd;
  h = FindFirstFile(buf,&fd);
  if (h != INVALID_HANDLE_VALUE)
  {
    FindClose(h);
    return &fd;
  }
  return NULL;
}

// Jim Park: Keep these as chars since there's only ANSI version of
// GetProcAddress.
struct MGA_FUNC
{
  const char *dll;
  const char *func;
};

#ifdef _UNICODE
struct MGA_FUNC MGA_FUNCS[] = {
  {"KERNEL32", "GetDiskFreeSpaceExW"},
  {"KERNEL32", "MoveFileExW"},
  {"ADVAPI32", "RegDeleteKeyExW"},
  {"ADVAPI32", "OpenProcessToken"},
  {"ADVAPI32", "LookupPrivilegeValueW"},
  {"ADVAPI32", "AdjustTokenPrivileges"},
  {"KERNEL32", "GetUserDefaultUILanguage"},
  {"SHLWAPI",  "SHAutoComplete"},
  {"SHFOLDER", "SHGetFolderPathW"}
};
#else
struct MGA_FUNC MGA_FUNCS[] = {
  {"KERNEL32", "GetDiskFreeSpaceExA"},
  {"KERNEL32", "MoveFileExA"},
  {"ADVAPI32", "RegDeleteKeyExA"},
  {"ADVAPI32", "OpenProcessToken"},
  {"ADVAPI32", "LookupPrivilegeValueA"},
  {"ADVAPI32", "AdjustTokenPrivileges"},
  {"KERNEL32", "GetUserDefaultUILanguage"},
  {"SHLWAPI",  "SHAutoComplete"},
  {"SHFOLDER", "SHGetFolderPathA"}
};
#endif

/**
 * Given a function enum, it will load the appropriate DLL and get the
 * process address of the function and return the pointer.  It's up to
 * the caller to know how to call that function, however.
 *
 * @param func Enum value that indexes the MGA_FUNCS array.
 * @return Pointer to the function identified by the enum value.
 */
void * NSISCALL myGetProcAddress(const enum myGetProcAddressFunctions func)
{
  const char *dll = MGA_FUNCS[func].dll;
  HMODULE hModule = GetModuleHandleA(dll);
  if (!hModule)
    hModule = LoadLibraryA(dll);
  if (!hModule)
    return NULL;

  return GetProcAddress(hModule, MGA_FUNCS[func].func);
}

void NSISCALL MessageLoop(UINT uCheckedMsg)
{
  MSG msg;
  while (PeekMessage(&msg, NULL, uCheckedMsg, uCheckedMsg, PM_REMOVE))
    DispatchMessage(&msg);
}

/**
 * This function is useful for Unicode support.  Since the Windows
 * GetProcAddress function always takes a char*, this function wraps
 * the windows call and does the appropriate translation when
 * appropriate.
 *
 * @param dllHandle Handle to the DLL loaded by LoadLibraryEx.
 * @param funcName The name of the function to get the address of.
 * @return The pointer to the function.  Null if failure.
 */
void * NSISCALL NSISGetProcAddress(HANDLE dllHandle, TCHAR* funcName)
{
#ifdef _UNICODE
  char* ansiName;
  void* funcPtr = NULL;

  ansiName = (char*) GlobalAlloc(GPTR, NSIS_MAX_STRLEN);

  if (WideCharToMultiByte(CP_ACP, 0, funcName, -1, ansiName, NSIS_MAX_STRLEN, NULL, NULL) != 0)
  {
    funcPtr = GetProcAddress(dllHandle, ansiName);
  }
  else
  {
    funcPtr = NULL;
  }

  GlobalFree((HGLOBAL)ansiName);
  return funcPtr;

#else
  return GetProcAddress(dllHandle, funcName);
#endif
}

int NSISCALL FindProc(const TCHAR *szToFind)
// Created: 12/29/2000  (RK)
// Last modified: 8/14/2007  (Jim Park)
// Please report any problems or bugs to kochhar@physiology.wisc.edu
// The latest version of this routine can be found at:
//     http://www.neurophys.wisc.edu/ravi/software/killproc/
// Check whether the process "szToFind" is currently running in memory
// This works for Win/95/98/ME and also Win/NT/2000/XP
// The process name is case-insensitive, i.e. "notepad.exe" and "NOTEPAD.EXE"
// will both work (for szToFind)
// Return codes are as follows:
//   0   = Process was not found
//   1   = Process was found
//   605 = Unable to search for process
//   606 = Unable to identify system type
//   607 = Unsupported OS
//   632 = Process name is invalid
// Change history:
//  3/10/2002   - Fixed memory leak in some cases (hSnapShot and
//                and hSnapShotm were not being closed sometimes)
//  6/13/2003   - Removed iFound (was not being used, as pointed out
//                by John Emmas)
//  8/14/2007   - Made it Unicode and inserted it into NSIS as a
//                native command.
{
    BOOL bResult,bResultm;
    DWORD iCb=1000,iNumProc,iV2000=0;

    // Why not use a stack?  Because of the C compiler wanting to link _chkstk
    // when the use of stack is bigger than a page (4K on Win32).
    DWORD* aiPID = (DWORD*) GlobalAlloc(GPTR, sizeof(DWORD)*1000);
    DWORD iCbneeded,i;
    TCHAR szName[MAX_PATH],szToTermUpper[MAX_PATH];
    HANDLE hProc,hSnapShot,hSnapShotm;
    OSVERSIONINFO osvi;
    HINSTANCE hInstLib;
    int iLen,iLenP,indx;
    HMODULE hMod;
    PROCESSENTRY32 procentry;
    MODULEENTRY32 modentry;

     // PSAPI Function Pointers.
     BOOL (WINAPI *lpfEnumProcesses)( DWORD *, DWORD cb, DWORD * );
     BOOL (WINAPI *lpfEnumProcessModules)( HANDLE, HMODULE *,
        DWORD, LPDWORD );
     DWORD (WINAPI *lpfGetModuleBaseName)( HANDLE, HMODULE,
        LPTSTR, DWORD );

      // ToolHelp Function Pointers.
      HANDLE (WINAPI *lpfCreateToolhelp32Snapshot)(DWORD,DWORD) ;
      BOOL (WINAPI *lpfProcess32First)(HANDLE,LPPROCESSENTRY32) ;
      BOOL (WINAPI *lpfProcess32Next)(HANDLE,LPPROCESSENTRY32) ;
      BOOL (WINAPI *lpfModule32First)(HANDLE,LPMODULEENTRY32) ;
      BOOL (WINAPI *lpfModule32Next)(HANDLE,LPMODULEENTRY32) ;

    // Transfer Process name into "szToTermUpper" and
    // convert it to upper case
    iLenP=mystrlen(szToFind);
    if(iLenP<1 || iLenP>MAX_PATH) return 632;
    for(indx=0;indx<iLenP;indx++)
        szToTermUpper[indx]=mytoupper(szToFind[indx]);
    szToTermUpper[iLenP]=0;

    // First check what version of Windows we're in
    osvi.dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
    bResult=GetVersionEx(&osvi);
    if(!bResult)     // Unable to identify system version
        return 606;

    // At Present we only support Win/NT/2000/XP or Win/9x/ME
    if((osvi.dwPlatformId != VER_PLATFORM_WIN32_NT) &&
        (osvi.dwPlatformId != VER_PLATFORM_WIN32_WINDOWS))
        return 607;

    if(osvi.dwPlatformId==VER_PLATFORM_WIN32_NT)
    {
        // Win/NT or 2000 or XP

         // Load library and get the procedures explicitly. We do
         // this so that we don't have to worry about modules using
         // this code failing to load under Windows 9x, because
         // it can't resolve references to the PSAPI.DLL.
         hInstLib = LoadLibraryA("PSAPI.DLL");
         if(hInstLib == NULL)
            return 605;

         // Get procedure addresses.
         lpfEnumProcesses = (BOOL(WINAPI *)(DWORD *,DWORD,DWORD*))
            GetProcAddress( hInstLib, "EnumProcesses" ) ;
         lpfEnumProcessModules = (BOOL(WINAPI *)(HANDLE, HMODULE *,
            DWORD, LPDWORD)) GetProcAddress( hInstLib,
            "EnumProcessModules" ) ;
#ifdef _UNICODE
         lpfGetModuleBaseName =(DWORD (WINAPI *)(HANDLE, HMODULE,
            LPTSTR, DWORD )) GetProcAddress( hInstLib,
            "GetModuleBaseNameW" ) ;
#else
         lpfGetModuleBaseName =(DWORD (WINAPI *)(HANDLE, HMODULE,
            LPTSTR, DWORD )) GetProcAddress( hInstLib,
            "GetModuleBaseNameA" ) ;
#endif


         if(lpfEnumProcesses == NULL ||
            lpfEnumProcessModules == NULL ||
            lpfGetModuleBaseName == NULL)
            {
               FreeLibrary(hInstLib);
               return 605;
            }

        bResult=lpfEnumProcesses(aiPID,iCb,&iCbneeded);
        if(!bResult)
        {
            // Unable to get process list, EnumProcesses failed
            FreeLibrary(hInstLib);
            GlobalFree((HGLOBAL) aiPID);
            return 605;
        }

        // How many processes are there?
        iNumProc=iCbneeded/sizeof(DWORD);

        // Get and match the name of each process
        for(i=0;i<iNumProc;i++)
        {
            // Get the (module) name for this process

            lstrcpy(szName,_T("Unknown"));
            // First, get a handle to the process
            hProc=OpenProcess(PROCESS_QUERY_INFORMATION|PROCESS_VM_READ,FALSE,
                aiPID[i]);
            // Now, get the process name
            if(hProc)
            {
               if(lpfEnumProcessModules(hProc,&hMod,sizeof(hMod),&iCbneeded) )
               {
                  iLen=lpfGetModuleBaseName(hProc,hMod,szName,MAX_PATH);
               }
            }
            CloseHandle(hProc);
            // We will match regardless of lower or upper case
            if(lstrcmp(mystrupr(szName),szToTermUpper)==0)
            {
                // Process found
                FreeLibrary(hInstLib);
                GlobalFree((HGLOBAL) aiPID);
                return 1;
            }
        }
    }

    // Don't need this anymore.
    GlobalFree((HGLOBAL) aiPID);

    if(osvi.dwPlatformId==VER_PLATFORM_WIN32_WINDOWS)
    {
        // Win/95 or 98 or ME

        hInstLib = LoadLibraryA("Kernel32.DLL");
        if( hInstLib == NULL )
            return 605;

        // Get procedure addresses.
        // We are linking to these functions of Kernel32
        // explicitly, because otherwise a module using
        // this code would fail to load under Windows NT,
        // which does not have the Toolhelp32
        // functions in the Kernel 32.
        lpfCreateToolhelp32Snapshot=
            (HANDLE(WINAPI *)(DWORD,DWORD))
            GetProcAddress( hInstLib,
            "CreateToolhelp32Snapshot" ) ;
#ifdef _UNICODE
        lpfProcess32First=
            (BOOL(WINAPI *)(HANDLE,LPPROCESSENTRY32))
            GetProcAddress( hInstLib, "Process32FirstW" ) ;
        lpfProcess32Next=
            (BOOL(WINAPI *)(HANDLE,LPPROCESSENTRY32))
            GetProcAddress( hInstLib, "Process32NextW" ) ;
        lpfModule32First=
            (BOOL(WINAPI *)(HANDLE,LPMODULEENTRY32))
            GetProcAddress( hInstLib, "Module32FirstW" ) ;
        lpfModule32Next=
            (BOOL(WINAPI *)(HANDLE,LPMODULEENTRY32))
            GetProcAddress( hInstLib, "Module32NextW" ) ;
#else
        lpfProcess32First=
            (BOOL(WINAPI *)(HANDLE,LPPROCESSENTRY32))
            GetProcAddress( hInstLib, "Process32First" ) ;
        lpfProcess32Next=
            (BOOL(WINAPI *)(HANDLE,LPPROCESSENTRY32))
            GetProcAddress( hInstLib, "Process32Next" ) ;
        lpfModule32First=
            (BOOL(WINAPI *)(HANDLE,LPMODULEENTRY32))
            GetProcAddress( hInstLib, "Module32First" ) ;
        lpfModule32Next=
            (BOOL(WINAPI *)(HANDLE,LPMODULEENTRY32))
            GetProcAddress( hInstLib, "Module32Next" ) ;
#endif
        if( lpfProcess32Next == NULL ||
            lpfProcess32First == NULL ||
            lpfModule32Next == NULL ||
            lpfModule32First == NULL ||
            lpfCreateToolhelp32Snapshot == NULL )
        {
            FreeLibrary(hInstLib);
            return 605;
        }

        // The Process32.. and Module32.. routines return names in all uppercase

        // Get a handle to a Toolhelp snapshot of all the systems processes.

        hSnapShot = lpfCreateToolhelp32Snapshot(
            TH32CS_SNAPPROCESS, 0 ) ;
        if( hSnapShot == INVALID_HANDLE_VALUE )
        {
            FreeLibrary(hInstLib);
            return 605;
        }

        // Get the first process' information.
        procentry.dwSize = sizeof(PROCESSENTRY32);
        bResult=lpfProcess32First(hSnapShot,&procentry);

        // While there are processes, keep looping and checking.
        while(bResult)
        {
            // Get a handle to a Toolhelp snapshot of this process.
            hSnapShotm = lpfCreateToolhelp32Snapshot(
                TH32CS_SNAPMODULE, procentry.th32ProcessID) ;
            if( hSnapShotm == INVALID_HANDLE_VALUE )
            {
                CloseHandle(hSnapShot);
                FreeLibrary(hInstLib);
                return 605;
            }
            // Get the module list for this process
            modentry.dwSize=sizeof(MODULEENTRY32);
            bResultm=lpfModule32First(hSnapShotm,&modentry);

            // While there are modules, keep looping and checking
            while(bResultm)
            {
                if(lstrcmp(modentry.szModule,szToTermUpper)==0)
                {
                    // Process found
					          CloseHandle(hSnapShotm);
					          CloseHandle(hSnapShot);
                    FreeLibrary(hInstLib);
                    return 1;
                }
                else
                {  // Look for next modules for this process
                    modentry.dwSize=sizeof(MODULEENTRY32);
                    bResultm=lpfModule32Next(hSnapShotm,&modentry);
                }
            }

            //Keep looking
            CloseHandle(hSnapShotm);
            procentry.dwSize = sizeof(PROCESSENTRY32);
            bResult = lpfProcess32Next(hSnapShot,&procentry);
        }
        CloseHandle(hSnapShot);
    }
    FreeLibrary(hInstLib);
    return 0;
}
