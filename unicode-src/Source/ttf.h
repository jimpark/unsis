/*
 * ttf.h
 * 
 * This file is a part of NSIS.
 * 
 * Copyright (C) 2015 Nullsoft and Contributors
 * 
 * Licensed under the zlib/libpng license (the "License");
 * you may not use this file except in compliance with the License.
 * 
 * Licence details can be found in the file COPYING.
 * 
 * This software is provided 'as-is', without any express or implied
 * warranty.
 *
 */


bool GetTTFVersionString(TCHAR* ttfFileName, TCHAR* buf, int bufChars);
bool GetTTFFontName(TCHAR* ttfFileName, TCHAR* buf, int bufChars);
