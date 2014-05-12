;Language: Cebuano (1541)
;By Joost Verburg

!insertmacro LANGFILE "Cebuano" "Cebuano"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Welcome sa $(^NameDA) Setup"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Giyahan ka niini nga Setup sa pag-install sa $(^NameDA).$\r$\n$\r$\nMas maayo kon imong isira ang tanang ubang aplikasyon sa dili pa sugdan ang Setup kay i-update niini ang importanteng mga system file nga dili kinahanglang i-reboot ang imong computer.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Welcome sa $(^NameDA) Uninstall"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Giyahan ka niini nga Setup sa pag-uninstall sa $(^NameDA).$\r$\n$\r$\nSa dili ka pa mag-uninstall, paneguroa nga dili abli ang $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Kasabotan sa Lisensiya"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Palihog basaha ang kondisyones sa lisensiya sa dili pa nimo i-install ang $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Kon mouyon ka sa kondisyones sa lisensiya, i-click ang Mouyon Ko aron makapadayon ka. Kinahanglang mouyon ka sa kasabotan aron ma-install ang $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kon mouyon ka sa kondisyones sa lisensiya, i-click ang check box sa ubos. Kinahanglang mouyon ka sa kasabotan aron ma-install ang $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kon mouyon ka sa kondisyones sa lisensiya, pilia ang unang opsiyon sa ubos. Kinahanglang mouyon ka sa kasabotan aron ma-install ang $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "License Agreement"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Please review the license terms before uninstalling $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "If you accept the terms of the agreement, click I Agree to continue. You must accept the agreement to uninstall $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "If you accept the terms of the agreement, click the check box below. You must accept the agreement to uninstall $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "If you accept the terms of the agreement, select the first option below. You must accept the agreement to uninstall $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "I-Page Down aron imong mabasa ang ubang kondisyones sa kasabotan."
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
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Nag-install pa"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Paabota samtang gi-install ang $(^NameDA)."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Ang Pag-install Natapos"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Ang Setup natapos."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Ang Pag-install Gihunong"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Ang Setup wala matapos."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Nag-uninstall pa"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Paabota samtang gi-uninstall ang $(^NameDA)."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Ang Pag-uninstall Natapos"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Ang pag-uninstall natapos."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Ang Pag-uninstall Gihunong"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Ang pag-uninstall wala matapos."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Pagkompleto sa $(^NameDA) Setup"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Ang $(^NameDA) na-install na sa imong computer.$\r$\n$\r$\nI-click ang Human Na aron ma-close ang Setup."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "I-restart ang imong computer aron makompleto ang pag-install sa $(^NameDA). I-reboot na ba nimo?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Pagkompleto sa $(^NameDA) Uninstall"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "Ang $(^NameDA) na-uninstall na sa imong computer.$\r$\n$\r$\nI-click ang Human Na aron ma-close ang Setup."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "I-restart ang imong computer aron makompleto ang pag-uninstall sa $(^NameDA). I-reboot na ba nimo?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "I-reboot na"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Dili pa nako i-reboot"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&I-run ang $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Ipakita ang Readme"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Human Na"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Choose Start Menu Folder"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Choose a Start Menu folder for the $(^NameDA) shortcuts."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Select the Start Menu folder in which you would like to create the program's shortcuts. You can also enter a name to create a new folder."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Do not create shortcuts"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "I-uninstall ang $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Tangtanga ang $(^NameDA) sa imong computer."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Imo ba gyong hunongon ang $(^Name) Setup?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Imo ba gyong hunongon ang $(^Name) Uninstall?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Pagpilig Mogamit"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Pagpilig mogamit nga gusto nimong i-install ang $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Pagpili kon gusto ba nimong i-install ang $(^NameDA) sa imo lang o sa tanang mogamit niini nga computer. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "I-install sa tanang mogamit niini nga computer"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "I-install sa ako lang"
!endif
