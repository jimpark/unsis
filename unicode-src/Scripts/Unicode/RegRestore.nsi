Name "Restore NSIS Registry"
OutFile RegRestore.exe

SilentInstall silent

XPStyle on

Section
WriteRegStr HKLM SOFTWARE\NSIS "" $PROGRAMFILES\NSIS\Unicode
WriteRegStr HKCR NSIS.Header\DefaultIcon "" $PROGRAMFILES\NSIS\Unicode\makensisw.exe,1
WriteRegStr HKCR NSIS.Script\DefaultIcon "" $PROGRAMFILES\NSIS\Unicode\makensisw.exe,1
WriteRegStr HKCR NSIS.Script\shell\compile\command "" '"$PROGRAMFILES\NSIS\Unicode\makensisw.exe" "%1"'
WriteRegStr HKCR NSIS.Script\shell\compile-compressor\command "" '"$PROGRAMFILES\NSIS\Unicode\makensisw.exe" /ChooseCompressor "%1"'
MessageBox MB_OK Restored!
SectionEnd
