/* 
  Copyright (c) 2002 Robert Rainwater
  Contributors: Justin Frankel, Fritz Elfert, and Amir Szekely

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.

  Unicode support by Jim Park -- 08/17/2007
  Added ANSI and Wide versions of the C lib functions.  And also added
  "tcs" versions that swaps defs depending on _UNICODE.
*/
#ifndef NOCLIB_H
#define NOCLIB_H

// kickik's clib methods
char *my_strstrA(char *i, char *s);
char *my_strrchrA(char *string, const char c);

wchar_t *my_strstrW(wchar_t *i, wchar_t *s);
wchar_t *my_strrchrW(wchar_t *string, const wchar_t c);

void *my_memset(void *dest, int c, size_t count);

// iceman_k's clib methods
int lstrncmpA(char *s1, const char *s2, int chars);
int lstrncmpiA(char *s1, const char *s2, int chars);

int lstrncmpW(wchar_t *s1, const wchar_t *s2, int chars);
int lstrncmpiW(wchar_t *s1, const wchar_t *s2, int chars);

#ifdef _UNICODE
#define lstrncmp  lstrncmpW
#define lstrncmpi lstrncmpiW
#define my_strstr my_strstrW
#define my_strrchr my_strrchrW
#else
#define lstrncmp  lstrncmpA
#define lstrncmpi lstrncmpiA
#define my_strstr my_strstrA
#define my_strrchr my_strrchrA
#endif

#endif
