;Language: Ewe (1544)
;By Ewe Team

!insertmacro LANGFILE "Ewe" "Ewe"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) Dada Ɖe Mɔ̃ Dzi Ƒe Ɖoɖoe Nye Esia"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Dɔwɔnua afia mɔ wò nàda $(^NameDA) ɖe wò mɔ̀ dzi.$\r$\n$\r$\nTsaflatsɛ tsi dɔwɔnu bubuwo katã hafi nàdze egɔme. Esiae ana wòanɔ bɔbɔe wòada faɛl siwo hiã la ɖe mɔ̀a dzi evɔ mahiã be nàtsi wò kɔmpiuta agbugbɔe asi o.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "$(^NameDA) Ƒe Nuɖeɖelemɔ̀dzinue Nye Esia"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Dɔwɔnua afia mɔ wò nàɖe $(^NameDA) ɖa le wò mɔ̃a dzi.$\r$\n$\r$\nHafi nàdze nua ɖeɖe le mɔ̃a dzi gɔme la, kpɔ egbɔ be yetsi $(^NameDA) la.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Ezazã Ŋuti Mɔɖeɖe"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Taflatsɛ xlẽ ezazã ŋuti mɔɖeɖea hafi nàda $(^NameDA) ɖe mɔ̃ dzi."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Ne èda asi ɖe emenyawo katã dzi la, zi Melɔ̃ dzi ne nàyi edzi. Ne èda asi ɖe mɔɖeɖea me nyawo dzi ko hafi nàte ŋu ada $(^NameDA) ɖe mɔ̃a dzi."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ne èda asi ɖe emenyawo katã dzi la, zi aɖaka si le ete dzi. Ne èda asi ɖe mɔɖeɖea me nyawo dzi ko hafi nàte ŋu ada $(^NameDA) ɖe mɔ̃a dzi. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ne èda asi ɖe emenyawo katã dzi la, tia nu gbãtɔ le ete. Ne èda asi ɖe mɔɖeɖea me nyawo dzi ko hafi nàte ŋu ada $(^NameDA) ɖe mɔ̃a dzi. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Ezazã Ŋuti Mɔɖeɖe"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Taflatsɛ xlẽ ezazã ŋuti mɔɖeɖea me nyawo hafi nàɖe $(^NameDA) ɖa le mɔ̃ dzi."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Ne èda asi ɖe emenyawo katã dzi la, zi Melɔ̃ dzi ne nàyi edzi. Ne èda asi ɖe mɔɖeɖea me nyawo dzi ko hafi nàte ŋu aɖe $(^NameDA) ɖa le mɔ̃a dzi."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ne èda asi ɖe emenyawo katã dzi la, zi aɖaka si le ete dzi. Ne èda asi ɖe mɔɖeɖea me nyawo dzi ko hafi nàte ŋu aɖe $(^NameDA) ɖa le mɔ̃a dzi. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ne èda asi ɖe emenyawo katã dzi la, tia nu gbãtɔ le ete. Ne èda asi ɖe mɔɖeɖea me nyawo dzi ko hafi nàte ŋu aɖe $(^NameDA) ɖa le mɔ̃a dzi. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Hee yi gɔme ne nàkpɔ mɔɖeɖea me nya susɔeawo."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Tia Nuwo"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Tia $(^NameDA) ƒe nu siwo nàdi be yeada ɖe mɔ̃ dzi."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Tia Nuwo"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Tia $(^NameDA) ƒe nu siwo nàdi be yeaɖe ɖa le mɔ̃ dzi."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Nyatakakawo"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Tsɔ wò asifivia da ɖe nua dzi ne nàkpɔ eŋutinyatakakawo."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Tsɔ wò asifivia da ɖe nua dzi ne nàkpɔ eŋutinyatakakawo."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Tia Nudaɖemɔ̃dziƒe"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Tia mɔ̃dzikotoku si me wòada $(^NameDA) ɖe mɔ̃a dzi le."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Tia Nuɖelemɔ̃dziƒe"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Tia mɔ̃dzikotoku si me wòaɖe $(^NameDA) le mɔ̃a dzi le."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Ele edam ɖe mɔ̃a dzi"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Taflatsɛ lala, ele $(^NameDA) dam ɖe mɔ̃a dzi."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Nudadaɖemɔ̃dzia wu enu"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Edae ɖe mɔ̃a dzi vɔ."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Mete Ŋu Dae Ɖe Mɔ̃a Dzi O"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Mete ŋu dae ɖe mɔ̃a dzi o."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Ele eɖem le mɔ̃a dzi"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Taflatsɛ lala, ele $(^NameDA) ɖem le mɔ̃a dzi."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Eɖee ɖa le mɔ̃a dzi vɔ"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Eɖee ɖa le mɔ̃a dzi keŋkeŋ."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Mete Ŋu Ɖee Ɖa Le Mɔ̃a Dzi O"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Mete ŋu ɖee ɖa le mɔ̃a dzi o."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Ele $(^NameDA) Dada Ɖe Mɔ̃a Dzi Nu Wum"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Eda $(^NameDA) ɖe wò kɔmpiuta dzi.$\r$\n$\r$\nTia Wu Enu ne nàwu nu dada ɖe mɔ̃a dzi nu."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Ele be nàtsi wò kɔmpiuta agbugbɔe asi hafi wòate ŋu awu $(^NameDA) dada ɖe mɔ̃a dzi nu. Àdi be yeagbugbɔe si fifia?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Ele $(^NameDA) Ɖeɖe Le Mɔ̃a Dzi Nu Wum"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "Eɖe $(^NameDA) ɖa le wò kɔmpiuta dzi.$\r$\n$\r$\nTia Wu Enu ne nàwu nua ɖeɖe le mɔ̃a dzi nu."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Ele be nàtsi wò kɔmpiuta agbugbɔe asi hafi wòate ŋu awu $(^NameDA) ɖeɖe le mɔ̃a dzi nu. Àdi be yeagbugbɔe si fifia?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Gbugbɔe si fifia"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Medi be nye ŋutɔ mava tsii emegbe"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Wɔe $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Eŋutimɔfiame Nedze"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Wu Enu"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Tia Nu Veviwo Ƒe Mɔ̃dzikotoku"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Tia $(^NameDA) eʋuʋu kaba dzesiwo ƒe  Mɔ̃dzikotoku."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Tia Mɔ̃dzikotoku si me nàdi be dɔwɔnua ƒe eʋuʋu kaba dzesiwo nanɔ. Àte ŋu aŋlɔ ŋkɔ bubu atsɔ awɔ mɔ̃dzikotoku bubu."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Megada eʋuʋu kaba dzesiwo ɖi o"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Ɖe $(^NameDA) Ɖa"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Ɖe $(^NameDA) ɖa le wò kɔmpuita dzi."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Èka ɖe edzi be yemegadi be yeada $(^Name) ɖe mɔ̃a dzi oa?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Èka ɖe edzi be yemegadi be yeaɖe $(^Name) ɖa le mɔ̃a dzi oa?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Tia Ezalãwo"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Tia ezalã siwo nàdi be wòada $(^NameDA) ɖe mɔ̃ dzi na."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Tiae nenye be wò ɖeka koe wòada $(^NameDA) ɖe mɔ̃a dzi na loo alo ne adae ɖe mɔ̃ dzi na kɔmpiuta sia zãlawo katã. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Dae ɖe mɔ̃a dzi na kɔmpiuta sia zãlawo katã"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Dae ɖe mɔ̃ dzi na nye ɖeka ko"
!endif
