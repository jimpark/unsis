Project Home: http://www.scratchpaper.com

Finally, an open source installer that can handle Unicode!

NSIS stands for Nullsoft Scriptable Install System. NSIS is the premier free open-source Windows installer for distributing your software.  NSIS, while great, currently supports only ANSI codepage languages. But because the number of Unicode-only languages are increasing, I've patched NSIS to be completely Unicode. This means that installers generated using the Unicode version of NSIS ("Unicode NSIS" for short) will only work on Windows 2000 and later. But this also means that you can write your installer for any language that Windows supports on any codepage setting. For example, you can work on a Chinese installer on Windows XP set to the English codepage and still be able to read and write the NSI script files--given that you can read Chinese, of course. So this should help out your multilingual developers.

Your application is completely Unicode so why shouldn't your installer also be completely Unicode?

If you are looking for a free Unicode installer, this is the only option I know of. I looked around before I got talked into working on it.