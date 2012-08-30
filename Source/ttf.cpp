#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <vector>
#include "tchar.h"

// Code based on http://www.codeproject.com/KB/GDI/fontnamefromfile.aspx.
// For proper handling of names using the platform, encoding id, and language
// id, please refer to the typography spec:
// http://www.microsoft.com/typography/otspec/name.htm

#define LOBYTE(w)           ((BYTE)(((DWORD_PTR)(w)) & 0xff))
#define HIBYTE(w)           ((BYTE)((((DWORD_PTR)(w)) >> 8) & 0xff))
#define LOWORD(l)           ((WORD)(((DWORD_PTR)(l)) & 0xffff))
#define HIWORD(l)           ((WORD)((((DWORD_PTR)(l)) >> 16) & 0xffff))
#define MAKEWORD(a, b)      ((WORD)(((BYTE)(((DWORD_PTR)(a)) & 0xff)) | ((WORD)((BYTE)(((DWORD_PTR)(b)) & 0xff))) << 8))
#define MAKELONG(a, b)      ((LONG)(((WORD)(((DWORD_PTR)(a)) & 0xffff)) | ((DWORD)((WORD)(((DWORD_PTR)(b)) & 0xffff))) << 16))

#define SWAPWORD(x) MAKEWORD(HIBYTE(x), LOBYTE(x))
#define SWAPLONG(x) MAKELONG(SWAPWORD(HIWORD(x)), SWAPWORD(LOWORD(x)))

struct TT_OFFSET_TABLE {
    USHORT uMajorVersion;
    USHORT uMinorVersion;
    USHORT uNumOfTables;
    USHORT uSearchRange;
    USHORT uEntrySelector;
    USHORT uRangeShift;
};

struct TT_TABLE_DIRECTORY{
    char szTag[4]; //table name
    ULONG uCheckSum; //Check sum
    ULONG uOffset; //Offset from beginning of file
    ULONG uLength; //length of the table in bytes
};

//Header of names table

struct TT_NAME_TABLE_HEADER {
    USHORT uFSelector; //format selector. Always 0
    USHORT uNRCount; //Name Records count
    USHORT uStorageOffset; //Offset for strings storage, 
                           //from start of the table
};

//Record in names table

struct TT_NAME_RECORD {
    USHORT uPlatformID;
    USHORT uEncodingID;
    USHORT uLanguageID;
    USHORT uNameID;
    USHORT uStringLength;
    USHORT uStringOffset; //from start of storage area
};

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

bool GetTTFNameString(TCHAR* ttfFileName, int field, TCHAR* buf, int bufChars)
{
   bool rval = false;
   TT_OFFSET_TABLE ttfTable;

   FILE* hFile = _tfopen(ttfFileName, _T("rb"));

   if (hFile == NULL)
   {
      // ERROR_MSG(_T("%sFile: failed opening file \"%s\"\n"),generatecode?_T(""):_T("Reserve"),newfn);
      //
      _tprintf(_T("%s: failed opening file \"%s\"\n"), _T("GetTTFVersion"), ttfFileName);
   }
   else
   {
      DWORD bytesRead = 0;
      fread(&ttfTable, sizeof(TT_OFFSET_TABLE), 1, hFile);

      ttfTable.uNumOfTables = SWAPWORD(ttfTable.uNumOfTables);
      ttfTable.uMajorVersion = SWAPWORD(ttfTable.uMajorVersion);
      ttfTable.uMinorVersion = SWAPWORD(ttfTable.uMinorVersion);

      if (ttfTable.uMajorVersion != 1 || ttfTable.uMinorVersion != 0)
      {
         // Cannot parse further!
         // ERROR_MSG(_T("%File: the file \"%s\" is in unsupported TTF format.\n"));
         return rval;
      }

      TT_TABLE_DIRECTORY tblDir;
      bool bFound = false;
      char tblName[5];

      for (int i=0; i< ttfTable.uNumOfTables; i++)
      {
         fread(&tblDir, sizeof(TT_TABLE_DIRECTORY), 1, hFile);
         
         //table's tag cannot exceed 4 characters

         strncpy(tblName, tblDir.szTag, sizeof(tblName));
         tblName[4] = 0;

         if (strcmp("name", tblName) == 0)
         {
            //we found our table. Rearrange order and quit the loop
            bFound = true;
            tblDir.uLength = SWAPLONG(tblDir.uLength);
            tblDir.uOffset = SWAPLONG(tblDir.uOffset);
            break;
         }
      }

      if(bFound)
      {
         //move to offset we got from Offsets Table
         fseek(hFile, tblDir.uOffset, 0);

         TT_NAME_TABLE_HEADER ttNTHeader;
         fread(&ttNTHeader, sizeof(TT_NAME_TABLE_HEADER), 1, hFile);

         //again, don't forget to swap bytes!

         ttNTHeader.uNRCount = SWAPWORD(ttNTHeader.uNRCount);
         ttNTHeader.uStorageOffset = SWAPWORD(ttNTHeader.uStorageOffset);
         TT_NAME_RECORD ttRecord;
         bFound = false;

         for(int i=0; i<ttNTHeader.uNRCount; i++)
         {
            fread( &ttRecord, sizeof(TT_NAME_RECORD), 1, hFile);
            ttRecord.uNameID = SWAPWORD(ttRecord.uNameID);
            ttRecord.uPlatformID = SWAPWORD(ttRecord.uPlatformID);
            ttRecord.uLanguageID = SWAPWORD(ttRecord.uLanguageID);
            ttRecord.uStringLength = SWAPWORD(ttRecord.uStringLength); // bytes
            ttRecord.uStringOffset = SWAPWORD(ttRecord.uStringOffset); // bytes
            //1 says that this is font name. 0 for example determines copyright info

            if(ttRecord.uNameID == field && ttRecord.uPlatformID == 3 && ttRecord.uLanguageID == 0x409)
            {
               unsigned int numChars = ttRecord.uStringLength / sizeof(wchar_t);

               fseek(hFile, tblDir.uOffset + ttRecord.uStringOffset + 
                        ttNTHeader.uStorageOffset, 0);

               std::vector<wchar_t> strBuf(numChars + 1, 0);
               fread(&strBuf[0], sizeof(wchar_t), numChars, hFile);
               for (unsigned int i = 0; i < strBuf.size(); ++i)
               {
                  // Swap the bytes to make it UTF-16LE.
                  strBuf[i] = SWAPWORD(strBuf[i]);
               }
               strBuf[numChars] = 0;
#ifdef _UNICODE
               wcsncpy(buf, &strBuf[0], bufChars);
#else
               wcstombs(buf, &strBuf[0], bufChars);
#endif
               rval = true;
               break;
            }
         }
      }

      fclose(hFile);
   }

   return rval;
}

bool GetTTFVersionString(TCHAR* ttfFileName, TCHAR* buf, int bufChars)
{
   TCHAR versionBuf[128];
   bool rval = false;
   rval = GetTTFNameString(ttfFileName, VersionString, versionBuf, 128);

   if(rval)
   {
      TCHAR* startPtr = versionBuf;
      TCHAR prefix[sizeof("Version ")]; // Ok since we only want strlen

      lstrcpyn(prefix, versionBuf, sizeof(prefix)/sizeof(TCHAR));
      prefix[sizeof(prefix)/sizeof(TCHAR) - 1] = 0;

      if (lstrcmp(prefix, _T("Version ")) == 0)
      {
         startPtr += sizeof("Version ") - 1; // Ok since we only want strlen
      }

      lstrcpyn(buf, startPtr, bufChars);
   }

   return rval;
}

bool GetTTFFontName(TCHAR* ttfFileName, TCHAR* buf, int bufChars)
{
   return GetTTFNameString(ttfFileName, FullFontName, buf, bufChars);
}
