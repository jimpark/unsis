;Language: Myanmar (1109)
;By Joost Verburg

!insertmacro LANGFILE "Myanmar" "မြန်မာ"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) Setup မှ ကြိုဆိုပါတယ်"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "$(^NameDA) ကိုစက်ထဲ ဘယ်လိုထည့်သွင်းရမယ်ဆိုတာ Setup ကလမ်းညွှန်ပေးသွားပါလိမ့်မယ်။$\r$\n$\r$\nသင့်စက်ထဲ မထည့်သွင်းခင် ဖွင့်ထားတဲ့အရာအားလုံးကို ပိတ်ပါ။ ဒါမှသာ သင့်စက်ကို ပိတ်ပြီး ပြန်ဖွင့်စရာမလိုဘဲ အဆင်သင့် အသုံးပြုနိုင်မှာဖြစ်တယ်။$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "$(^NameDA) ကို စက်ထဲကနေ ပြန်ထုတ်ပစ်ပါမယ်။"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "အခု $(^NameDA) ကို စက်ထဲကနေ ပြန်ထုတ်ပစ်ဖို့ လမ်းညွှန်ပေးပါမယ်။$\r$\n$\r$\nစက်ထဲကနေ မထုတ်ခင် $(^NameDA) ကို ပိတ်ထားပါ။$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "လိုင်စင် သဘောတူညီချက်"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "$(^NameDA) ကို စက်ထဲ မထည့်သွင်းခင် လိုင်စင် သဘောတူညီချက်ကို ဖတ်ရှုပါ။"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "သဘောတူညီချက်ကို လက်ခံတယ်ဆိုရင် “သဘောတူ” ကိုနှိပ်ပါ။ $(^NameDA) ကိုထည့်သွင်းချင်တယ်ဆိုရင် သဘောတူညီချက်ကို လက်ခံရပါမယ်။"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "သဘောတူညီချက်ကို လက်ခံတယ်ဆိုရင် လေးထောင့်ကွက်မှာ အမှန်ခြစ်ပါ။ $(^NameDA) ကို ထည့်သွင်းချင်တယ်ဆိုရင် သဘောတူညီချက်ကို လက်ခံရပါမယ်။ $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "သဘောတူညီချက်ကို လက်ခံတယ်ဆိုရင် အောက်ဖော်ပြပါ ပထမတစ်ခုကို ရွေးချယ်ပါ။ $(^NameDA) ကို ထည့်သွင်းချင်တယ်ဆိုရင် သဘောတူညီချက်ကို လက်ခံရပါမယ်။ $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "လိုင်စင် သဘောတူညီချက"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "$(^NameDA) ကိုစက်ထဲကနေ ပြန်မထုတ်ခင် သဘောတူညီချက်ကို ဖတ်ရှုပါ။"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "သဘောတူညီချက်ကို လက်ခံတယ်ဆိုရင် “သဘောတူ” ကိုနှိပ်ပါ။ $(^NameDA) ကိုစက်ထဲကနေ ပြန်ထုတ်ချင်တယ်ဆိုရင် သဘောတူညီချက်ကို လက်ခံရပါမယ်။"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "သဘောတူညီချက်ကို လက်ခံတယ်ဆိုရင် လေးထောင့်ကွက်မှာ အမှန်ခြစ်ပါ။ $(^NameDA) ကိုစက်ထဲကနေ ပြန်ထုတ်ချင်တယ်ဆိုရင် သဘောတူညီချက်ကို လက်ခံရပါမယ်။ $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "သဘောတူညီချက်ကို လက်ခံတယ်ဆိုရင် အောက်ဖော်ပြပါ ပထမတစ်ခုကို ရွေးချယ်ပါ။ $(^NameDA) ကိုစက်ထဲကနေ ပြန်ထုတ်ချင်တယ်ဆိုရင် သဘောတူညီချက်ကို လက်ခံရပါမယ်။ $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "သဘောတူညီချက်အားလုံးကို ကြည့်ရှုနိုင်ရန် ကီးဘုတ်ရဲ့ ညာဘက်ခြမ်းရှိ Page Down ကို နှိပ်ပါ။"
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "ဒီပရိုဂရမ်ရဲ့ အစိတ်အပိုင်းတချို့ကို ရွေးချယ်ပါ"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "$(^NameDA) ရဲ့ အစိတ်အပိုင်းတချို့ကို စိတ်ကြိုက် ရွေးချယ်ထည့်သွင်းပါ။"
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "ဒီပရိုဂရမ်ရဲ့ အစိတ်အပိုင်းတချို့ကို ရွေးချယ်ပါ"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "$(^NameDA) ရဲ့ အစိတ်အပိုင်းတချို့ကို စိတ်ကြိုက် ရွေးချယ်ထုတ်ပစ်ပါ။"
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "ရှင်းလင်းဖော်ပြချက်"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "ပရိုဂရမ်အစိတ်အပိုင်းရဲ့ ရှင်းလင်းဖော်ပြချက်ကို သိချင်ရင် အဲဒီအပေါ်မှာ mouse ကို ထောက်ပါ။"
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "ပရိုဂရမ်အစိတ်အပိုင်းရဲ့ ရှင်းလင်းဖော်ပြချက်ကို သိချင်ရင် အဲဒီအပေါ်မှာ mouse ကို ထောက်ပါ။"
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "ထည့်သွင်းမယ့်နေရာ ရွေးချယ်ပါ"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "$(^NameDA) ကို ထည့်သွင်းမယ့် ဖိုင်တွဲ ရွေးချယ်ပါ။"
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "ထုတ်ပစ်မယ့်နေရာ ရွေးချယ်ပါ"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "$(^NameDA) ကို ထုတ်ပစ်မယ့် ဖိုင်တွဲ ရွေးချယ်ပါ။"
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "ထည့်သွင်းနေသည်"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "$(^NameDA) ကို ထည့်သွင်းနေစဉ် ခေတ္တစောင့်ပါ။"
  ${LangFileString} MUI_TEXT_FINISH_TITLE "ထည့်သွင်းပြီးသွားပါပြီ"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Setup အောင်မြင်စွာ ပြီးစီးသွားပါပြီ"
  ${LangFileString} MUI_TEXT_ABORT_TITLE "ထည့်သွင်းခြင်း ဖျက်သိမ်း"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Setup အောင်မြင်ပြီးစီးခြင်း မရှိပါ။"
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "စက်ထဲကနေ ထုတ်ပစ်နေသည်"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "$(^NameDA) ကို စက်ထဲက ထုတ်နေစဉ် ခေတ္တစောင့်ပါ။"
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "စက်ထဲကနေ ထုတ်ပစ်ခြင်း ပြီးပါပြီ"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "အောင်မြင်စွာ ထုတ်ပစ်လိုက်ပါပြီ"
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "ထုတ်ပစ်ခြင်း ဖျက်သိမ်း"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "စက်ထဲကနေ ထုတ်ပစ်ခြင်း အောင်မြင်ပြီးစီးခြင်း မရှိပါ။"
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA) Setup ကို အပြီးသတ်နေပါတယ်"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "ကွန်ပျူတာထဲ $(^NameDA) ထည့်သွင်းပြီးပါပြီ။$\r$\n$\r$\n“ပြီးသွားပြီ” (Finish) ကို နှိပ်ပါ။"
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "သင့်ကွန်ပျူတာထဲ $(^NameDA)  ထည့်သွင်းတာကို အပြီးသတ်ဖို့ စက်ကို ပိတ်ပြီး ပြန်ဖွင့်ပါ။ အခု လုပ်ဆောင်ချင်ပါသလား။"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "$(^NameDA) ကိုအပြီးသတ်ထုတ်ပစ်နိုင်ဖို့ ဆက်လုပ်ဆောင်နေ"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "ကွန်ပျူတာထဲကနေ $(^NameDA) ကို ထုတ်ပစ်လိုက်ပါပြီ။$\r$\n$\r$\n“ပြီးသွားပြီ” (Finish)  ကို နှိပ်ပါ။"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "$(^NameDA)  ထုတ်ပစ်တာကို အပြီးသတ်ဖို့ စက်ကို ပိတ်ပြီး ပြန်ဖွင့်ရပါမယ်။ အခု လုပ်ဆောင်ချင်ပါသလား။"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "စက်ကို ပိတ်ပြီးပြန်ဖွင့်မယ်"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "နောက်မှ လုပ်ဆောင်မယ်"
  ${LangFileString} MUI_TEXT_FINISH_RUN "$(^NameDA) ဖွင့်ပါ (&R)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "Readme ကို ဖွင့်ပေးပါ (&S)"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "ပြီးသွားပြီ (&F)"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Start Menu ဖိုင်တွဲကိုရွေးချယ်ပါ"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Start Menu ဖိုင်တွဲကို $(^NameDA) ရဲ့ shortcut အနေနဲ့ရွေးချယ်မယ်။"
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP " ဒီပရိုဂရမ်အတွက် shortcut ဖန်တီးဖို့ Star Menu ထဲက ဖိုင်တွဲတစ်ခုကို ရွေးချယ်ပါ။ နာမည်တစ်ခု ပေးပြီး ဖိုင်တွဲအသစ်တစ်ခု ဖွဲ့ပြီးတော့လည်း လုပ်ဆောင်နိုင်ပါတယ်။"
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "shortcut မဖန်တီးပါနဲ့"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "$(^NameDA) ကို ထုတ်ပစ်မယ်"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA) ကို ကွန်ပျူတာထဲကနေ ထုတ်ပစ်မယ်။"
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "$(^Name) Setup ကို ရပ်တန့်လိုက်ချင်တာ သေချာသလား။"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "$(^Name) ကို စက်ထဲကနေ ထုတ်ပစ်ခြင်းကို ရပ်တန့်လိုက်ချင်တာ သေချာသလား။"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "အသုံးပြုမယ့်သူတွေကို ရွေးချယ်ပါ။"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "$(^NameDA) ကို ထည့်သွင်းပေးချင်တဲ့ အသုံးပြုသူတွေကို ရွေးချယ်ပါ။"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "ဒီကွန်ပျူတာကို သုံးတဲ့ တခြားသူတွေအတွက်ဖြစ်စေ၊ ကိုယ်တိုင်အတွက်ဖြစ်စေ ဒီ $(^NameDA) ကိုထည့်သွင်းဖို့ ရွေးချယ်ပါ $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "ဒီကွန်ပျူတာကို အသုံးပြုနေသူအားလုံးအတွက် ထည့်သွင်းမယ်"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "ကိုယ်ပိုင်သုံးဖို့အတွက်ပဲ ထည့်သွင်းမယ်။"
!endif
