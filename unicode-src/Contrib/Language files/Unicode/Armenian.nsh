;Language: Armenian (1067)
;Translation by Watchtower Bible and Tract Society

!insertmacro LANGFILE "Armenian" "Հայերեն"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Ձեզ ողջունում է $(^NameDA) տեղակայիչը"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Այս ծրագիրը կտեղադրվի $(^NameDA)-ը Ձեր համակարգչում։$\r$\n$\r$\nԽորհուրդ ենք տալիս փակել բոլոր աշխատող ծրագրերը։ Դա հնարավորություն կտա տեղադրումից հետո խուսափել համակարգչի վերամեկնարկումից։$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Ձեզ ողջունում է $(^NameDA)-ի ջնջման ծրագիրը"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Այս ծրագիրը կջնջի $(^NameDA)-ը Ձեր համակարգչից։$\r$\n$\r$\nՋնջելուց առաջ համոզվեք, որ $(^NameDA) ծրագիրը բացված չէ։$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Լիցենզավորման համաձայնագիր"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "$(^NameDA)-ը տեղադրելուց առաջ ծանոթացեք լիցենզավորման համաձայնագրին։"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Եթե ընդունում եք համաձայնագիրը, ապա սեղմեք $\"Համաձայն եմ$\"։$\r$\nԾրագիրը տեղադրելու համար պետք է ընդունեք համաձայնագիրը։"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Եթե ընդունում եք համաձայնագիրը, դրեք նիշը ներքևում։ Ծրագիրը տեղադրելու համար պետք է ընդունեք համաձայնագիրը։ $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Եթե ընդունում եք համաձայնագիրը, ընտրեք ներքոնշյալներից առաջինը։ Ծրագիրը տեղադրելու համար պետք է ընդունեք համաձայնագիրը։ $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Լիցենզավորման համաձայնագիր"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "$(^NameDA)-ը ջնջելուց առաջ ծանոթացեք լիցենզավորման համաձայնագրին։"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Եթե ընդունում եք համաձայնագիրը, սեղմեք $\"Համաձայն եմ$\" կոճակը։ Ջնջելու համար պետք է ընդունեք համաձայնագիրը։ $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Եթե ընդունում եք համաձայնագիրը, դրեք նիշը ներքևում։ Ջնջելու համար պետք է ընդունեք համաձայնագիրը։ $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Եթե ընդունում եք համաձայնագիրը, ընտրեք ներքոնշյալներից առաջինը։ Ջնջելու համար պետք է ընդունեք համաձայնագիրը։  $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Տեքստը կարդալու համար օգտագործեք կոճակներ՝ $\"PageUp$\" և $\"PageDown$\"։"
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Տեղադրվող ծրագրի բաղադրիչները"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Ընտրեք $(^NameDA)-ի բաղադրիչները, որոնք ցանկանում եք տեղադրել։"
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Ծրագրի բաղադրիչները"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Ընտրեք $(^NameDA)-ի բաղադրիչները, որոնք ցանկանում եք ջնջել։"
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Նկարագրությունը"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Մկնիկի սլաքը ուղղեք բաղադրիչի վրա՝ նկարագրությունը կարդալու համար։"
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Մկնիկի սլաքը ուղղեք բաղադրիչի վրա՝ նկարագրությունը կարդալու համար։"
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Տեղադրման կատալոգի ընտրություն"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Ընտրեք կատալոգը, որտեղ կտեղադրվի $(^NameDA)-ը։"
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Ջնջման կատալոգի ընտրություն"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Ընտրեք կատալոգը, որտեղից պետք է ջնջել $(^NameDA)-ը։"
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Ֆայլերը պատճենվում են"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Սպասեք, ընթանում է $(^NameDA)-ի ֆայլերի պատճենումը..."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Տեղադրումը ավարտվեց"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Տեղադրումը ավարտվեց հաջողությամբ։"
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Տեղադրումը ընդհատվել է։"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Տեղադրումը չի ավարտվել։"
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Ջնջվում է"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Սպասեք, ընթանում է $(^NameDA)-ի ֆայլերի ջնջումը..."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Ջնջումը ավարտված է"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Ծրագիրը հաջողությամբ ջնջվեց։"
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Ջնջման գործողությունը ընդհատվել է։"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Ծրագիրը ամբողջությամբ չի ջնջվել։"
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA)-ի տեղադրման աշխատանքի ավարտում"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA)-ը տեղադրվեց։$\r$\n$\r$\nՍեղմեք $\"Ավարտել$\" կոճակը՝ տեղակայիչը փակելու համար։"
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "$(^NameDA)-ի տեղադրումը ավարտելու համար պահանջվում է համակարգչի վերամեկնարկում։ Վերամեկնարկե՞լ։"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "$(^NameDA)-ի ջնջման գործողության ավարտում "
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) ծրագիրը ջնջվել է Ձեր համակարգչից։ $\r$\n$\r$\nՍեղմեք $\"Ավարտել $\" կոճակը՝ ծրագրից դուրս գալու համար։"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "$(^NameDA)-ի ջնջումը ավարտելու համար պահանջվում է համակարգչի վերամեկնարկում։ Վերամեկնարկե՞լ։"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Այո, վերամեկնարկել համակարգիչը։"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Ոչ, ես կվերամեկնարկեմ ավելի ուշ։"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Բացել$(^NameDA)-ը"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Ցույց տալ ReadMe ֆայլը"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Ավարտել"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Կատալոգ՝ $\"Start$\" ընտրացանկում"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Ընտրեք $\"Start$\"-ի կատալոգը՝ ծրագրի պիտակների համար"
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Ընտրեք  $\"Start$\"-ի կատալոգը, որտեղ կստեղծվեն ծրագրի պիտակները։"
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Չստեղծել պիտակներ"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "$(^NameDA)-ի ջնջում"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA)-ը ջնջվում է համակարգչից։"
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Կանգնեցնե՞լ $(^Name)-ի տեղադրումը։"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Կանգնեցնե՞լ $(^Name)-ի ջնջումը։"
!endif
