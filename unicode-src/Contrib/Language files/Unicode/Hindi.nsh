;Language: Hindi (1081)
;By Yeswant Gogineni,Vrutti Vyas,Kunjan Sanghavi,Avinash Vutukuri,Anjali Vartak,Kiran Bartakke.

!insertmacro LANGFILE "Hindi" "हिन्दी"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) सेटअप विज़ार्ड में आपका स्वागत है"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "यह जादूगरी डॉलर की स्थापना $(^NameDA) के माध्यम से $\r$\n$\r$\nit लीख की सिफारिश की है कि आप सेटअप शुरू करने से पहले अन्य सभी आवेदनों को बंद. यह कर देगा यह करने के लिए बिना संभव प्रासंगिक प्रणाली फ़ाइलों को अद्यतन करने के लिए अपने कंप्यूटर $\r$\n$\r$\n$_CLICK रिबूट."
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "$(NameDA) में आपका स्वागत विज़ार्ड रद्द करें"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "यह जादूगरी डॉलर की स्थापना रद्द $(^NameDA) के माध्यम से गाइड . होगा $\r$\n$\r$\nBefore स्थापना रद्द करने शुरू, सुनिश्चित करें कि $(^NameDA) चल नहीं है बनाते हैं. $\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "लाइसेंस अनुबंध"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "$(^NameDA) स्थापित करने से पहले लाइसेंस शर्तों की समीक्षा करें"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "अगर आप इस समझौते की शर्तों को स्वीकार करें, मैं सहमत हूँ जारी रखने के लिए. आप समझौते को स्वीकार करने के लिए $(^NameDA) स्थापित करना चाहिए"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "अगर आप इस समझौते की शर्तों के चेक बॉक्स क्लिक करें, स्वीकार करते हैं. आप समझौते को स्वीकार करने के लिए $(^NameDA) स्थापित करना चाहिए. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "अगर आप इस समझौते की शर्तों को स्वीकार, नीचे पहला विकल्प चुनें. आप समझौते को स्वीकार करने के लिए $(^NameDA) स्थापित करना चाहिए. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "लाइसेंस अनुबंध"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "$(^NameDA) अप्रतिष्ठापित पहले लाइसेंस शर्तों की समीक्षा करें."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "अगर आप इस समझौते की शर्तों को स्वीकार करें, मैं सहमत हूँ जारी रखने के लिए. आप के लिए $(^NameDA) की स्थापना रद्द समझौता स्वीकार करना चाहिए."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "अगर आप इस समझौते की शर्तों के चेक बॉक्स क्लिक करें, स्वीकार करते हैं. आप के लिए $(^NameDA) की स्थापना रद्द समझौता स्वीकार करना चाहिए. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "अगर आप इस समझौते की शर्तों को स्वीकार, नीचे पहला विकल्प चुनें. आप के लिए $(^NameDA) की स्थापना रद्द समझौता स्वीकार करना चाहिए. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "प्रेस पेज के लिए समझौते के बाकी को देखने के नीचे."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "अवयव चुनें"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "चुनें कि किस डॉलर की विशेषताएं $(^NameDA) को आप स्थापित करना चाहते हैं"
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "अवयव चुनें"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "चुनें कि किस डॉलर की विशेषताएं $(^NameDA) आप स्थापना रद्द करना चाहते हैं."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "विवरण"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "स्थिति एक घटक के ऊपर अपने माउस को उसके विवरण देखने के लिए."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "स्थिति एक घटक के ऊपर अपने माउस को उसके विवरण देखने के लिए"
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "स्थान स्थापित चुनें"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "फ़ोल्डर जिसमें $(^NameDA) स्थापित करने के लिए चुनें."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "स्थान का चयन रद्द करें"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "फ़ोल्डर जिसमें से $(^NameDA) की स्थापना रद्द करने के लिए चुनें"
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "अधिष्ठापन"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "इंतजार करें जब तक $(^NameDA) स्थापित किया जा रहा है कृपया"
  ${LangFileString} MUI_TEXT_FINISH_TITLE "अधिष्ठापन पूर्ण"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "सेटअप सफलतापूर्वक पूरा किया गया."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "अधिष्ठापन अबोर्तेद"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "सेटअप सफलतापूर्वक पूरा नहीं किया गया."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "अप्रतिष्ठापित"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "कृपया प्रतीक्षा करें जब तक $(^NameDA) की स्थापना रद्द किया जा रहा है."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "पूरा स्थापना रद्द"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "स्थापना हटाने को सफलतापूर्वक पूरा किया गया."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "अप्रतिष्ठापित अबोर्तेद"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "स्थापना रद्द नहीं सफलतापूर्वक पूरा किया गया."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA) सेटअप विज़ार्ड पूरा"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) है अपने कंप्यूटर पर $\r$\n$\r$\nClick समाप्त इस विज़ार्ड बंद करने के लिए स्थापित किया गया है"
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "अपने कंप्यूटर के लिए $(^NameDA) की स्थापना पूर्ण आरंभ किया जाना चाहिए. क्या आप रिबूट करने के लिए अब चाहते हैं?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "पूरा $ (^NameDA) विज़ार्ड रद्द करें"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) आपके कंप्यूटर से $\r$\n$\r$\nClick समाप्त इस विज़ार्ड बंद करने के लिए रद्द किया गया है.."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "अपने कंप्यूटर के लिए $(^NameDA) के स्थापना रद्द पूरा आरंभ किया जाना चाहिए. क्या आप रिबूट करने के लिए अब चाहते हैं?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "अब रिबूट"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "मैं चाहता हूँ के लिए मैन्युअल बाद में रिबूट"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&रन $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&दिखाएँ रीडमी"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&खत्म"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "स्टार्ट मेनू फ़ोल्डर चुनें"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "कोई स्टार्ट मेनू के लिए फ़ोल्डर चुनें शॉर्टकट $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "स्टार्ट मेनू फ़ोल्डर जिसमें आप प्रोग्राम के शॉर्टकट बनाना चाहते हैं उसे चुनें. तुम भी एक नाम दर्ज करने के लिए एक नया फ़ोल्डर बना सकते हैं."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "शॉर्टकट बनाने मत करो"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "स्थापना रद्द करें $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA) अपने कंप्यूटर से निकालें."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "क्या आप के लिए $(^Name) सेटअप छोड़ना चाहते हैं?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "क्या आप के लिए $(^Name) छोड़ने स्थापना रद्द करना चाहते हैं? "
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "चुनें उपयोगकर्ता"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "चुनें जो उपयोगकर्ताओं के लिए आप के लिए $(^NameDA) स्थापित करना चाहते हैं."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "चुनें कि आप के लिए $(^NameDA) स्थापित करना चाहते हैं के लिए अपने आप केवल एक या इस कंप्यूटर के सभी उपयोगकर्ताओं के लिए. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "किसी को भी इस कंप्यूटर का इस्तेमाल करने के लिए स्थापित"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "स्थापित करें सिर्फ मेरे लिए"
!endif
