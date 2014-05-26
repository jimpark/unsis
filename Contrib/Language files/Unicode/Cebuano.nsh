;Language: Cebuano (1541)
;By Joost Verburg

!insertmacro LANGFILE "Cebuano" "Cebuano"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Welcome sa Setup sa $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Giyahan ka niini nga Setup sa pag-install sa $(^NameDA).$\r$\n$\r$\nMas maayo kon imong i-close ang tanang ubang application sa dili pa sugdan ang Setup kay i-update niini ang importanteng mga system file nga dili kinahanglang i-reboot ang imong computer.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Welcome sa $(^NameDA) Uninstall"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Giyahan ka niini nga Setup sa pag-uninstall sa $(^NameDA).$\r$\n$\r$\nSa dili ka pa mag-uninstall, paneguroa nga dili abli ang $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Kondisyones sa Lisensiya"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Palihog basaha ang kondisyones sa lisensiya sa dili pa nimo i-install ang $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Kon mouyon ka sa kondisyones sa lisensiya, i-click ang Mouyon Ko aron makapadayon ka. Kinahanglang mouyon ka sa kondisyones aron ma-install ang $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kon mouyon ka sa kondisyones sa lisensiya, i-click ang check box sa ubos. Kinahanglang mouyon ka sa kondisyones aron ma-install ang $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kon mouyon ka sa kondisyones sa lisensiya, pilia ang unang opsiyon sa ubos. Kinahanglang mouyon ka sa kondisyones aron ma-install ang $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Kondisyones sa Lisensiya"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Palihog basaha ang kondisyones sa lisensiya sa dili pa nimo i-uninstall ang $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Kon mouyon ka sa kondisyones sa lisensiya, i-click ang Mouyon Ko aron makapadayon ka. Kinahanglang mouyon ka sa kondisyones aron ma-uninstall ang $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kon mouyon ka sa kondisyones sa lisensiya, i-click ang check box sa ubos. Kinahanglang mouyon ka sa kondisyones aron ma-uninstall ang $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kon mouyon ka sa kondisyones sa lisensiya, pilia ang unang opsiyon sa ubos. Kinahanglang mouyon ka sa kondisyones aron ma-uninstall ang $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Tulpoka ang Page Down aron imong mabasa ang ubang kondisyones."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Pagpilig mga Bahin"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Pagpilig mga bahin sa $(^NameDA) nga gusto nimong i-install."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Pagpilig mga Bahin"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Pagpilig mga bahin sa $(^NameDA) nga gusto nimong i-uninstall."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Deskripsiyon"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Ipatungod ang cursor sa mouse sa usa ka bahin aron makita ang deskripsiyon niini."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Ipatungod ang cursor sa mouse sa usa ka bahin aron makita ang deskripsiyon niini."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Pagpilig Lokasyon sa Pag-install"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Pilia ang folder nga i-install ang $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Pagpilig Lokasyon sa Pag-uninstall"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Pilia ang folder nga i-uninstall ang $(^NameDA)."
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
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Pagkompleto sa Setup sa $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Ang $(^NameDA) na-install na sa imong computer.$\r$\n$\r$\nI-click ang Human Na aron ma-close ang Setup."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "I-restart ang imong computer aron makompleto ang pag-install sa $(^NameDA). I-reboot na ba nimo?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Pagkompleto sa Pag-uninstall sa $(^NameDA)"
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
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Pagpilig Folder sa Start Menu"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Pagpilig folder sa Start Menu para sa shortcut sa $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Pagpilig folder sa Start Menu nga imong butangag mga shortcut sa program. Makagama ka usab ug ngalan sa paghimog bag-ong folder."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Ayaw paghimog mga shortcut"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "I-uninstall ang $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Tangtanga ang $(^NameDA) sa imong computer."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Imo ba gyong hunongon ang Setup sa $(^Name)?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Imo ba gyong hunongon ang Pag-uninstall sa $(^Name)?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Pagpilig Mogamit"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Pagpilig mogamit nga gusto nimong i-install ang $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Pagpili kon gusto ba nimong i-install ang $(^NameDA) sa imo lang o sa tanang mogamit niini nga computer. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "I-install sa tanang mogamit niini nga computer"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "I-install sa ako lang"
!endif
