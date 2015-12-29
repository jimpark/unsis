;Language: Arabic (1025)
;Translation by asdfuae@msn.com
;updated by Rami Kattan

!insertmacro LANGFILE "Arabic" "العربية"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "اهلا بك في إعداد $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "سيساعدك هذا الإعداد في تثبيت $(^NameDA).$\r$\n$\r$\nمن المفضل ان تغلق جميع التطبيقات قبل البدء بالإعداد. فهذا سيتيح تجديد ملفات النظام دون الحاجة الى اعادة تشغيل الجهاز.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "اهلا بك في ازالة تثبيت $(^NameDA) "
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "سيساعدك هذا الإعداد في ازالة تثبيت $(^NameDA).$\r$\n$\r$\n قبل البدء بإزالة التثبيت، تأكد ان $(^NameDA) ليس قيد التشغيل.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "اتفاقية‏ الترخيص"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "يُرجى مراجعة اتفاقية‏ الترخيص قبل تثبيت $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "عند الموافقة على شروط الاتفاقية‏، انقر موافق للاستمرار. يجب الموافقة على الاتفاقية‏ لتثبيت $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "عند الموافقة على شروط الاتفاقية‏، انقر على مربع التأشير ادناه. يجب الموافقة على الاتفاقية‏ لتثبيت $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "عند الموافقة على شروط الاتفاقية، اختر الخيار الاول ادناه. يجب الموافقة على الاتفاقية لتثبيت $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "اتفاقية الترخيص"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "يرجى مراجعة اتفاقية الترخيص قبل ازالة تثبيت $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "عند الموافقة على شروط الاتفاقية، انقر موافق للاستمرار. يجب الموافقة على الاتفاقية لإزالة تثبيت $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "عند الموافقة على شروط الاتفاقية، انقر على مربع التأشير ادناه. يجب الموافقة على الاتفاقية لإزالة تثبيت $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "عند الموافقة على شروط الاتفاقية، اختر الخيار الاول ادناه. يجب الموافقة على الاتفاقية لإزالة تثبيت $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "اضغط على مفتاح صفحة للأسفل لرؤية باقي الاتفاقية."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "اختر المكونات"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "اختر ميزات $(^NameDA) التي تريد تثبيتها."
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "الوصف"
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "اختر المكونات"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "اختر ميزات $(^NameDA) التي تريد ازالة تثبيتها."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO ".ضع مؤشر الفأرة على احد المكونات لرؤية الوصف"
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "ضع مؤشر الفأرة على احد المكونات لرؤية الوصف."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "اختر موقع التثبيت"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "اختر المجلد التي تريد تثبيت $(^NameDA) فيه."
!endif

!ifdef MUI_UNDIRECTORYSPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "اختر موقع ازالة التثبيت"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "اختر المجلد التي تريد ازالة تثبيت منه $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "جاري التثبيت"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "يرجى الانتظار اثناء تثبيت $(^NameDA)."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "انتهى التثبيت"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "نجحت عملية الإعداد."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "توقف التثبيت"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "لم تنجح عملية الإعداد."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "ازالة التثبيت"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "يرجى الانتظار اثناء ازالة تثبيت$(^NameDA)."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "انتهت ازالة التثبيت"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "نجحت ازالة التثبيت."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "توقفت ازالة التثبيت"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "لم تنجح ازالة التثبيت."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "إنهاء إعداد $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "تمّ تثبيت $(^NameDA) على جهازك$\r$\n$\r$\nانقر انهاء لإغلاق الإعداد."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "يجب اعادة تشغيل الجهاز لإنهاء تثبيت $(^NameDA). هل تريد اعادة تشغيل جهازك الآن؟"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "تجري الآن ازالة تثبيت $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "تمّت ازالة تثبيت $(^NameDA) من الجهاز.$\r$\n$\r$\n انقر انهاء لإغلاق الإعداد."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "يجب اعادة تشغيل الجهاز لإنهاء ازالة تثبيت $(^NameDA). هل تريد اعادة تشغيل جهازك الآن؟"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "أعد التشغيل الآن"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "أرغب في إعادة تشغيل الجهاز في وقت لاحق"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&شغّل $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "اعرض Readme"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&انهاء"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "اختر مجلد قائمة ابدأ"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "اختر احد مجلدات قائمة ابدأ لاختصارات $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "اختر المجلد في قائمة ابدأ الذي ستضع فيه اختصارات البرنامج. يمكنك ايضا كتابة اسم لإنشاء مجلد جديد."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "لا تنشئ اختصارات"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "ازالة تثبيت $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "ازالة $(^NameDA) من الجهاز."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "هل انت متأكد انك تريد إغلاق إعداد $(^Name)؟"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "هل انت متأكد انك تريد إيقاف ازالة تثبيت $(^Name)؟"
!endif
