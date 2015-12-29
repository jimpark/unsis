;Language: Estonian (1061)
;Translated by johnny izzo (izzo@hot.ee)

!insertmacro LANGFILE "Estonian" "Eesti keel"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) installeerimine!"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "See abiline aitab installeerida $(^NameDA).$\r$\n$\r$\nEnne installeerimise alustamist on soovitatav kõik teised programmid sulgeda, see võimaldab teatud süsteemifaile uuendada ilma arvutit taaskäivitamata.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "$(^NameDA) kustutamine!"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "See programm aitab kustutada $(^NameDA).$\r$\n$\r$\nEnne kustutamist vaata, et $(^NameDA) oleks suletud.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Litsentsileping"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Enne $(^NameDA) installeerimist vaata palun üle litsentsileping."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Kui sa oled lepingu tingimustega nõus, vali jätkamiseks Nõustun. $(^NameDA) installeerimiseks pead sa lepinguga nõustuma."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kui nõustud lepingu tingimustega, vali allolev märkeruut. $(^NameDA) installeerimiseks pead lepinguga nõustuma. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kui nõustud lepingu tingimustega, märgi allpool esimene valik. $(^NameDA) installeerimiseks pead lepinguga nõustuma. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Litsentsileping"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Enne $(^NameDA) kustutamist vaata palun litsentsileping üle."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Kui sa oled lepingu tingimustega nõus, vali jätkamiseks Nõustun. $(^NameDA) kustutamiseks pead sa lepinguga nõustuma."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kui nõustud lepingu tingimustega, vali allolev märkeruut. $(^NameDA) kustutamiseks pead lepinguga nõustuma. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kui nõustud lepingu tingimustega, märgi allpool esimene valik. $(^NameDA) kustutamiseks pead lepinguga nõustuma. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Vajuta Page Down, et näha ülejäänud teksti."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Vali komponendid"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Vali millised $(^NameDA) osad sa soovid installeerida."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Vali komponendid"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Vali millised $(^NameDA) osad sa soovid kustutada."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Kirjeldus"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Nihuta hiir komponendile, et näha selle kirjeldust."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Nihuta hiir komponendile, et näha selle kirjeldust."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Vali asukoht"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Vali kaust kuhu installeerida $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Vali asukoht"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Vali kaust kust $(^NameDA) kustutada."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Installeerin..."
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Palun oota kuni $(^NameDA) on installeeritud."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Programm installeeritud"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Installeerimine edukalt sooritatud."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Installeerimine katkestatud"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Installeerimine ebaõnnestus."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Kustutan..."
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Palun oota kuni $(^NameDA) on kustutatud."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Kustutamine lõpetatud"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Kustutamine edukalt lõpule viidud."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Kustutamine katkestatud"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Kustutamine ebaõnnestus."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA) installeerimise lõpetamine."
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) on arvutisse installeeritud.$\r$\n$\r$\nInstalleerimisprogrammi sulgemiseks vali Valmis."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "$(^NameDA) täielikuks installeerimiseks tuleb arvuti taaskäivitada. Kas soovid arvuti kohe taaskäivitada ?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "$(^NameDA) kustutamise lõpule viimine."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) on arvutist kustutatud.$\r$\n$\r$\nAbilise sulgemiseksöö vajuta Lõpeta."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "$(^NameDA) täielikuks kustutamiseks tuleb arvuti taaskäivitada. Kas soovid arvuti kohe taaskäivitada ?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Taaskäivita kohe"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Taaskäivitan hiljem käsitsi"
  ${LangFileString} MUI_TEXT_FINISH_RUN "Käivita $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "Ava LoeMind"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "Valmis"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Vali Start-menüü kaust"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Vali $(^NameDA) otseteede jaoks Start-menüü kaust."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Vali Start-menüü kaust, kuhu soovid paigutada programmi otseteed. Võid ka sisestada nime, et luua uus kaust."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Ära loo otseteid"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Kustuta $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Kustuta $(^NameDA) oma arvutist."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Oled sa kindel et soovid $(^Name) installeerimise katkestada?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Oled sa kindel et soovid $(^Name) kustutamise katkestada?"
!endif
