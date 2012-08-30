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

  Unicode support by Jim Park -- 08/18/2007
*/
#include <windows.h>
#include "noclib.h"

// Jim Park's clib methods -- faster and correct for MBCS.
// The API also matches the C-runtime library.
char *my_strrchrA(char *string, const char c)
{
  int   sch;
  char* rval = NULL;

  while ((sch = *string) != '\0')
  {
     if (sch == c)
     {
        rval = string;
        break;
     }
     string = CharNextA(string);
  }

  return rval;
}

// wchar_t version.
wchar_t *my_strrchrW(wchar_t *string, const wchar_t c)
{
  wchar_t  sch;
  wchar_t* rval = NULL;

  while ((sch = *string) != L'\0')
  {
     if (sch == c)
     {
        rval = string;
        break;
     }
     string = CharNextW(string);
  }

  return rval;
}

// Jim Park's speedier my_strstr -- no inner loop calling lstrlen.
// And works for MBCS.
char* my_strstrA(char *i, char *s)
{
  size_t ilen = lstrlenA(i);
  size_t slen = lstrlenA(s);

  char *i_iter;
  char *s_iter;

  char *rval = NULL;

  while (ilen >= slen)
  {
    i_iter = i;
    s_iter = s;

    while (*s_iter != '\0')
    {
      if (*i_iter != *s_iter)
      {
        break;
      }
      i_iter = CharNextA(i_iter);
      s_iter = CharNextA(s_iter);
    }

    if (*s_iter == '\0')
    {
      rval = i;
      break;
    }

    i = CharNextA(i);
    --ilen;
  }

  return rval;
}

// wchar_t version.
wchar_t* my_strstrW(wchar_t *i, wchar_t *s)
{
  size_t ilen = lstrlenW(i);
  size_t slen = lstrlenW(s);

  wchar_t *i_iter;
  wchar_t *s_iter;

  wchar_t *rval = NULL;

  while (ilen >= slen)
  {
    i_iter = i;
    s_iter = s;

    while (*s_iter != L'\0')
    {
      if (*i_iter != *s_iter)
      {
        break;
      }
      i_iter = CharNextW(i_iter);
      s_iter = CharNextW(i_iter);
    }

    if (*s_iter == L'\0')
    {
      rval = i;
      break;
    }

    i = CharNextW(i);
    --ilen;
  }

  return rval;
}

void *my_memset(void *dest, int c, size_t count) {
  for (size_t i=0; i<count;i++) ((char*)dest)[i]=c;
  return dest;
}

// iceman_k's clib methods
int lstrncmpA(char *s1, const char *s2, int count)
{
    while ((count > 0) && (*s1) && (*s2) && (*(s1) == *(s2))) count--, s1++, s2++;
    if ((count == 0) || (*s1 == *s2)) return 0;
    return (*s1 - *s2);
}

int lstrncmpW(wchar_t *s1, const wchar_t *s2, int count)
{
    while ((count > 0) && (*s1) && (*s2) && (*(s1) == *(s2))) count--, s1++, s2++;
    if ((count == 0) || (*s1 == *s2)) return 0;
    return (*s1 - *s2);
}

// This only works for the English alphabet.
int lstrncmpiA(char *s1, const char *s2, int count)
{
  while (count-- && *s1 && *s2)
  {
    char ss1=*s1++;
    char ss2=*s2++;
    if (ss1>='a' && ss1 <= 'z') ss1+='A'-'a';
    if (ss2>='a' && ss2 <= 'z') ss2+='A'-'a';
    if (ss1 != ss2) return ss1-ss2;
  }
  return 0;
}

// wchar_t version.
int lstrncmpiW(wchar_t *s1, const wchar_t *s2, int count)
{
  while (count-- && *s1 && *s2)
  {
    wchar_t ss1=*s1++;
    wchar_t ss2=*s2++;
    if (ss1>=L'a' && ss1 <= L'z') ss1+=L'A'-L'a';
    if (ss2>=L'a' && ss2 <= L'z') ss2+=L'A'-L'a';
    if (ss1 != ss2) return ss1-ss2;
  }
  return 0;
}
