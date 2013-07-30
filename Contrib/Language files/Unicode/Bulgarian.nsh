;Language: Bulgarian (1026)
;Translated by Asparouh Kalyandjiev [acnapyx@sbline.net]
;Review and update from v1.63 to v1.68 by Plamen Penkov [plamen71@hotmail.com]
;Updated by Кирил Кирилов (DumpeR) [dumper@data.bg]
;

!insertmacro LANGFILE "Bulgarian" "български"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Добре дошъл в съветника за инсталиране на $(^NameDA)!"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Той ще инсталира $(^NameDA) на вашия компютър.$\r$\n$\r$\nПрепоръчва се да затворите всички други приложения, преди да продължиш. Това ще позволи на програмата да обнови някои системни файлове, без да се рестартира компютърът.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Добре дошъл в съветника за премахване на $(^NameDA)!"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Той ще ти помогне да премахнеш $(^NameDA) от своя компютър.$\r$\n$\r$\nПреди да продължиш, се увери, че програмата $(^NameDA) не е стартирана в момента.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Лицензионно споразумение"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Моля, запознай се с „Лицензионното споразумение“, преди да продължиш."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Ако приемаш условията на споразумението, щракни върху бутона „Съгласен“, за да продължиш. Трябва да приемеш споразумението, за да инсталираш $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ако приемаш условията на споразумението, сложи отметка в квадратчето по-долу. Трябва да приемеш споразумението, за да инсталираш $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ако приемаш условията на споразумението, избери първата опция по-долу. Трябва да приемеш споразумението, за да инсталираш $(^NameDA) $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Лицензионно споразумение"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Моля, запознай се с лицензните условия, преди да премахнеш $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Ако приемаш условията на споразумението, щракни върху бутона „Съгласен“, за да продължиш. Трябва да приемеш споразумението, за да премахнеш $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ако приемаш условията на споразумението, сложи отметка в квадратчето по-долу. Трябва да приемеш споразумението, за да премахнеш $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ако приемаш условията на споразумението, избери първата опция по-долу. Трябва да приемеш споразумението, за да премахнеш $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Щракни върху клавиша Page Down, за да видиш останалата част от споразумението."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Избиране на компоненти"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Избери кои компоненти на $(^NameDA) искаш да инсталираш."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Избиране на компоненти"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Избери кои компоненти на $(^NameDA) искаш да премахнеш."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Описание"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Постави курсора на мишката над определен компонент, за да видиш описанието му."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Постави курсора на мишката над определен компонент, за да видиш описанието му."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Избиране на папка за инсталиране"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Избери папката, в която да се инсталира $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Избиране на папка за премахване"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Избери папката, от която да се премахне $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Инсталиране"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Моля, изчакай, докато програмата $(^NameDA) се инсталира"
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Инсталирането е завършено"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Инсталирането завърши успешно."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Инсталирането беше прекратено"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Инсталирането не завърши успешно."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Премахване"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Моля, изчакай, докато програмата $(^NameDA) се премахва"
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Премахването е завършено"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Премахването завърши успешно."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Премахването прекратено"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Премахването не завърши успешно."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Приключване на съветника за инсталиране на $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "Инсталирането на $(^NameDA) е завършено.$\r$\n$\r$\Щракни върху бутона „Край“, за да затвориш съветника."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Компютърът трябва да бъде рестартиран, за да завърши инсталирането на $(^NameDA). Искаш ли да рестартираш сега?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Приключване на съветника за премахване на $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "Програмата $(^NameDA) беше премахната от твоя компютър.$\r$\n$\r$\nЩракни върху бутона „Край“, за да затвориш съветника."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Компютърът трябва да бъде рестартиран, за да завърши успешно премахването на $(^NameDA). Искаш ли да рестартираш сега?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Рестартирай сега"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Ще рестартирам по-късно"
  ${LangFileString} MUI_TEXT_FINISH_RUN "Стартирай $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "Покажи файла „Readme“"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Край"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Избиране на папка в менюто „старт“"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Избери папка в менюто „старт“ за преки пътища към програмата."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Избери папка в менюто „старт“, в която искаш да създаваш преки пътища към програмата. Също така може да въведеш име, за да създадеш нова папка."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Не създавай преки пътища"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Премахване на $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Премахване на $(^NameDA) от твоя компютър."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Сигурен ли си, че искаш да прекратиш инсталирането на $(^Name)?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Сигурен ли си, че искаш да прекратиш премахването на $(^Name)?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Избиране на потребители"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Избери за кои потребители искаш да инсталираш $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Избери дали искаш да инсталираш $(^NameDA) само за себе си или за всички потребители на този компютър. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Инсталиране за всички потребители на този компютър"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Инсталирай само за мене"
!endif
