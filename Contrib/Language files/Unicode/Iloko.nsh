;Language: Iloko (1542)
;By Joost Verburg

!insertmacro LANGFILE "Iloko" "Iloko"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Welcome iti $(^NameDA) Setup"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Tulongannaka ti Setup iti pannaka-install ti $(^NameDA).$\r$\n$\r$\nIserram ngarud amin nga application sakbay a rugiam ti Setup. No aramidem dayta, posible a ma-update-mo dagiti kasapulan a system files uray saanmon nga i-reboot ti computer-mo.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Welcome iti $(^NameDA) Uninstall"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Tulongannaka ti Setup iti pannaka-uninstall ti $(^NameDA).$\r$\n$\r$\nSakbay a rugiam ti panang-uninstall, siguraduem a saan a nakalukat ti $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Katulagan Maipapan iti Lisensia"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Pakirepaso ti pagannurotan maipapan iti lisensia sakbay nga i-install ti$\r$\n$(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "No akseptarem ken umanamongka iti amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti Wen. Masapul nga umanamongka tapno ma-install ti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti check box iti baba. Masapul nga umanamongka tapno ma-install ti $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, piliem ti kaunaan nga opsion iti baba. Masapul nga umanamongka tapno ma-install-mo ti $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Katulagan Maipapan iti Lisensia"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Pakirepaso ti pagannurotan maipapan iti lisensia sakbay nga i-uninstall ti $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "No akseptarem ken umanamongka iti amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti Wen. Masapul nga umanamongka tapno ma-uninstall ti $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, i-click ti check box iti baba. Masapul nga umanamongka tapno ma-uninstall ti $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "No akseptarem amin a pagannurotan iti katulagan maipapan iti lisensia, piliem ti kaunaan nga opsion iti baba. Masapul nga umanamongka tapno ma-uninstall ti $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Talmegam ti Page Down tapno makitam ti amin a paset ti katulagan."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Agpili"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Piliem no ania kadagiti features ti $(^NameDA) ti kayatmo nga i-install."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Agpili"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Piliem no ania kadagiti features ti $(^NameDA) ti kayatmo nga i-uninstall."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Deskripsion"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Ibatogmo ti cursor iti paset a kayatmo a makita ti deskripsionna."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Ibatogmo ti cursor iti paset a kayatmo a makita ti deskripsionna."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Agpili iti Pang-install-an"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Piliem ti folder a kayatmo a pang-install-an iti $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Agpili iti Pang-uninstall-an"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Piliem ti folder a kayatmo a pang-uninstall-an iti $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Madama nga Agin-install"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Aguray biit bayat a main-install ti $(^NameDA)."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Nakompleton ti Installation"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Nakompleton ti Setup."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Na-abort ti Installation"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Di Na-install."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Madama nga Agan-uninstall"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Aguray biit bayat a maan-uninstall ti $(^NameDA)."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Na-uninstall-en"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Na-uninstall-en."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Naisardeng ti Uninstallation"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Di naballigi ti Uninstallation."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Nakompleton ti Pannakai-setup ti $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Na-install iti computer-mo ti $(^NameDA).$\r$\n$\r$\nI-click ti Finish tapno iserra ti Setup."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Masapul a mai-restart ti computer-mo tapno makompleto ti pannaka-install ti $(^NameDA). Kayatmo kadin nga i-reboot?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Nakompleton ti $(^NameDA) Uninstallation"
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
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Piliem ti Start Menu Folder"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Piliem ti Start Menu folder para iti shortcut ti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Piliem ti Start Menu folder a kayatmo a pangikabilan iti shortcut. Mabalinmo met ti mangi-type iti nagan tapno mangaramid iti baro a folder."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Saan a mangaramid iti shortcut"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "I-uninstall ti $(^NameDA)"
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
