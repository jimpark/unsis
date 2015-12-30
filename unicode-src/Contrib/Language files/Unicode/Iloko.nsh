;Language: Iloko (1542)
;By Joost Verburg

!insertmacro LANGFILE "Iloko" "Iloko"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Welcome iti $(^NameDA) Setup"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Tulongannaka ti Setup iti pannaka-install ti $(^NameDA).$\r$\n$\r$\nIserram ngarud amin nga application sakbay a rugiam ti Setup. No aramidem dayta, posible a ma-update-mo dagiti kasapulan a system files uray saankan nga ag-reboot iti computer-mo.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Welcome iti $(^NameDA) Uninstall"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Tulongannaka ti Setup a mang-uninstall iti $(^NameDA).$\r$\n$\r$\nSakbay a rugiam ti panang-uninstall, siguraduem a saan a nakalukat ti $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Katulagan Maipapan iti Lisensia"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Pakirepaso ti pagannurotan maipapan iti lisensia sakbay nga i-install ti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti Anamongak. Masapul nga akseptarem ti katulagan tapno ma-install ti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti check box iti baba. Masapul nga akseptarem ti katulagan tapno ma-install ti $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, piliem ti kaunaan nga opsion iti baba. Masapul nga akseptarem ti katulagan tapno ma-install-mo ti $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Katulagan Maipapan iti Lisensia"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Pakirepaso ti pagannurotan maipapan iti lisensia sakbay nga i-uninstall ti $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti Anamongak. Masapul nga akseptarem ti katulagan tapno ma-uninstall ti $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti check box iti baba. Masapul nga akseptarem ti katulagan tapno ma-uninstall ti $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, piliem ti kaunaan nga opsion iti baba. Masapul nga akseptarem ti katulagan tapno ma-uninstall ti $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Talmegam ti Page Down tapno makitam ti amin a paset ti katulagan."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Choose Components"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Choose which features of $(^NameDA) you want to install."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Choose Components"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Choose which features of $(^NameDA) you want to uninstall."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Description"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Position your mouse over a component to see its description."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Position your mouse over a component to see its description."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Choose Install Location"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Choose the folder in which to install $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Choose Uninstall Location"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Choose the folder from which to uninstall $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Installing"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Aguray biit bayat a main-install ti $(^NameDA)."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Nakompleton ti Installation"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Naballigi a nakompleto ti Setup."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Na-abort ti Installation"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Di naballigi ti Setup."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Uninstalling"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Aguray biit bayat a maa-uninstall ti $(^NameDA)."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Nakompleton ti Uninstallation"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Naballigi a nakompleto ti Uninstallation."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Na-abort ti Uninstallation"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Di naballigi ti Uninstallation."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Nakompleton ti $(^NameDA) Setup"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Na-install iti computer-mo ti $(^NameDA).$\r$\n$\r$\nI-click ti Nalpasen tapno iserra ti Setup."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Masapul a mai-restart ti computer-mo tapno makompleto ti installation ti $(^NameDA). Kayatmo kadin nga i-reboot?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Nakompleton ti $(^NameDA) Uninstallation"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "Na-uninstall iti computer-mo ti $(^NameDA).$\r$\n$\r$\nI-click ti Nalpasen tapno iserra ti Setup."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Masapul a mai-restart ti computer-mo tapno makompleto ti uninstallation ti $(^NameDA). Kayatmo kadin nga i-reboot?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "I-reboot itan"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Mano-manokton nga i-reboot"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&I-run ti $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Ipakita ti Readme"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Nalpasen"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Piliem ti Start Menu Folder"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Piliem ti Start Menu folder para iti shortcut ti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Piliem ti Start Menu folder a kayatmo a pangikabilan iti shortcut. Mabalinmo met ti mangi-type iti nagan tapno mangaramid iti baro a folder."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Saan a mangaramid iti shortcut"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Uninstall $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Ikkaten ti $(^NameDA) manipud iti computer-mo."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Siguradoka kadi a kayatmon nga isardeng ti $(^Name) Setup?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Siguradoka kadi a kayatmon nga isardeng ti panang-uninstall iti $(^Name)?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Piliem dagiti User"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Piliem no siasino kadagiti User ti kayatmo a ma-install-an iti $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Piliem no kayatmo a sika laeng ti ma-install-an iti $(^NameDA) wenno ma-install-an amin a user iti daytoy a computer. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "I-install para iti amin nga agus-usar iti daytoy a computer"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "I-install laeng kaniak"
!endif
