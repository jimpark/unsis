;Language: Albanian (1052)
;Translation Besnik Bleta, besnik@programeshqip.org

!insertmacro LANGFILE "Albanian" "Shqip"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Instalimi i programit $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Mirë se erdhe në instalimin e programit $(^NameDA).$\r$\n$\r$\nKëshillohet të mbyllësh çdo program tjetër para se të nisësh Instalimin. Në këtë mënyrë mund të përditësohen kartelat e rëndësishme të sistemit pa u dashur të rinisë kompjuteri.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Çinstalimi i programit $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Mirë se erdhe në çinstalimin e programit $(^NameDA).$\r$\n$\r$\nPara se të nisësh çinstalimin, sigurohu që programi $(^NameDA) të mos jetë i hapur.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Marrëveshje license"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Të lutemi, shqyrto kushtet e licensës përpara se të instalosh$\r$\nprogramin $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Nëse i pranon kushtet e marrëveshjes, kliko Pranoj për të vazhduar.$\r$\nDuhet ta pranosh marrëveshjen për të instaluar $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Nëse i pranon kushtet e marrëveshjes, kliko kutinë më poshtë. Duhet ta pranosh marrëveshjen për të instaluar $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Nëse i pranon kushtet e marrëveshjes, zgjidh më poshtë mundësinë e parë. Duhet ta pranosh marrëveshjen për të instaluar $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Marrëveshje license"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Të lutemi, shqyrto kushtet e licensës përpara se të çinstalosh programin $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Nëse i pranon kushtet e marrëveshjes, kliko Pajtohem për të vazhduar. Duhet ta pranosh marrëveshjen për të çinstaluar $(^NameDA).."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Nëse i pranon kushtet e marrëveshjes, kliko kutinë më poshtë. Duhet ta pranosh marrëveshjen për të çinstaluar $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Nëse i pranon kushtet e marrëveshjes, zgjidh më poshtë mundësinë e parë. Duhet ta pranosh marrëveshjen për të çinstaluar $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Shtyp tastin Page Down për të parë pjesën e mbetur të marrëveshjes."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Zgjidh përbërësit"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Zgjidh cilat pjesë të programit $(^NameDA) dëshiron të instalohen."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Zgjidh përbërësit"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Zgjidh cilat pjesë të programit $(^NameDA) dëshiron të çinstalohen."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Përshkrimi"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Për të parë përshkrimin e një përbërësi, vendos mausin mbi të."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Për të parë përshkrimin e një përbërësi, vendos mausin mbi të."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Zgjidh vendin e instalimit"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Zgjidh dosjen ku do të instalohet $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Zgjidh vendin e çinstalimit"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Zgjidh dosjen nga e cila do të çinstalohet $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Po instalohet"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Të lutemi, prit ndërsa $(^NameDA) instalohet."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Instalim i plotësuar"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Instalimi përfundoi me sukses."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Instalim i ndërprerë"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Instalimi nuk përfundoi."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Po çinstalohet"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Të lutemi, prit ndërsa $(^NameDA) çinstalohet."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Çinstalim i plotësuar"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Çinstalimi përfundoi me sukses."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Çinstalim i ndërprerë"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Çinstalimi nuk përfundoi."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Po plotësohet instalimi i programit $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) u instalua në kompjuterin tënd.$\r$\nPër të mbyllur procesin, kliko Përfundo."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Kompjuteri duhet të rinisë që të plotësohet instalimi i $(^NameDA). A dëshiron ta rinisësh tani?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Po plotësohet çinstalimi i programit $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) u çinstalua nga kompjuteri yt.$\r$\n$\r$\nPër të mbyllur procesin, kliko Përfundo."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Kompjuteri duhet të rinisë që të plotësohet çinstalimi i $(^NameDA). A dëshiron ta rinisësh tani?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Rinise tani"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Dua ta rinis vetë më vonë"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Nis $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "&Shfaq Readme"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Përfundo"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Zgjidh një dosje menuje në Start"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Zgjidh një dosje menuje në Start për shkurtoren e $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Zgjidh një dosje menuje në Start, ku do të doje të krijoje shkurtoret për programin. Mund të krijosh edhe një dosje të re duke e emërtuar."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Mos krijo shkurtore"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Çinstalo $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Hiq programin $(^NameDA) nga kompjuteri yt."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "A je i sigurt që do të ndërpresësh instalimin e $(^Name)?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "A je i sigurt që do të ndërpresësh çinstalimin e $(^Name)?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Zgjidh përdoruesit"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Zgjidh përdoruesit që do t’u instalohet programi $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Vendos nëse do të instalosh programin $(^NameDA) vetëm për vete apo për të gjithë përdoruesit e këtij kompjuteri. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Instaloje për çdo përdorues të këtij kompjuteri"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Instaloje vetëm për mua"
!endif
