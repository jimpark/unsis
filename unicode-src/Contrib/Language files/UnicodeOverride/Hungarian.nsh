;Language: Hungarian (1038)

!insertmacro LANGFILE "Hungarian" "Magyar"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Üdvözöl a $(^NameDA) telepítője"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "A $(^NameDA) telepítése következik a számítógépre.$\r$\n$\r$\nJavasoljuk, hogy indítás előtt zárd be a futó alkalmazásokat. Így a telepítő a rendszer újraindítása nélkül tudod frissíteni a szükséges rendszerfájlokat.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Üdvözöl a $(^NameDA) Eltávolító Varázsló"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Ez a varázsló segít a $(^NameDA) eltávolításában.$\r$\n$\r$\nMielőtt elkezded az eltávolítást, győződj meg arról, hogy a $(^NameDA) nem fut.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Felhasználási szerződés"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "A $(^NameDA) telepítése előtt tekintsd át a szerződés feltételeit."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Ha elfogadod a szerződés valamennyi feltételét, kattints az Elfogadom gombra. A $(^NameDA) telepítésének folytatásához el kell fogadnod a szerződést."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Amennyiben elfogadod a feltételeket, jelöld be a jelölőnégyzeten. A $(^NameDA) telepítéséhez el kell fogadnod a feltételeket. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Amennyiben elfogadod a feltételeket, válaszd az első opciót. A $(^NameDA) telepítéséhez el kell fogadnod a feltételeket. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Felhasználási szerződés"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "A $(^NameDA) eltávolítása előtt tekintsd át a szerződés feltételeit."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Ha elfogadod a szerződés valamennyi feltételét, az Elfogadom gombbal folytathatod. A $(^NameDA) eltávolításához el kell fogadnod a szerződést."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Amennyiben elfogadod a feltételeket, jelöld be a jelölőnégyzeten. A $(^NameDA) eltávolításához el kell fogadnod a feltételeket. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Amennyiben elfogadod a feltételeket, válaszd az első opciót. A $(^NameDA) eltávolításához el kell fogadnod a feltételeket. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "A PageDown gomb megnyomásával láthatod a szerződés folytatását."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Összetevők kiválasztása"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Válaszd ki, hogy a $(^NameDA) mely funkcióit kívánod telepíteni."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Összetevők kiválasztása"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Válaszd ki, hogy a $(^NameDA) mely funkcióit kívánod eltávolítani."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Leírás"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Vidd rá az egeret az összetevőre, hogy megtekinthesd a leírását."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Vidd rá az egeret az összetevőre, hogy megtekinthesd a leírását."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Telepítési hely kiválasztása"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Válaszd ki a $(^NameDA) telepítésének mappáját."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Telepítési hely kiválasztása"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Válaszd ki a $(^NameDA) telepítésének mappáját."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Telepítési folyamat"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Kis türelmet, a $(^NameDA) telepítése folyamatban van."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Telepítés befejeződött"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "A telepítés sikeresen befejeződött."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "A telepítés megszakadt"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "A telepítés sikertelen volt."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Eltávolítási folyamat"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Kis türelmet a $(^NameDA) eltávolításáig."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Az eltávolítás befejeződött"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Az eltávolítás sikeresen befejeződött."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Az eltávolítás megszakadt"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Az eltávolítás sikertelen volt."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "A $(^NameDA) telepítése megtörtént."
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "A $(^NameDA) telepítése megtörtént.$\r$\n$\r$\nA telepítő bezárásához kattints a Befejezés gombra."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "A $(^NameDA) telepítésének befejezéséhez újra kell indítani a rendszert. Most akarod újraindítani?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "A $(^NameDA) eltávolítás varázslójának befejezése."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "A $(^NameDA) eltávolítása sikeresen befejeződött.$\r$\n$\r$\nA Finish-re kattintva bezárul ez a varázsló."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "A számítógépet újra kell indítani, hogy a $(^NameDA) eltávolítása teljes legyen. Akarod most újraindítani a rendszert?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Most indítom újra"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Később fogom újraindítani"
  ${LangFileString} MUI_TEXT_FINISH_RUN "$(^NameDA) futtatása"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "A Readme fájl megjelenítése"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Befejezés"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Start menü mappa kijelölése"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Start menü mappa kijelölése a program parancsikonjaihoz."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Jelölj ki egy mappát a Start menüben, melybe a program parancsikonjai lesznek elhelyezve. Beírhatsz új mappa nevet is."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Nincs parancsikon elhelyezés"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "A $(^NameDA) Eltávolítása."
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "A $(^NameDA) eltávolítása következik a számítógépről."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Biztos, hogy ki akarsz lépni a $(^Name) Telepítőből?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Biztos, hogy ki akarsz lépni a $(^Name) Eltávolítóból?"
!endif
