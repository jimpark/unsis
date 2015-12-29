;Language: Shona (1540)
;By Joost Verburg

!insertmacro LANGFILE "Shona" "Shona"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Wasvika panoita kuti ukwanise kuisa $(^NameDA) pakombiyuta"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Zviri apa zvichakubatsira kusvika wapedza kuisa $(^NameDA).$\r$\n$\r$\nZvakanaka kuti utange wavhara mamwe mapurogiramu ose usati watanga kuisa purogiramu yacho. Izvi zvichaita kuti zvive nyore kunatsurudza zvimwe zvinhu usina kumbodzima kombiyuta yako.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Wasvika panoita kuti ukwanise kubvisa $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Zviri apa zvichakubatsira kusvika wapedza kubvisa $(^NameDA).$\r$\n$\r$\nUsati watanga kubvisa purogiramu iyi, iva nechokwadi chokuti hausi kushandisa $(^NameDA).$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "License Agreement"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Tapota tanga wanyatsoverenga chibvumirano chokuishandisa usati watanga kuisa $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Kana uchibvumirana nazvo, baya pakanzi Ndinobvuma kuti uenderere mberi. Unofanira kubvumirana nezvirimo kuti ukwanise kuisa $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kana uchibvumirana nezviri muchibvumirano chokuishandisa, baya kabhokisi kari pasi apa. Unofanira kubvumirana nezvirimo kuti ukwanise kuisa $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kana uchibvuma zvataurwa muchibvumirano chokuishandisa, sarudza pekutanga pane zviri pazasi apa. Unofanira kubvumirana nezvirimo kuti ukwanise kuisa $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "License Agreement"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Tapota tanga wanyatsoverenga zviri muchibvumirano chokuishandisa usati watanga kubvisa $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Kana uchibvumirana nazvo, baya pakanzi Ndinobvuma kuti uenderere mberi. Unofanira kubvumirana nezvirimo kuti ukwanise kubvisa $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kana uchibvumirana nezviri muchibvumirano chokuishandisa, baya kabhokisi kari pasi apa. Unofanira kubvumirana nezvirimo kuti ukwanise kubvisa $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kana uchibvuma zvataurwa muchibvumirano chokuishandisa, sarudza pekutanga pane zviri pazasi apa. Unofanira kubvumirana nezvirimo kuti ukwanise kubvisa $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Dzvanya bhatani rakanzi Page Down kuti uone mamwe mashoko echibvumirano chokuishandisa."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Sarudza"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Sarudza kuti ndezvipi zvaunoda kuisa pane zvinhu zviri pa$(^NameDA)."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Sarudza"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Sarudza kuti ndezvipi zvaunoda kubvisa pane zvinhu zviri pa$(^NameDA)."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Tsanangudzo"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Nongedza pane chimwe chezviri apa kuti uone tsanangudzo yacho."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Nongedza pane chimwe chezviri apa kuti uone tsanangudzo yacho."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Sarudza Kwaunoda Kuiisira"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Sarudza folder raunoda kuti $(^NameDA) iende."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Sarudza Kwaunoda Kuibvisa"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Sarudza folder raunoda kuti $(^NameDA) ibviswe."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Yava Kuisa Pakombiyuta"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Tapota chimbomira $(^NameDA) pairi kumboiswa pakombiyuta."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Yapedza"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Kuisa purogiramu iyi pakombiyuta kwabudirira."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Kuisa purogiramu iyi pakombiyuta kwasiyirwa panzira"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Kuisa purogiramu iyi pakombiyuta kwakundikana."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Kubvisa"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Tapota chimbomira $(^NameDA) pairi kubviswa."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Yapedza"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Kubvisa purogiramu iyi pakombiyuta kwabudirira."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Kubvisa purogiramu iyi pakombiyuta kwasiyirwa panzira"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Kubvisa purogiramu iyi pakombiyuta kwakundikana."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Yapedza Kuisa $(^NameDA) Pakombiyuta"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) yaiswa pakombiyuta yako.$\r$\n$\r$\nBaya pakanzi Zvaita kuti uvhare."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Kombiyuta yako inofanira kumbodzimwa yobatidzwazve kuti ipedze kuisa $(^NameDA). Unoda kuzviita iye zvino here?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Kupedza Kubvisa $(^NameDA) Pakombiyuta"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) yabviswa pakombiyuta yako.$\r$\n$\r$\nBaya pakanzi Zvaita kuti uvhare."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Kombiyuta yako inofanira kumbodzimwa yobatidzwazve kuti ipedze kubvisa $(^NameDA). Unoda kuzviita iye zvino here?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Dzima nekubatidza iye zvino"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Ndinoda kuzodzima nokubatidza gare gare"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Vhura $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Vhura Mashoko Nezvepurogiramu Ino"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Zvaita"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Sarudza Kuti Yochengeterwa Mufolder Ripi Pane Ari PaStart Menu"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Sarudza Kuti Yochengetwa Mufolder Ripi Rokudimbudzira Re$(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Sarudza folder riri paStart Menu raunoda kuisira mapurogiramu okudimbudzira. Unogonawo kuisa zita kuti ugadzire rimwe folder idzva."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Usagadzire mafolder ekudimbudzira"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Bvisa $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Bvisa $(^NameDA) pakombiyuta yako."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Une chokwadi here chokuti uri kuda kumisa zvokuisa $(^Name) pakombiyuta?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Une chokwadi here chokuti uri kuda kumisa zvokubvisa $(^Name) pakombiyuta?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Sarudza Vanoshandisa Kombiyuta Iyi"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Sarudza kuti unoda kuti $(^NameDA) ishandiswe nevanhu vapi."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Sarudza kana uchida kuti iwe chete ushandise $(^NameDA) kana kuti vanhu vose vanoshandisa kombiyuta iyi. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Ita kuti munhu wose anoshandisa kombiyuta iyi akwanise kuivhura"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Ngaiiswe kuti ini chete ndikwanise kuivhura"
!endif
