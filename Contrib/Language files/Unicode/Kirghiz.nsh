;Language: Kirghiz (1088)
;Translation updated by Baktybek Erkinbaev [berkinba@kgz.wtbts.net] (050424)

!insertmacro LANGFILE "Kirghiz" "Кыргызча"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Бул программа $(^NameDA) программасын компьютериңизге орнотот"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Бул программа $(^NameDA) программасын компьютериңизге орнотот.$\r$\n$\r$\nОрнотор алдында башка программаларды жаап коюңуз. Ошондо компьютерди өчүрүп-күйгүзбөстөн системалык файлдарды жаңыртууга шарт түзүлөт.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Бул программа $(^NameDA) программасын компьютериңизден өчүрөт"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Бул программа $(^NameDA) программасын компьютериңизден өчүрөт.$\r$\n$\r$\nӨчүрүү үчүн $(^NameDA) программасы компьютериңизде иштебеши керек.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Лицензиялык келишим"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "$(^NameDA) программасын орнотор алдында лицензиялык келишим менен таанышып чыгыңыз."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Келишим шарттарын кабыл алсаңыз, «Макулмун» дегенди басыңыз. Программаны орнотуу үчүн келишим шарттарын кабыл алуу зарыл."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Келишим шарттарын кабыл алсаңыз, төмөнкү кутучага белги коюңуз. Программаны орнотуу үчүн келишим шарттарын кабыл алуу зарыл. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Келишим шарттарын кабыл алсаңыз, төмөнкүлөрдүн биринчисин тандаңыз. Программаны орнотуу үчүн келишим шарттарын кабыл алуу зарыл. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Лицензиялык келишим"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "$(^NameDA) программасын өчүрөрдөн мурун, лицензиялык келишим менен таанышып чыгыңыз."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Келишим шарттарын кабыл алсаңыз, «Макулмун» дегенди басыңыз. Программаны өчүрүү үчүн келишим шарттарын кабыл алуу зарыл. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Келишим шарттарын кабыл алсаңыз, төмөнкү кутучага белги коюңуз. Программаны өчүрүү үчүн келишим шарттарын кабыл алуу зарыл. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Келишим шарттарын кабыл алсаңыз, төмөнкүлөрдүн биринчисин тандаңыз. Программаны өчүрүү үчүн келишим шарттарын кабыл алуу зарыл. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Келишимдин калган бөлүгүн көрүү үчүн «PageDown» дегенди басыңыз."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Программанын бөлүктөрүн тандаңыз"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "$(^NameDA) программасынын орноткуңуз келген бөлүктөрүн тандаңыз."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Программанын бөлүктөрүн тандаңыз"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "$(^NameDA) программасынын өчүргүңүз келген бөлүктөрүн тандаңыз."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Түшүндүрмө"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Бөлүктүн түшүндүрмөсүн окуу үчүн курсорду анын аталышына алып келиңиз."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Бөлүктүн түшүндүрмөсүн окуу үчүн курсорду анын аталышына алып келиңиз."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Орнотуу папкасын тандаңыз"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "$(^NameDA) программасы орнотула турган папканы тандаңыз."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Өчүрүү папкасын тандаңыз"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "$(^NameDA) программасын өчүрүү үчүн ал жайгашкан папканы тандаңыз."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Орнотуу"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "$(^NameDA) программасы орнотулууда. Күтө туруңуз ..."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Орнотуу аяктады"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Орнотуу аяктады."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Орнотуу токтоп калды"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Орнотуу аяктаган жок."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Өчүрүү"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "$(^NameDA) программасы өчүрүлүүдө. Күтө туруңуз ..."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Өчүрүү аяктады"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Өчүрүү аяктады."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Өчүрүү токтоп калды"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Өчүрүү аяктаган жок."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA) программасын орнотууну аяктоо"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) программасы компьютериңизге орнотулду.$\r$\n$\r$\nОрнотуу программасынан чыгуу үчүн «Аяктады» дегенди басыңыз."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "$(^NameDA) программасын орнотууну аяктоо үчүн компьютерди өчүрүп-күйгүзүү керек. Азыр өчүрүп-күйгүзүлсүнбү?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "$(^NameDA) программасын өчүрүүнү аяктоо"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) программасы компьютериңизден өчүрүлдү.$\r$\n$\r$\nӨчүрүү программасынан чыгуу үчүн «Аяктады» дегенди басыңыз."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "$(^NameDA) программасын өчүрүүнү аяктоо үчүн компьютерди өчүрүп-күйгүзүү керек. Азыр өчүрүп-күйгүзүлсүнбү?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Азыр өчүрүп-күйгүзүлсүн"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Кийин өзүм өчүрүп-күйгүзөм"
  ${LangFileString} MUI_TEXT_FINISH_RUN "$(^NameDA) иштетилсин"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "ReadMe файлы көрсөтүлсүн"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "Аяктады"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "$\"Пуск$\" баскычынан папка тандаңыз"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Программанын эн-белгилерин жайгаштыруу үчүн, $\"Пуск$\" баскычынан папка тандаңыз."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "$\"Пуск$\" баскычынан программанын эн-белгилери жайгаша турган папканы тандаңыз. Же папканы башкача атасаңыз болот."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Эн-белгилери жаратылбасын"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "$(^NameDA) программасын өчүрүү"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA) программасын компьютерден өчүрүү."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Сиз чынында эле $(^Name) программасын орнотуудан баш тарткыңыз келеби?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Сиз чынында эле $(^Name) программасын өчүрүүдөн баш тарткыңыз келеби?"
!endif
