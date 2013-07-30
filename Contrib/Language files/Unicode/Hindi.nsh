;Language: Hindi (1081)
;By Yeswant Gogineni,Vrutti Vyas,Kunjan Sanghavi,Avinash Vutukuri,Anjali Vartak,Kiran Bartakke.

!insertmacro LANGFILE "Hindi" "हिन्दी"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) सेटअप में आपका स्वागत है"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "$(^NameDA) की स्थापना में सेटअप आपकी मदद करेगा. $\r$\n$\r$\nअच्छा होगा कि सेटअप शुरू करने से पहले आप बाकी सभी प्रोग्राम बंद कर दें. इस तरह आप ज़रूरी सिस्टम फाइल को अपडेट कर पाएँगे और आपको अपना कंप्यूटर दोबारा बूट करने की ज़रूरत भी नहीं पड़ेगी. $\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "$(NameDA) की स्थापना रद्द करने के लिए आपका स्वागत है"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "$(^NameDA) की स्थापना रद्द करने में सेटअप आपकी मदद करेगा. $\r$\n$\r$\nस्थापना रद्द करना शुरू करने से पक्का कर लीजिए कि $(^NameDA) चल तो नहीं रहा.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "लाइसेंस अनुबंध"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "$(^NameDA) स्थापित करने से पहले कृपया लाइसेंस शर्तों की समीक्षा करें"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "अगर आप इस समझौते की शर्तें स्वीकार करते हैं, तो जारी रखने के लिए मैं सहमत हूँ पर क्लिक कीजिए. $(^NameDA) स्थापित करने के लिए आपको समझौते की शर्तें स्वीकार करनी होंगी."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "अगर आप इस समझौते की शर्तें स्वीकार करते हैं, तो नीचे दिए चेक बॉक्स पर क्लिक कीजिए. $(^NameDA) स्थापित करने के लिए आपको समझौते की शर्तें स्वीकार करनी होंगी. $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "अगर आप समझौते की शर्तें स्वीकार करते हैं, तो नीचे दिया पहला विकल्प चुनिए. $(^NameDA) स्थापित करने के लिए आपको समझौते की शर्तें स्वीकार करनी होंगी. $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "लाइसेंस अनुबंध"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "$(^NameDA) की स्थापना रद्द करने से पहले लाइसेंस शर्तों की समीक्षा करें."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "अगर आप इस समझौते की शर्तें स्वीकार करते हैं, तो जारी रखने के लिए मैं सहमत हूँ पर क्लिक कीजिए. $(^NameDA) की स्थापना रद्द करने के लिए आपको समझौते की शर्तें स्वीकार करनी होंगी."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "अगर आप इस समझौते की शर्तें स्वीकार करते हैं, तो नीचे दिए चेक बॉक्स पर क्लिक कीजिए. $(^NameDA) की स्थापना रद्द करने के लिए आपको समझौते की शर्तें स्वीकार करनी होंगी. $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "अगर आप समझौते की शर्तें स्वीकार करते हैं, तो नीचे दिया पहला विकल्प चुनिए. $(^NameDA) की स्थापना रद्द करने के लिए आपको समझौते की शर्तें स्वीकार करनी होंगी. $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "समझौते का बाकी भाग देखने के लिए पेज डाउन दबाइए."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "अवयव चुनें"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "चुनें कि आप $(^NameDA) की कौन-सी खासियतें स्थापित करना चाहते हैं."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "अवयव चुनें"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "चुनें कि आप $(^NameDA) की कौन-सी खासियतों की स्थापना रद्द करना चाहते हैं."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "विवरण"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "किसी अवयव का विवरण देखने के लिए अपना माउस उस पर ले जाइए."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "किसी अवयव का विवरण देखने के लिए अपना माउस उस पर ले जाइए."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "स्थापना की जगह चुनें"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "वह फोल्डर चुनिए जहाँ आप $(^NameDA) स्थापित करना चाहते हैं."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "स्थापना रद्द करने की जगह चुनें"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "वह फोल्डर चुनिए जहाँ से आप $(^NameDA) की स्थापना रद्द करना चाहते हैं."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "स्थापित हो रहा है"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "कृपया $(^NameDA) के स्थापित होने तक इंतज़ार करें."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "स्थापना पूरा हो चुका"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "सेटअप सफलतापूर्वक पूरा किया गया."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "स्थापना बीच में रोक दी गयी"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "सेटअप सफलतापूर्वक पूरा नहीं किया गया."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "स्थापना रद्द हो रही है"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "कृपया $(^NameDA) की स्थापना रद्द होने तक इंतज़ार करें."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "स्थापना रद्द हो चुका है"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "स्थापना को सफलतापूर्वक रद्द कर दिया गया."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "स्थापना रद्द करना, बीच में रोक दिया गया"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "स्थापना रद्द करना, सफलतापूर्वक पूरा नहीं किया गया."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA) का सेटअप पूरा हो रहा है"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) को आपके कंप्यूटर पर इंस्टाल कर दिया गया है.$\r$\n$\r$\nसेटअप बंद करने के लिए समाप्त पर क्लिक कीजिए."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "$(^NameDA) की स्थापना पूर्ण करने के लिए आपको अपना कंप्यूटर दोबारा स्टार्ट करने की ज़रूरत है. क्या आप अभी अपना कंप्यूटर दोबारा स्टार्ट करना चाहते हैं?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "$(^NameDA) की स्थापना रद्द हो रही है"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) की स्थापना आपके कंप्यूटर से रद्द की जा चुकी है.$\r$\n$\r$\nसेटअप बंद करने के लिए समाप्त पर क्लिक कीजिए."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "$(^NameDA) की स्थापना पूरी तरह से रद्द करने के लिए आपको अपना कंप्यूटर दोबारा स्टार्ट करने की ज़रूरत है. क्या आप अभी अपना कंप्यूटर दोबारा स्टार्ट करना चाहते हैं?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "अभी दोबारा स्टार्ट करें"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "मैं बाद में खुद से दोबारा स्टार्ट कर लूँगा"
  ${LangFileString} MUI_TEXT_FINISH_RUN "$(^NameDA) &चलाएँ "
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "रीडमी &दिखाएँ"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&समाप्त"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "स्टार्ट मेनू फोल्डर चुनें"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "$(^NameDA) के शॉर्टकट के लिए स्टार्ट मेनू फोल्डर चुनें."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "वह स्टार्ट मेनू फोल्डर चुनें जिसमें आप प्रोग्राम के शॉर्टकट बनाना चाहते हैं. आप किसी नाम से एक नया फोल्डर भी बना सकते हैं."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "शॉर्टकट न बनाएँ"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "$(^NameDA) की स्थापना रद्द करें "
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA) अपने कंप्यूटर से निकालें."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "क्या आप वाकई में $(^Name) सेटअप छोड़ना चाहते हैं?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "क्या आप वाकई में $(^Name) की स्थापना रद्द करना बीच में बंद करना चाहते हैं? "
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "उपयोगकर्ता चुनें"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "चुनें कि आप किन उपयोगकर्ताओं के लिए $(^NameDA) स्थापित करना चाहते हैं."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "चुनें कि आप सिर्फ अपने लिए या इस कंप्यूटर के सभी उपयोगकर्ताओं के लिए $(^NameDA) स्थापित करना चाहते हैं. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "यह कंप्यूटर इस्तेमाल करनेवाले सभी के लिए स्थापित करें"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "सिर्फ मेरे लिए स्थापित करें"
!endif
