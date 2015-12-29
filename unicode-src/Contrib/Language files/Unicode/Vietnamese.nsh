;Language: Vietnamese (1066)
;First translation by Clytie Siddall <clytie@riverland.net.au> 2008-06-22
;Revision by NGUYỄN Mạnh Hùng <loveleeyoungae@yahoo.com> 2010-01-25

!insertmacro LANGFILE "Vietnamese" "Tiếng Việt"

!ifdef MUI_WELCOMEPAGE
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TITLE "Chào mừng đến với chương trình cài đặt $(^NameDA)"
  ${LangFileString} MUI_TEXT_WELCOME_INFO_TEXT "Chương trình cài đặt sẽ hướng dẫn bạn cài đặt $(^NameDA).$\r$\n$\r$\nBạn nên đóng tất cả các chương trình khác trước khi bắt đầu cài đặt. Điều này giúp việc cập nhật các tập tin hệ thống có thể thực hiện được mà không cần phải khởi động lại máy tính.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_UNWELCOMEPAGE
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TITLE "Chào mừng đến với chương trình gỡ bỏ $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_WELCOME_INFO_TEXT "Chương trình gỡ bỏ sẽ hướng dẫn bạn gỡ bỏ $(^NameDA).$\r$\n$\r$\nTrước khi bắt đầu gỡ bỏ, hãy chắc chắn rằng $(^NameDA) đang không chạy.$\r$\n$\r$\n$_CLICK"
!endif

!ifdef MUI_LICENSEPAGE
  ${LangFileString} MUI_TEXT_LICENSE_TITLE "Thỏa thuận bản quyền"
  ${LangFileString} MUI_TEXT_LICENSE_SUBTITLE "Vui lòng xem xét các điều khoản của thỏa thuận về bản quyền trước khi cài đặt $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM "Nếu bạn chấp nhận các điều khoản của thỏa thuận, hãy nhấn “Tôi đồng ý” để tiếp tục. Bạn phải chấp nhận thỏa thuận để cài đặt $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Nếu bạn chấp nhận các điều khoản của thỏa thuận, hãy nhấn ô bên dưới. Bạn phải chấp nhận thỏa thuận để cài đặt $(^NameDA). $_CLICK"
  ${LangFileString} MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Nếu bạn chấp nhận các điều khoản của thỏa thuận, hãy chọn ô đầu tiên bên dưới. Bạn phải chấp nhận thỏa thuận để cài đặt $(^NameDA). $_CLICK"
!endif

!ifdef MUI_UNLICENSEPAGE
  ${LangFileString} MUI_UNTEXT_LICENSE_TITLE "Thỏa thuận bản quyền"
  ${LangFileString} MUI_UNTEXT_LICENSE_SUBTITLE "Xin vui lòng xem xét các điều khoản bản quyền trước khi gỡ bỏ $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM "Nếu bạn chấp nhận các điều khoản của thỏa thuận, hãy nhấn “Tôi đồng ý” để tiếp tục. Bạn phải chấp nhận thỏa thuận để gỡ bỏ $(^NameDA)."
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Nếu bạn chấp nhận các điều khoản của thỏa thuận, hãy nhấn ô bên dưới. Bạn phải chấp nhận thỏa thuận để gỡ bỏ $(^NameDA). $_CLICK"
  ${LangFileString} MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Nếu bạn chấp nhận các điều khoản của thỏa thuận, hãy chọn ô đầu tiên bên dưới. Bạn phải chấp nhận thỏa thuận để gỡ bỏ $(^NameDA). $_CLICK"
!endif

!ifdef MUI_LICENSEPAGE | MUI_UNLICENSEPAGE
  ${LangFileString} MUI_INNERTEXT_LICENSE_TOP "Ấn Page Down để xem phần còn lại của thỏa thuận."
!endif

!ifdef MUI_COMPONENTSPAGE
  ${LangFileString} MUI_TEXT_COMPONENTS_TITLE "Chọn thành phần"
  ${LangFileString} MUI_TEXT_COMPONENTS_SUBTITLE "Chọn các tính năng của $(^NameDA) mà bạn muốn cài đặt."
!endif

!ifdef MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_UNTEXT_COMPONENTS_TITLE "Chọn thành phần"
  ${LangFileString} MUI_UNTEXT_COMPONENTS_SUBTITLE "Chọn các tính năng của $(^NameDA) mà bạn muốn gỡ bỏ."
!endif

!ifdef MUI_COMPONENTSPAGE | MUI_UNCOMPONENTSPAGE
  ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Mô tả"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Rê chuột lên trên một thành phần để thấy mô tả của nó."
  !else
    ${LangFileString} MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Rê chuột lên trên một thành phần để thấy mô tả của nó."
  !endif
!endif

!ifdef MUI_DIRECTORYPAGE
  ${LangFileString} MUI_TEXT_DIRECTORY_TITLE "Chọn thư mục cài đặt"
  ${LangFileString} MUI_TEXT_DIRECTORY_SUBTITLE "Chọn thư mục để cài đặt $(^NameDA)."
!endif

!ifdef MUI_UNDIRECTORYPAGE
  ${LangFileString} MUI_UNTEXT_DIRECTORY_TITLE "Chọn thư mục gỡ bỏ"
  ${LangFileString} MUI_UNTEXT_DIRECTORY_SUBTITLE "Chọn thư mục để gỡ bỏ $(^NameDA)."
!endif

!ifdef MUI_INSTFILESPAGE
  ${LangFileString} MUI_TEXT_INSTALLING_TITLE "Cài đặt"
  ${LangFileString} MUI_TEXT_INSTALLING_SUBTITLE "Vui lòng đợi trong khi $(^NameDA) đang được cài đặt."
  ${LangFileString} MUI_TEXT_FINISH_TITLE "Cài đặt hoàn tất"
  ${LangFileString} MUI_TEXT_FINISH_SUBTITLE "Việc cài đặt đã hoàn tất thành công."
  ${LangFileString} MUI_TEXT_ABORT_TITLE "Cài đặt bị hủy"
  ${LangFileString} MUI_TEXT_ABORT_SUBTITLE "Việc cài đặt không hoàn tất thành công."
!endif

!ifdef MUI_UNINSTFILESPAGE
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_TITLE "Gỡ bỏ"
  ${LangFileString} MUI_UNTEXT_UNINSTALLING_SUBTITLE "Vui lòng đợi trong khi $(^NameDA) đang được gỡ bỏ."
  ${LangFileString} MUI_UNTEXT_FINISH_TITLE "Gỡ bỏ hoàn tất"
  ${LangFileString} MUI_UNTEXT_FINISH_SUBTITLE "Việc gỡ bỏ đã hoàn tất thành công."
  ${LangFileString} MUI_UNTEXT_ABORT_TITLE "Gỡ bỏ bị hủy"
  ${LangFileString} MUI_UNTEXT_ABORT_SUBTITLE "Việc gỡ bỏ không hoàn tất thành công."
!endif

!ifdef MUI_FINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_INFO_TITLE "Hoàn tất cài đặt $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) đã được cài đặt vào máy tính của bạn.$\r$\n$\r$\nNhấn “Hoàn thành” để đóng chương trình cài đặt."
  ${LangFileString} MUI_TEXT_FINISH_INFO_REBOOT "Máy tính của bạn phải được khởi động lại để hoàn tất việc cài đặt $(^NameDA). Bạn có muốn khởi động lại ngay không?"
!endif

!ifdef MUI_UNFINISHPAGE
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TITLE "Hoàn tất Gỡ bỏ $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) đã được gỡ bỏ khỏi máy tính của bạn.$\r$\n$\r$\nNhấn “Hoàn thành” để đóng trình trợ lí."
  ${LangFileString} MUI_UNTEXT_FINISH_INFO_REBOOT "Máy tính của bạn phải được khởi động lại để hoàn tất việc gỡ bỏ $(^NameDA). Bạn có muốn khởi động lại ngay không?"
!endif

!ifdef MUI_FINISHPAGE | MUI_UNFINISHPAGE
  ${LangFileString} MUI_TEXT_FINISH_REBOOTNOW "Khởi động lại ngay"
  ${LangFileString} MUI_TEXT_FINISH_REBOOTLATER "Tôi muốn khởi động lại sau"
  ${LangFileString} MUI_TEXT_FINISH_RUN "&Chạy $(^NameDA)"
  ${LangFileString} MUI_TEXT_FINISH_SHOWREADME "Hiện &Readme"
  ${LangFileString} MUI_BUTTONTEXT_FINISH "&Hoàn thành"  
!endif

!ifdef MUI_STARTMENUPAGE
  ${LangFileString} MUI_TEXT_STARTMENU_TITLE "Chọn thư mục Trình đơn Start"
  ${LangFileString} MUI_TEXT_STARTMENU_SUBTITLE "Chọn một thư mục trên Trình đơn Start để tạo lối tắt cho $(^NameDA)."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_TOP "Chọn thư mục trên Trình đơn Start mà bạn muốn tạo lối tắt cho chương trình. Bạn cũng có thể nhập tên để tạo thư mục mới."
  ${LangFileString} MUI_INNERTEXT_STARTMENU_CHECKBOX "Không tạo lối tắt"
!endif

!ifdef MUI_UNCONFIRMPAGE
  ${LangFileString} MUI_UNTEXT_CONFIRM_TITLE "Gỡ bỏ $(^NameDA)"
  ${LangFileString} MUI_UNTEXT_CONFIRM_SUBTITLE "Gỡ bỏ $(^NameDA) khỏi máy tính của bạn."
!endif

!ifdef MUI_ABORTWARNING
  ${LangFileString} MUI_TEXT_ABORTWARNING "Bạn có thật sự muốn hủy bỏ việc cài đặt $(^Name) không?"
!endif

!ifdef MUI_UNABORTWARNING
  ${LangFileString} MUI_UNTEXT_ABORTWARNING "Bạn có thật sự muốn ngưng việc gỡ bỏ $(^Name) không?"
!endif

!ifdef MULTIUSER_INSTALLMODEPAGE
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_TITLE "Chọn người dùng"
  ${LangFileString} MULTIUSER_TEXT_INSTALLMODE_SUBTITLE "Chọn người dùng mà bạn muốn cài đặt $(^NameDA)."
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_TOP "Chọn giữa việc cài đặt $(^NameDA) cho riêng bạn hoặc cho tất cả người dùng của máy tính này. $(^ClickNext)"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS "Cài đặt cho bất kì người nào sử dụng máy tính này"
  ${LangFileString} MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER "Chỉ cài đặt cho riêng tôi"
!endif
