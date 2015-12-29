;Language: Ukrainian (1058)
;By Yuri Holubow, http://www.Nash-Soft.com
;Correct by Osidach Vitaly (Vit_Os2)
;Corrections by Kohut Vadym

!insertmacro LANGFILE "Ukrainian" "Українська"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Вас вітає програма інсталяції $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Ця програма допоможе вам інсталювати $(^NameDA).$\r$\n$\r$\nРекомендується перед початком інсталяції закрити всі інші програми. Це дасть можливість оновити необхідні системні файли без перезавантаження комп'ютера.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Вас вітає програма видалення $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Ця програма допоможе вам видалити $(^NameDA).$\r$\n$\r$\nППеред початком видалення переконайтеся, що програма $(^NameDA) не запущена.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Ліцензійна угода"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Перед інсталяцією $(^NameDA), будь ласка, ознайомтеся з умовами ліцензійної угоди."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Якщо ви приймаєте умови цієї угоди, натисніть кнопку «Приймаю». Для інсталяції $(^NameDA) вам потрібно прийняти умови угоди."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Якщо ви приймаєте умови цієї угоди, клацніть пустий квадратик внизу. Для інсталяції $(^NameDA) вам потрібно прийняти умови угоди. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Якщо ви приймаєте умови цієї угоди, виберіть перший варіант внизу. Для інсталяції $(^NameDA) вам потрібно прийняти умови угоди. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Ліцензійна угода"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Перед видаленням $(^NameDA), будь ласка, ознайомтеся з умовами ліцензійної угоди."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Якщо ви приймаєте умови цієї угоди, натисніть кнопку «Приймаю». Для видалення $(^NameDA) вам потрібно прийняти умови угоди."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Якщо ви приймаєте умови цієї угоди, клацніть пустий квадратик внизу. Для видалення $(^NameDA) вам потрібно прийняти умови угоди. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Якщо ви приймаєте умови цієї угоди, виберіть перший варіант внизу. Для видалення $(^NameDA) вам потрібно прийняти умови угоди. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Щоб побачити весь текст угоди, натисніть клавішу Page Down."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Виберіть компоненти"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Виберіть компоненти $(^NameDA), які ви хочете інсталювати."
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Опис"
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Виберіть компоненти"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Виберіть компоненти $(^NameDA), які ви хочете видалити."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Щоб побачити опис компонента, наведіть на нього вказівник миші."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Щоб побачити опис компонента, наведіть на нього вказівник миші."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Виберіть папку для інсталяції"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Виберіть папку для інсталяції $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYSPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Виберіть папку для видалення"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Виберіть папку, з котрої слід видалити $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Виконується інсталяція"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Будь ласка, зачекайте, поки інсталюється $(^NameDA)."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Інсталяцію завершено"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Інсталяцію успішно завершено."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Інсталяцію перервано"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Інсталяцію не було завершено."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Видалення файлів"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Будь ласка, зачекайте, поки видаляється $(^NameDA)."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Видалення завершено"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Видалення успішно завершено."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Видалення перервано"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Видалення не було завершено."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Завершення інсталяції $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) інстальовано на ваш комп'ютер.$\r$\n$\r$\nНатисніть кнопку «Завершити», щоб закрити програму інсталяції."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Для завершення інсталяції $(^NameDA) комп'ютер потрібно перезавантажити. Перезавантажити зараз?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Завершується видалення $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) видалено з вашого комп'ютера.$\r$\n$\r$\nНатисніть кнопку «Завершити», щоб закрити програму інсталяції."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Для завершення видалення $(^NameDA) комп'ютер потрібно перезавантажити. Перезавантажити зараз?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Перезавантажити зараз"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Я перезавантажу комп'ютер пізніше"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Запустити $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Показати файл Readme"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Завершити"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Виберіть папку в меню «Пуск»"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Виберіть в меню «Пуск» папку для ярликів $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Виберіть в меню «Пуск» папку, в котрій ви хочете створити ярлики для цієї програми. Ви можете ввести ім'я, щоб створити нову папку."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Не створювати ярликів"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Видалити $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Видалити $(^NameDA) з вашого комп'ютера."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Вийти з програми інсталяції $(^Name)?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Вийти з програми видалення $(^Name)?"
!endif
