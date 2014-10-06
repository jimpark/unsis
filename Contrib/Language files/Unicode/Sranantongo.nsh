;Language: Sranantongo (1543)
;By Joost Verburg

!insertmacro LANGFILE "Sranantongo" "Sranantongo"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Dyaso yu e si a Setup fu $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "A Setup o yepi yu fu installeer $(^NameDA) tapu a computer.$\r$\n$\r$\nA moro bun fu tapu ala tra programa fosi yu bigin nanga Setup. Na so a programa o man kenki son file sondro taki yu abi fu leti yu computer baka.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Dyaso yu kan puru $(^NameDA) fu a computer"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "A Setup o yepi yu fu puru $(^NameDA) fu a computer.$\r$\n$\r$\nFosi yu bigin, dan tapu a programa $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Gebruikersrechtovereenkomst"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Grantangi, leisi a Gebruikersrechtovereenkomst fosi yu installeer $(^NameDA) tapu a computer."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Efu yu e agri nanga den sani di skrifi na ini a Gebruikersrechtovereenkomst, dan klik Agri fu go doro. Yu musu agri fu man installeer $(^NameDA) tapu a computer."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Efu yu e agri, dan poti wan marki na ini a faki na ondrosei. Yu musu agri fu man installeer $(^NameDA) tapu a computer. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Efu yu e agri nanga den sani disi, dan klik a fosi sani na ondrosei. Yu musu agri fu man installeer $(^NameDA) tapu a computer. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Gebruikersrechtovereenkomst"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Grantangi, leisi den sani di skrifi na a Gebruikersrechtovereenkomst fosi yu puru $(^NameDA) fu a computer."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Efu yu e agri, dan klik Agri fu go doro. Yu musu agri fu man puru $(^NameDA) fu a computer."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Efu yu e agri, dan klik Agri. Yu musu agri fu man puru $(^NameDA) fu a computer. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Efu yu e agri nanga den sani di skrifi na Gebruikersrechtovereenkomst, dan klik a fosi sani na ondrosei. Yu musu agri fu man puru a programa $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Druk Page Down tapu yu keyboard fu leisi a Gebruikersrechtovereenkomst go doro."
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
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Te yu poti a peiri fu a mouse na tapu a sani di yu wani, dan yu o man leisi san na en."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Te yu poti a peiri fu a mouse na tapu a sani di yu wani, dan yu o man leisi san na en."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Sori pe yu wani installeer en"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Sori a folder pe yu wani installeer $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Sori fu pe yu wani puru en"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Sori a folder fu pe yu wani puru $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "A programa e installeer tapu a computer"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Grantangi, wakti teleki $(^NameDA) kaba installeer tapu a computer."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "A programa kaba installeer"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "A programa installeer bun."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "A programa no installeer go doro"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "A programa no installeer bun."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "A e puru a programa"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Grantangi, wakti teleki $(^NameDA) puru fu a computer."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "A kaba puru a programa"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "A programa puru bun."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "A no go doro fu puru a programa"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "A programa no puru bun."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "A kaba installeer $(^NameDA) tapu a computer"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) installeer tapu a computer.$\r$\n$\r$\nKlik Kaba fu tapu Setup."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "A computer musu leti baka fu kaba installeer $(^NameDA). Yu wani leti a computer ete wan leisi baka?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "A e kaba puru $(^NameDA) fu a computer"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) puru fu a computer.$\r$\n$\r$\nKlik Kaba fu tapu Setup."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "A computer musu leti baka fu puru $(^NameDA) fu a computer. Yu wani leti a computer ete wan leisi baka?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Leti a computer baka"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Bakaten mi srefi o leti a computer baka"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Opo $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Sori Readme"
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
  ${LangFileString} MUI_TEXT_ABORTWARNING "Yu de seiker taki yu no wani go doro fu installeer $(^Name) tapu a computer?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Yu de seiker taki yu no wani go doro fu puru $(^Name) fu a computer?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Sori suma mag gebroiki en"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Sori gi suma yu wani installeer $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Sori efu yu wani installeer $(^NameDA) gi yu wawan, noso gi ala sma di e gebroiki a computer disi. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Installeer a programa gi ala sma di e gebroiki a computer disi"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Installeer a programa gi mi wawan"
!endif
