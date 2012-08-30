@echo off
scons DEBUG=yes NSIS_MAX_STRLEN=8196 NSIS_CONFIG_LOG=yes dist-installer | tee mkd.out
if exist .instdist goto copyfiles
echo Trying one more time...
scons DEBUG=yes NSIS_MAX_STRLEN=8196 NSIS_CONFIG_LOG=yes dist-installer | tee mkd.out
:copyfiles
ver | find "Version 6.1" > nul
if %ERRORLEVEL% == 0 goto ver_7
copy build\debug\Makensisw\makensisw.exe "C:\Program Files\NSIS\ANSI"
copy build\debug\Makensisw\makensisw.pdb "C:\Program Files\NSIS\ANSI"
copy build\debug\Makensis\makensis.exe "C:\Program Files\NSIS\ANSI"
copy build\debug\Makensis\makensis.pdb "C:\Program Files\NSIS\ANSI"
copy build\debug\Makensisw\makensisw.* .instdist\
copy build\debug\Makensis\makensis.* .instdist\
copy build\debug\zip2exe\zip2exe.* .instdist\Bin
copy build\debug\zip2exe\zip2exe.exe "c:\Program Files\NSIS\ANSI\Bin"
:ver_7
rem Windows 7 is strict about copying files to C:\Program Files
rem So this action cannot be done.
