// tstring.cpp
//
// This file is a part of Unicode NSIS.
//
// Copyright (C) 2007-2015 Jim Park
//
// Licensed under the zlib/libpng license (the "License");
// you may not use this file except in compliance with the License.
//
// This software is provided 'as-is', without any expressed or implied
// warranty.
//
// Provides TSTRING support.

#ifdef _UNICODE

#include "tstring.h"
#include "validateunicode.h"
#include "build.h"
#include <vector>

extern FILE *g_output;
namespace // anonymous
{
CEXEBuild* currentBuild = NULL;

// Simple RAII for C-styled FILE pointers.
class ScopedFile
{
	public:
		ScopedFile(FILE* file) : m_file(file) {}

		~ScopedFile()
		{
			if (this->m_file != NULL)
			{
				fflush(this->m_file);
				fclose(this->m_file);
			}
		}

		operator FILE*(){ return this->m_file; }

		operator bool() { return this->m_file != NULL; }

	private:
		FILE* m_file;
};

void INFO_MSG(const TCHAR* s, ...)
{
// If you want to see verbose outputs of Unicode file open functions
// uncomment the following.
#if 0
   if (currentBuild && currentBuild->display_info)
   {
       va_list val;
       va_start(val,s);
       _vftprintf(g_output,s,val);
       va_end(val);
       fflush(g_output);
   }
#endif
}

void ERROR_MSG(const TCHAR* s, ...)
{
   if (currentBuild && currentBuild->display_errors)
   {
      TCHAR buf[NSIS_MAX_STRLEN*10];
      va_list val;
      va_start(val,s);

#ifdef _WIN32
      _vstprintf(buf,s,val);
#else
      _vsntprintf(buf,NSIS_MAX_STRLEN*10,s,val);
#endif
      va_end(val);
      currentBuild->notify(MAKENSIS_NOTIFY_ERROR, buf);

      if (currentBuild->display_errors)
      {
         _ftprintf(g_output,_T("%s"), buf);
         fflush(g_output);
      }
   }
   else
   {
       va_list val;
       va_start(val,s);
       _vftprintf(g_output,s,val);
       va_end(val);
       fflush(g_output);
   }
}

void WARN_MSG(const TCHAR* s, ...)
{
   TCHAR buf[NSIS_MAX_STRLEN*10];
   va_list val;
   va_start(val,s);

#ifdef _WIN32
   _vstprintf(buf,s,val);
#else
   _vsntprintf(buf,NSIS_MAX_STRLEN*10,s,val);
#endif
   va_end(val);

   if (currentBuild != NULL)
   {
      currentBuild->warning_fl(buf);
   }
   else
   {
      _ftprintf(g_output,_T("%s"), buf);
      fflush(g_output);
   }
}

} // namespace

void SetCurrentCEXEBuild(CEXEBuild* build)
{
   currentBuild = build;
}

FILE* FileOpenUnicodeText(const TCHAR* file, const TCHAR* mode)
{
	CValidateUnicode::FILE_TYPE ftype = CValidateUnicode::UTF_16LE;

	// If we are reading an existing file, check to see what type of file it
	// is first.
	if (_tcsstr(mode, _T("w+")) ||
	    _tcsstr(mode, _T("r")))
	{
		ScopedFile fp(_tfopen(file, _T("rb")));

		if (fp)
		{
			fseek(fp, 0, SEEK_END);
			size_t fileSize = ftell(fp);
			if (fileSize == 0)
			{
			   // Empty files are treated as UTF-8.
			   ftype = CValidateUnicode::UTF_8;
			}
			else
			{
			   std::vector<unsigned char> buffer(fileSize);
			   fseek(fp, 0, SEEK_SET);
			   fread(&buffer[0], sizeof(unsigned char), fileSize, fp);

			   ftype = CValidateUnicode::CheckBOM(&buffer[0], buffer.size());

			   switch (ftype)
			   {
				   case CValidateUnicode::UTF_8:
				   case CValidateUnicode::UTF_16LE:
				   case CValidateUnicode::UTF_16BE:
					   INFO_MSG(_T("File '%s' has a BOM marked as %s.\n"),
						   file, CValidateUnicode::TypeToName(ftype));
					   break;
				   case CValidateUnicode::UTF_32LE:
				   case CValidateUnicode::UTF_32BE:
					   ERROR_MSG(_T("File '%s' has a BOM marked as %s which is not supported at this time.\n"),
							   file, CValidateUnicode::TypeToName(ftype));
					   return NULL;
					   break;
				   case CValidateUnicode::UNKNOWN:
					   // If unknown, let's see if it's not just UTF_8 without a BOM.
					   if (CValidateUnicode::ValidateUTF8(&buffer[0], buffer.size()))
					   {
						   ftype = CValidateUnicode::UTF_8;
						   INFO_MSG(_T("File '%s' has no BOM but validates as UTF-8.\n"), file);
					   }
					   else
					   {
						   WARN_MSG(_T("File '%s' has no BOM and does not validate as UTF-8.\n"), file);
					   }
					   break;
				   default:
					   ERROR_MSG(_T("CValidateUnicode::CheckBOM() for file '%s' returned an unknown return value: %d\n"),
							   file, ftype);
					   return NULL;
					   break;
			   }
         }			   
		}
	}

	tstring strMode(mode);

	switch (ftype)
	{
		case CValidateUnicode::UTF_8:
			strMode.append(_T(", ccs=UTF-8"));
			INFO_MSG(_T("Opening '%s' as UTF-8.\n"), file);
			break;
		case CValidateUnicode::UTF_16LE:
			strMode.append(_T(", ccs=UTF-16LE"));
			INFO_MSG(_T("Opening '%s' as UTF-16LE.\n"), file);
			break;
		default:
			// Looks like fopen() doesn't support other encodings of Unicode.
			strMode.append(_T(", ccs=UNICODE"));
			INFO_MSG(_T("Opening '%s' as ANSI.\n"), file);
			break;
	}

	return _tfopen(file, strMode.c_str());
}

#endif
