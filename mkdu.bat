@echo off
scons DEBUG=yes UNICODE=yes NSIS_CONFIG_LOG=yes NSIS_MAX_STRLEN=8192 NSIS_CONFIG_LOG=yes dist-installer | tee mkdu.out
if exist .instdist goto copyfiles
:copyfiles
ver | find "Version 6.1" > nul
if %ERRORLEVEL% == 0 goto ver_7
copy build\udebug\Makensisw\makensisw.exe "C:\Program Files (x86)\NSIS\Unicode"
copy build\udebug\Makensisw\makensisw.pdb "C:\Program Files (x86)\NSIS\Unicode"
copy build\udebug\Makensis\makensis.exe "C:\Program Files (x86)\NSIS\Unicode"
copy build\udebug\Makensis\makensis.pdb "C:\Program Files (x86)\NSIS\Unicode"
copy "build\udebug\NSIS Menu\NSIS.exe" "c:\Program Files (x86)\NSIS\Unicode"
copy "build\udebug\NSIS Menu\NSIS.pdb" "c:\Program Files (x86)\NSIS\Unicode"
copy build\udebug\Makensisw\makensisw.* .instdist\
copy build\udebug\Makensis\makensis.* .instdist\
copy build\udebug\zip2exe\zip2exe.* .instdist\Bin
copy build\udebug\zip2exe\zip2exe.exe "c:\Program Files (x86)\NSIS\Unicode\Bin"

:ver_7
rem Windows 7 is strict about copying files to C:\Program Files (x86)
rem So this action cannot be done.
