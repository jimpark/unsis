;Language: Sranantongo (1543)
;By Joost Verburg

!insertmacro LANGFILE "Sranantongo" "Sranantongo"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Dya yu e si a Setup fu $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "A Setup o yepi yu fu poti $(^NameDA) tapu a computer.$\r$\n$\r$\nA moro bun fu tapu ala den tra programa fosi yu bigin nanga Setup. Dan den file di de fanowdu o man kenki sondro taki yu abi fu leti yu computer baka.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Dya yu kan bigin puru $(^NameDA) fu a computer"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "A Setup o yepi yu fu puru $(^NameDA) fu a computer.$\r$\n$\r$\nFosi yu bigin, dan tapu a programa $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Den reti di yu abi"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Grantangi, leisi na artikel Den reti di yu abi fosi yu bigin poti $(^NameDA) tapu a computer."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Efu yu e agri nanga san skrifi na ini na artikel Den reti di yu abi, dan klik Mi e agri so taki yu man go doro. Yu musu agri fosi yu bigin poti $(^NameDA) tapu a computer."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Efu yu e agri, dan klik a faki na ondrosei. Yu musu agri fosi yu poti $(^NameDA) tapu a computer. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Efu yu e agri nanga den sani disi, dan klik Mi e agri. Yu musu agri fosi yu poti $(^NameDA) tapu a computer. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Den reti di yu abi"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Grantangi, leisi na artikel Den reti di yu abi fosi yu puru $(^NameDA) fu a computer."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Efu yu e agri, dan klik Mi e agri so taki yu man go doro. Yu musu agri fosi yu puru $(^NameDA) fu a computer."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Efu yu e agri, dan klik Mi e agri. Yu musu agri fosi yu puru $(^NameDA) fu a computer. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Efu yu e agri nanga den sani disi, dan klik a faki na ondrosei. Yu musu agri fosi yu bigin puru a programa $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Go na a tra bladzijde fu si a tra pisi fu na artikel Den reti di yu abi."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Luku san yu wani"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Luku sortu sani fu $(^NameDA) yu wani poti tapu a computer."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Luku san yu wani"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Luku sortu sani fu $(^NameDA) yu wani puru fu a computer."
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
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Sori pe yu wani poti en"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Sori a folder pe yu wani poti $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Sori fu pe yu wani puru en"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Sori a folder fu pe yu wani puru $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "A e poti den file tapu a computer"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Wakti teleki $(^NameDA) kaba poti den file tapu a computer."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "A kaba poti den file"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Den file fu a programa poti bun."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "A no e poti file tapu a computer moro"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Den file fu a programa no poti bun."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Puru den file"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Wakti teleki den file fu $(^NameDA) puru."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "A kaba puru den file"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Den file puru bun."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "A no e puru file fu a computer moro"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Den file no puru bun."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Den file fu $(^NameDA) kaba poti tapu a computer"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) poti kaba tapu a computer.$\r$\n$\r$\nKlik Kaba fu tapu na installatie."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "A computer musu leti baka fu kaba poti den file fu $(^NameDA). Yu wani leti a computer baka?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Den file fu $(^NameDA) kaba puru fu a computer"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) no de moro tapu a computer.$\r$\n$\r$\nKlik Kaba fu tapu na installatie."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "A computer musu leti baka fu kaba puru den file fu $(^NameDA). Yu wani leti a computer baka?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Leti a computer baka"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Misrefi o leti a computer na wan tra ten"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Opo $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Sori mi san mi musu leisi"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Kaba"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Suku wan folder na ini a Start Menu"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Suku wan folder na ini a Start Menu gi den $(^NameDA) shortcut."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Suku wan folder na ini a Start Menu pe yu wani poti den shortcut fu a programa. Yu kan meki wan nyun folder tu nanga wan tra nen."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "No meki shortcut"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Puru $(^NameDA) fu a computer"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Puru den file fu $(^NameDA) fu a computer."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Yu de seiker taki yu no wani go doro fu poti $(^Name) tapu a computer?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Yu de seiker taki yu no wani go doro fu puru $(^Name) fu a computer?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Sori suma mag gebroiki en"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Sori gi suma yu wani poti $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Sori efu yu wani poti $(^NameDA) gi yu wawan, noso gi ala sma di e gebroiki a computer disi. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Poti a programa gi ala sma di e gebroiki a computer disi"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Poti a programa gi mi wawan"
!endif
