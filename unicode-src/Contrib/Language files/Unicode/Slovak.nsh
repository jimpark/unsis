;Language: Slovak (1051)
;Translated by:
;  Kypec (peter.dzugas@mahe.sk)
;edited by:
;  Marián Hikaník (podnety@mojepreklady.net)
;  Ivan Masár <helix84@centrum.sk>, 2008.

!insertmacro LANGFILE "Slovak" "Slovenčina"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Vitajte v sprievodcovi inštaláciou programu $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Tento sprievodca vás prevedie inštaláciou programu $(^NameDA).$\r$\n$\r$\nPred začiatkom inštalácie sa odporúča ukončiť všetky ostatné programy. Tým umožníte aktualizovanie systémových súborov bez potreby reštartovať váš počítač.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Vitajte v sprievodcovi odinštalovaním programu $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Tento sprievodca vás prevedie procesom odinštalovania programu $(^NameDA).$\r$\n$\r$\nPred spustením procesu odinštalovania sa uistite, že program $(^NameDA) nie je práve aktívny.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Licenčná zmluva"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Pred inštaláciou programu $(^NameDA) si, prosím, preštudujte licenčné podmienky."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Ak súhlasíte s podmienkami zmluvy, kliknite na tlačidlo Súhlasím. Aby mohla inštalácia programu $(^NameDA) pokračovať, musíte odsúhlasiť licenčnú zmluvu."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ak súhlasíte s podmienkami zmluvy, zaškrtnite políčko uvedené nižšie. Aby mohla inštalácia  programu $(^NameDA) pokračovať, musíte odsúhlasiť licenčnú zmluvu. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ak súhlasíte s podmienkami zmluvy, označte prvú z možností uvedených nižšie. Aby mohla inštalácia programu $(^NameDA) pokračovať, musíte odsúhlasiť licenčnú zmluvu. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Licenčná zmluva"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Pred odinštalovaním programu $(^NameDA) si, prosím, preštudujte licenčné podmienky."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Ak súhlasíte s podmienkami zmluvy, kliknite na tlačidlo Súhlasím. Aby mohol proces odinštalovania programu $(^NameDA) pokračovať, musíte odsúhlasiť licenčnú zmluvu."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ak súhlasíte s podmienkami zmluvy, zaškrtnite políčko uvedené nižšie. Aby mohol proces odinštalovania programu $(^NameDA) pokračovať, musíte odsúhlasiť licenčnú zmluvu. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ak súhlasíte s podmienkami zmluvy, označte prvú z možností uvedených nižšie. Aby mohol proces odinštalovania programu $(^NameDA) pokračovať, musíte odsúhlasiť licenčnú zmluvu. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Stlačením klávesu Page Down posuniete text licenčnej zmluvy."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Výber súčastí programu"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Vyberte tie súčasti programu $(^NameDA), ktoré chcete nainštalovať."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Výber súčastí programu"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Vyberte tie súčasti programu $(^NameDA), ktoré chcete odinštalovať."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Popis"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Umiestnením kurzora myši nad názov súčasti zobrazíte jej popis."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Umiestnením kurzora myši nad názov súčasti zobrazíte jej popis."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Výber priečinka pre inštaláciu"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Vyberte priečinok, do ktorého chcete program $(^NameDA) nainštalovať."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Výber priečinka pre odinštalovanie"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Vyberte priečinok, z ktorého chcete program $(^NameDA) odinštalovať."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Inštalácia"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Počkajte, prosím, kým prebehne inštalácia programu $(^NameDA)."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Inštalácia dokončená"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Inštalácia bola úspešne dokončená."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Inštalácia prerušená"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Inštaláciu sa nepodarilo dokončiť."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Odinštalovanie"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Počkajte, prosím, kým prebehne odinštalovanie programu $(^NameDA)."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Odinštalovanie dokončené"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Odinštalovanie bolo úspešne dokončené."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Odinštalovanie prerušené"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Odinštalovanie sa nepodarilo dokončiť."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Dokončenie inštalácie programu $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Program $(^NameDA) bol nainštalovaný do vášho počítača.$\r$\nKliknite na tlačidlo Dokončiť a tento sprievodca sa ukončí."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Pre úplné dokončenie inštalácie programu $(^NameDA) je nutné reštartovať váš počítač. Chcete ho reštartovať ihneď?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Dokončenie procesu odinštalovania programu $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "Program $(^NameDA) bol odinštalovaný z vášho počítača.$\r$\n$\r$\nKliknite na tlačidlo Dokončiť a tento sprievodca sa ukončí."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Pre úplné dokončenie procesu odinštalovania programu $(^NameDA) je nutné reštartovať váš počítač. Chcete ho reštartovať ihneď?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Reštartovať teraz"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Reštartovať neskôr manuálne"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Spustiť program $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Zobraziť súbor s informáciami"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Dokončiť"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Výber priečinka v ponuke Štart"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Vyberte priečinok v ponuke Štart pre zástupcov programu $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Vyberte priečinok v ponuke Štart, v ktorom chcete vytvoriť zástupcov programu. Môžete tiež uviesť názov nového priečinka."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Nevytvárať zástupcov"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Odinštalovanie programu $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Odstránenie programu $(^NameDA) z vášho počítača."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Naozaj chcete ukončiť inštaláciu programu $(^Name)?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Naozaj chcete ukončiť proces odinštalovania programu $(^Name)?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Výber používateľov"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Vyberte, pre ktorých používateľov chcete nainštalovať program $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Vyberte, či chcete nainštalovať program $(^NameDA) iba pre seba alebo pre všetkých používateľov tohto počítača. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Nainštalovať pre všetkých používateľov tohto počítača"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Nainštalovať iba pre mňa"
!endif