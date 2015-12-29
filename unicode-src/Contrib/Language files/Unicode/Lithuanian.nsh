;Language: Lithuanian (1063)
;By Vytautas Krivickas (Vytautas). Updated by Danielius Scepanskis (Daan daniel@takas.lt) 2004.01.09. Updated by Arvydas Šusterovas (arvydas.susterovas@gmail.com) 2010.07.15

!insertmacro LANGFILE "Lithuanian" "Lietuvių kalba"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Sveiki! Čia $(^NameDA) diegimo programa"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Ši programa padės įdiegti $(^NameDA).$\r$\n$\r$\nPrieš diegiant rekomenduotina baigti darbą su šiuo metu paleistomis programomis. Taip bus galima atnaujinti visus reikalingus sistemos failus nepaleidžiant kompiuterio iš naujo.$\r$\n$\r$\n"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Sveiki! Čia $(^NameDA) šalinimo programa."
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Ši programa padės pašalinti $(^NameDA).$\r$\n$\r$\n Prieš šalinant reikia įsitikinti, kad $(^NameDA) nėra paleista.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Licencinė sutartis"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Prašome perskaityti licencinę sutartį prieš $(^NameDA) diegimą."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Jei jūs sutinkate su nurodytomis sąlygomis, spauskite „Sutinku“. Jūs privalote sutikti, jei norite įdiegti $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Jei jūs sutinkate su nurodytomis sąlygomis, padėkite varnelę tam skirtame laukelyje. Jūs privalote sutikti, jei norite įdiegti $(^NameDA). "
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Jei jūs sutinkate su nurodytomis sąlygomis, pasirinkite pirmą pasirinkimą esantį žemiau. Jūs privalote sutikti, jei norite įdiegti $(^NameDA). "
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Licencinė sutartis"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Prašome perskaityti sutartį prieš $(^NameDA) pašalinimą."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Jei jūs sutinkate su nurodytomis sąlygomis, spauskite „Sutinku“. Jūs privalote sutikti, jei norite pašalinti $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Jei jūs sutinkate su nurodytomis sąlygomis, padėkite varnelę tam skirtame laukelyje. Jūs privalote sutikti, jei norite pašalinti $(^NameDA). "
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Jei jūs sutinkate su nurodytomis sąlygomis, pasirinkite pirmą pasirinkimą esantį žemiau. Jūs privalote sutikti, jei norite pašalinti $(^NameDA)."
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Spauskite tolesnio puslapio klavišą ir perskaitykite visą sutartį."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Pasirinkite"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Pasirinkite kurias $(^NameDA) ypatybes įdiegti."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Pasirinkite"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Pasirinkite kurias $(^NameDA) ypatybes pašalinti."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Paaiškinimas"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Užveskite pelės žymeklį ant komponento ir pamatysite jo aprašymą."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Užveskite pelės žymeklį ant komponento ir pamatysite jo aprašymą."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Diegimo aplankas"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Pasirinkite aplanką, į kurį turi būti įdiegta $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Šalinimo aplankas"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Pasirinkite aplanką, iš kurio turi būti pašalinta $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Diegiama"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Prašome palaukti, kol diegiama programa $(^NameDA)."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Diegimas baigtas"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Diegimas buvo sėkmingas."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Diegimas nutrauktas"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Diegimas nebuvo sėkmingas."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Šalinama programa"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Prašome palaukti, kol $(^NameDA) bus pašalinta."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Programa pašalinta"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Programa pašalinta sėkmingai."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Šalinimas nutrauktas"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Šalinimas nebuvo sėkmingas."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Baigiamas darbas su  $(^NameDA) diegimo programa"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) įdiegta į kompiuterį.$\r$\n$\r$\nSpustelėkite mygtuką „Baigti“."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Kad būtų baigtas $(^NameDA) diegimas reikia iš naujo paleisti kompiuterį. Ar norite paleisti iš naujo dabar?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Baigiamas darbas su $(^NameDA) šalinimo programa."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) pašalinta iš kompiuterio.$\r$\n$\r$\nSpustelėkite mygtuką „Baigti“."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Kad būtų baigtas $(^NameDA) šalinimas reikia iš naujo paleisti kompiuterį. Ar norite paleisti iš naujo dabar?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Paleisti iš naujo dabar"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Vėliau pats paleisiu kompiuterį iš naujo"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Paleisti $(^NameDA) dabar"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Skaityti pradinę informaciją"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Baigti"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Pasirinkite Start Menu katalogą"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Pasirinkite Start Menu katalogą, kuriame bus sukurtos programos nuorodos."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Pasirinkite Start Menu katalogą, kuriame bus sukurtos programos nuorodos. Jūs taip pat galite sukurti naują katalogą."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Nekurti nuorodų"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Pašalinti $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Pašalinti $(^NameDA) iš  kompiuterio."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Ar tikrai nutraukti $(^Name) diegimą?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Ar tikrai nutraukti $(^Name) šalinimą?"
!endif
