;Language: Iloko (1542)
;By Joost Verburg

!insertmacro LANGFILE "Iloko" "Iloko"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Welcome iti $(^NameDA) Setup"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Tulongannaka ti Setup iti pannaka-install ti $(^NameDA).$\r$\n$\r$\nIserram ngarud amin nga application sakbay a rugiam ti Setup. No aramidem dayta, posible a ma-update-mo dagiti kasapulan a system files uray saankan nga ag-reboot iti computer-mo.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Welcome iti $(^NameDA) Uninstall"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Tulongannaka ti Setup iti pannaka-uninstall ti $(^NameDA).$\r$\n$\r$\nSakbay a rugiam ti panang-uninstall, siguraduem a saan a nakalukat ti $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Katulagan Maipapan iti Lisensia"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Pakirepaso ti pagannurotan maipapan iti lisensia sakbay nga i-install ti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti Umanamongak. Masapul nga akseptarem ti katulagan tapno ma-install ti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti check box iti baba. Masapul nga akseptarem ti katulagan tapno ma-install ti $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, piliem ti kaunaan nga opsion iti baba. Masapul nga akseptarem ti katulagan tapno ma-install-mo ti $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "License Agreement"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Please review the license terms before uninstalling $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "If you accept the terms of the agreement, click I Agree to continue. You must accept the agreement to uninstall $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "If you accept the terms of the agreement, click the check box below. You must accept the agreement to uninstall $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "If you accept the terms of the agreement, select the first option below. You must accept the agreement to uninstall $(^NameDA). $_CLICK"
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
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Installation Aborted"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Di naballigi ti Setup."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Uninstalling"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Aguray biit bayat a maa-uninstall ti $(^NameDA)."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Nakompleton ti Uninstallation"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Naballigi a nakompleto ti Uninstallation."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Uninstallation Aborted"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Di naballigi ti Uninstallation."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Panangkompleto iti $(^NameDA) Setup"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Na-install iti computer-mo ti $(^NameDA).$\r$\n$\r$\nI-click ti Finish tapno iserra ti Setup."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Masapul a mai-restart ti computer-mo tapno makompleto ti pannaka-install ti $(^NameDA). Kayatmo kadin nga i-reboot?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Panangkompleto iti $(^NameDA) Uninstallation"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "Na-uninstall iti computer-mo ti $(^NameDA).$\r$\n$\r$\nI-click ti Finish tapno iserra ti Setup."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Masapul a mai-restart ti computer-mo tapno makompleto ti pannaka-uninstall ti $(^NameDA). Kayatmo kadin nga i-reboot?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "I-reboot itan"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Mano-manokton nga i-reboot"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&I-run ti $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Ipakita ti Readme"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Finish"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Choose Start Menu Folder"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Choose a Start Menu folder for the $(^NameDA) shortcuts."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Select the Start Menu folder in which you would like to create the program's shortcuts. You can also enter a name to create a new folder."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Do not create shortcuts"
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
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Pilien dagiti User"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Pilien no siasino kadagiti User ti kayatmo a ma-install-an iti $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Pilien no kayatmo a sika laeng ti ma-install-an iti $(^NameDA) wenno ma-install-an amin a user iti daytoy a computer. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "I-install para iti amin nga agus-usar iti daytoy a computer"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "I-install laeng kaniak"
!endif
