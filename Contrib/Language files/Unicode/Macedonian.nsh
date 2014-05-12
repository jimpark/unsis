;Language: Macedonian (1071)
;By Sasko Zdravkin [wingman2083@yahoo.com]

!insertmacro LANGFILE "Macedonian" "Македонски"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Добредојдовте во програмата за инсталирање на $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Оваа програма ќе ве води низ инсталирањето на $(^NameDA).$\r$\n$\r$\nСе препорачува да ги затворите сите програми пред да започнете со инсталирање. Ова ќе ѝ овозможи на програмата за инсталирање да обнови некои системски датотеки без да го рестартира компјутерот.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Добредојдовте во програмата за деинсталирање на $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Оваа програма ќе ве води низ деинсталирањето на $(^NameDA).$\r$\n$\r$\nПред да го започнете деинсталирањето на $(^NameDA) проверете дали е исклучена програмата.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Договор за лиценца"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Ве молиме прочитајте го Договорот за лиценца пред да ја инсталирате програмата $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Ако ги прифаќате условите од Договорот, притиснете ,Се согласувам‘ за да продолжите. Морате да го прифатите Договорот за да ја инсталирате програмата $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ако ги прифаќате условите од Договорот, означете го квадратчето подолу. Морате да го прифатите Договорот за да ја инсталирате програмата $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ако ги прифаќате условите од Договорот, одберете ја првата опција подолу. Морате да го прифатите Договорот за да ја инсталирате програмата $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Договор за лиценца"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Ве молиме прочитајте го Договорот за лиценца пред да ја деинсталирате програмата $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Ако ги прифаќате условите од Договорот, притиснете ,Се согласувам‘ за да продолжите. Морате да го прифатите Договорот за да ја деинсталирате програмата $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ако ги прифаќате условите од Договорот, означете го квадратчето подолу. Морате да го прифатите Договорот за да ја деинсталирате програмата $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ако ги прифаќате условите од Договорот, одберете ја првата опција подолу. Морате да го прифатите Договорот за да ја деинсталирате програмата $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Притиснете ,Следна страница‘ за да го прочитате останатиот дел од Договорот."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Одберете компоненти"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Одберете кои работи од $(^NameDA) сакате да се инсталираат."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Одберете Компоненти"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Одберете кои работи од $(^NameDA) сакате да се деинсталираат."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Објаснување"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Однесете го курсорот до компонентата за да го видете нејзиното објаснение."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Однесете го курсорот до компонентата за да го видете нејзиното објаснение."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Одберете ја локацијата за инсталирање"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Одберете го директориумот каде што сакате да се инсталира $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Одберете ја локацијата за деинсталирање"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Одберете го директориумот од кој сакате да се деинсталира $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Инсталирање"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Ве молиме почекајте додека програмата $(^NameDA) се инсталира."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Инсталирањето е завршено"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Инсталирањето беше успешно."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Инсталаирањето е прекинато"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Инсталирањето не беше успешно завршено."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Деинсталирање"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Ве молиме почекајте додека програмата $(^NameDA) се деинсталира."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Деинсталирањето е завршено"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Деинсталирањето беше успешно."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Деинсталирањето е прекинато"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Деинсталирањето не беше успешно завршено."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Завршено е инсталирањето на програмата $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) е инсталирана на вашиот компјутер.$\r$\n$\r$\nПритиснете ,Крај‘ за да го завршите инсталирањето."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Вашиот компјутер мора да се рестартира за да заврши инсталирањето на програмата $(^NameDA). Дали сакате да го рестартирате сега?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Завршено е деинсталирањето на програмата $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) е деинсталирана од вашиот компјутер.$\r$\n$\r$\nПритиснете ,Крај‘ за да го завршите деинсталирањето."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Вашиот компјутер мора да се рестартира за да заврши деинсталирањето на програмата $(^NameDA). Дали сакате да го рестартирате сега?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Рестартирај сега"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Сакам да го рестартирам подоцна"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Изврши $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Отвори ,Прочитај ме‘"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Крај"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Одберете директориум за Старт Менито"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Одберете директориум во Старт Менито за креирање скратеница на $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Одберете го директориумот во Старт Менито во кој сакате да се креира скратеница за програмата. Исто така можете да внесете друго име за да се креира нов директориум."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Не креирај скратеница"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Деинсталирај $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Отстранете го $(^NameDA) од вашиот компјутер."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Навистина ли сакате да се откажете од инсталирањето на програмата $(^Name)?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Навистина ли сакате да се откажете од деинсталирањето на програмата $(^Name)?"
!endif
