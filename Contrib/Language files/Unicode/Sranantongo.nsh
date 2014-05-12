;Language: Sranantongo (1033)
;By Joost Verburg

!insertmacro LANGFILE "Sranantongo" "Sranantongo"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Dya yu e si a Setup fu $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "A Setup o yepi yu fu installeer $(^NameDA).$\r$\n$\r$\nA moro bun fu tapu ala den tra programa fosi yu bigin nanga Setup. Dan den file di de fanowdu o man update sondro taki yu abi fu leti yu computer baka.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Dya yu kan bigin puru na installatie  $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "A Setup o yepi yu fu puru na installatie $(^NameDA).$\r$\n$\r$\nFosi yu bigin, dan tapu a programa $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "License Agreement"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Grantangi, leisi a License Agreement fosi yu bigin installeer $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Efu yu e agri nanga san skrifi na ini a License Agreement, dan klik Mi e agri so taki yu man go doro. Yu musu agri fosi yu bigin installeer $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Efu yu e agri, dan klik a faki na ondrosei. Yu musu agri fosi yu bigin installeer $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Efu yu e agri nanga den sani disi, dan klik Mi e agri. Yu musu agri fosi yu bigin installeer $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "License Agreement"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Grantangi, leisi a License Agreement fosi yu puru na installatie $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Efu yu e agri, dan klik Mi e agri so taki yu man go doro. Yu musu agri fosi yu bigin puru na installatie $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Efu yu e agri, dan klik Mi e agri. Yu musu agri fosi yu bigin puru na installatie  $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Efu yu e agri nanga den sani disi, dan klik a faki na ondrosei. Yu musu agri fosi yu bigin puru a programa $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Go na a tra bladzijde fu si a tra pisi fu a License Agreement."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Luku san yu wani"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Luku sortu sani fu $(^NameDA) yu wani installeer."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Luku san yu wani"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Luku sortu sani fu $(^NameDA) yu wani puru fu na installatie."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "San na en"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Te yu meki a mouse sweef tapu a sani di yu wani, dan yu o man leisi san na en."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Te yu meki a mouse sweef tapu a sani di yu wani, dan yu o man leisi san na en."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Sori pe yu wani installeer en"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Sori a folder pe yu wani installeer en $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Sori pe yu wani puru na installatie"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Sori a folder pe yu wani puru na installatie $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "A e installeer"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Wakti teleki $(^NameDA) kaba installeer."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "A kaba installeer"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "A programa installeer bun."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Na installatie stop"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "A programa no installeer bun."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Puru na installatie"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Wakti teleki na installatie fu $(^NameDA) puru."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Na installatie no e wroko moro"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Na installatie puru bun."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "A stop fu puru na installatie"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Na installatie no puru bun."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Na installatie fu $(^NameDA) e kaba"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) installeer tapu yu computer.$\r$\n$\r$\nKlik Kaba fu tapu na installatie."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Yu computer musu leti baka fu kaba na installatie fu $(^NameDA). Yu wani leti a computer baka?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "A e kaba fu puru a programa fu $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) no de moro tapu yu computer.$\r$\n$\r$\nKlik Kaba fu tapu na installatie."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Yu computer musu leti baka fu puru na installatie fu $(^NameDA). Yu wani leti a computer baka?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Leti a computer baka"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Misrefi wani leti a computer baka ten"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Bigin $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Sori san mi musu leisi"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Kaba"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Suku wan folder na ini a Start Menu"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Suku wan folder na ini a Start Menu gi den $(^NameDA) shortcut."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Suku wan folder na ini a Start Menu pe yu wani poti den shortcut fu a programa. Yu kan meki wan nyun folder tu nanga wan tra nen."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "No meki shortcut"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Puru na installatie $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Puru $(^NameDA) fu yu computer."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Yu de seiker taki yu wani stop na installatie fu $(^Name)?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Yu de seiker taki yu wani stop fu puru na istallatie fu $(^Name)?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Sori suma mag gebroiki en"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Sori gi suma yu wani installleer $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Sori efu yu wani installeer $(^NameDA) gi yu wawan noso gi ala sma di e gebroiki a computer disi. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Installeer gi ala sma di e gebroiki a computer disi"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Installeer gi mi wawan"
!endif
