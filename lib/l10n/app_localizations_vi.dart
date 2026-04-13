// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get back => 'trở lại';

  @override
  String get saveChangesTitle => 'Lưu thay đổi';

  @override
  String get channels_section_title => 'Mới trong ứng dụng';

  @override
  String get go_to_groups_page => 'Đi tới trang nhóm';

  @override
  String sharedViaApp(Object appName) {
    return '*Shared via $appName*';
  }

  @override
  String downloadAndroid(Object url) {
    return 'Download on Android 👈 $url';
  }

  @override
  String downloadIOS(Object url) {
    return 'Download on iOS 👈 $url';
  }

  @override
  String get shareMessageTitle => 'Share message';

  @override
  String get shareMessageSubtitle => 'Choose how to share this message';

  @override
  String get shareMessageOptionLinkTitle => 'Share link';

  @override
  String get shareMessageOptionLinkSubtitle => 'Send a direct link to the message';

  @override
  String get shareMessageOptionContentTitle => 'Share text and media';

  @override
  String get shareMessageOptionContentSubtitle => 'Send the message text and media';

  @override
  String get channels_section_description => 'Một khu vực mới dành cho các kênh WhatsApp và Telegram với video, hình ảnh và thông tin cập nhật – tất cả nội dung thú vị nhất ở cùng một nơi.';

  @override
  String get newMessages => 'Tin nhắn mới';

  @override
  String get addArea => 'Thêm khu vực';

  @override
  String get removeArea => 'Xóa khu vực';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Bạn có chắc chắn muốn xóa $area khỏi các khu vực đã chọn của mình không?';
  }

  @override
  String get channels => 'Kênh';

  @override
  String get contactUsSuccessTitle => 'Đã gửi thành công ✅';

  @override
  String get contactUsSuccessMessage => 'Cảm ơn bạn! Chúng tôi đã nhận được tin nhắn của bạn và sẽ liên hệ lại với bạn sớm nhất có thể.';

  @override
  String get selectCountry => 'Chọn quốc gia';

  @override
  String get areaManagmentTitle => 'Khu vực tiêu thụ tin tức';

  @override
  String get areaManagmentSubtitle => 'Quốc gia của tôi';

  @override
  String get sharedFromApp => 'Được chia sẻ từ';

  @override
  String get textCopied => 'Đã sao chép văn bản';

  @override
  String get queryIsEmpty => 'Truy vấn trống';

  @override
  String get queryIsEmptyTitle => 'Tìm kiếm trống rỗng.';

  @override
  String get areaWereRemoved => 'Khu vực đã được xóa thành công';

  @override
  String get areaWereAdded => 'Khu vực đã được thêm thành công';

  @override
  String get saveChangesMessage => 'Bạn có muốn lưu những thay đổi bạn đã thực hiện không?';

  @override
  String get busyLandingTitle => 'Chúng ta sắp hạ cánh rồi…';

  @override
  String get busyLandingSubtitle => 'Chúng tôi đang chuẩn bị tin tức của bạn';

  @override
  String get changeCountryTitle => 'Chúng ta nên chuyển sang nước nào?';

  @override
  String get changeCountrySubtitle => 'Khi bạn chọn quốc gia, tất cả nội dung trong ứng dụng sẽ cập nhật theo lựa chọn của bạn.';

  @override
  String get dailySummary => 'Tóm tắt hàng ngày';

  @override
  String get lastUpdated => 'Cập nhật lần cuối';

  @override
  String get saveChangesSubtitle => 'Bạn có muốn lưu những thay đổi bạn đã thực hiện không?';

  @override
  String get readMore => 'Đọc thêm';

  @override
  String get searchPageNoResultsPrefix => 'Không tìm thấy kết quả nào cho ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix => 'Không tìm thấy kết quả nào cho \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' trong danh mục này';

  @override
  String get toPowerOn => 'bật nguồn';

  @override
  String get notificationsOffTitle => 'Tắt thông báo';

  @override
  String get notificationsOffSubtitle => 'Có vẻ như quyền truy cập thông báo chưa được bật.';

  @override
  String get newArticles => 'Bài viết mới';

  @override
  String get home => 'nhà';

  @override
  String get changesApplyOnNextLaunch => 'Những thay đổi sẽ được áp dụng vào lần ra mắt ứng dụng tiếp theo.';

  @override
  String get enable => 'Kích hoạt';

  @override
  String get stayUpdatedWithLatestNews => 'Luôn cập nhật những tin tức mới nhất';

  @override
  String get enableNotifications => 'Bật thông báo';

  @override
  String get error_details => 'Chi tiết lỗi';

  @override
  String get error_title => 'Rất tiếc có gì đó không ổn';

  @override
  String get freeSearch => 'Tìm kiếm miễn phí';

  @override
  String get aiPageSubtitle => 'Tính năng này vẫn đang được phát triển \n đáng để kiểm tra lại sớm.';

  @override
  String get topicsSelectionTitle => 'Lựa chọn chủ đề tin tức';

  @override
  String get groups => 'Nhóm';

  @override
  String get aiPageTitle => 'Sắp ra mắt: bạn sẽ có thể trò chuyện với AI của chúng tôi về tin tức!';

  @override
  String get topicsSelectionSubtitle => 'Chọn chủ đề hoặc chủ đề phụ bạn muốn xem trong nguồn cấp dữ liệu của mình. Bạn luôn có thể thay đổi chúng ở đây.';

  @override
  String get failedToLoadTopics => 'Không tải được chủ đề';

  @override
  String get settingsNote => 'Bạn có thể chỉnh sửa cài đặt bất cứ lúc nào';

  @override
  String get lang => 'Ngôn ngữ';

  @override
  String get failed_to_load_data => 'Chúng tôi không thể tải dữ liệu. Vui lòng kiểm tra kết nối internet của bạn và thử lại.';

  @override
  String get changeLang => 'Thay đổi ngôn ngữ';

  @override
  String get notNow => 'Không phải bây giờ';

  @override
  String get notificationsPermissionRationale => 'Việc bật thông báo cho phép bạn cập nhật các tin tức quan trọng, cập nhật khẩn cấp và nội dung được cá nhân hóa – để bạn không bao giờ bỏ lỡ bất kỳ điều gì quan trọng đối với mình.';

  @override
  String get skipToSuggestedContent => 'Chuyển đến nội dung chúng tôi đã chọn cho bạn';

  @override
  String get lets_go => 'đi thôi';

  @override
  String get keepGoing => 'Tiếp tục đi!';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get save => 'Lưu';

  @override
  String get next => 'Tiếp theo';

  @override
  String get pleaseSelectLanguage => 'vui lòng chọn một ngôn ngữ';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Chọn ít nhất một chủ đề';

  @override
  String get notificationTitle => 'Bạn muốn cập nhật?';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get searchPageEmptySubtitle => 'Bạn muốn tìm kiếm gì?';

  @override
  String get searchPageEmptyTitle => 'Nhập từ khóa hoặc chủ đề để tìm kiếm';

  @override
  String get notificationSubTitle => 'Bạn có thể bật thông báo bật lên cho bất kỳ chủ đề nào mà bạn quan tâm.';

  @override
  String get whatIsInteresting => 'Điều bạn quan tâm';

  @override
  String get subTextWhatIsInteresting => 'Để chỉ gửi những gì thực sự phù hợp, trước tiên hãy đánh dấu những gì bạn quan tâm.';

  @override
  String get getStarted => 'Bắt đầu';

  @override
  String get try_again => 'Thử lại';

  @override
  String get allow => 'Cho phép';

  @override
  String get noPermissions => 'Không có quyền';

  @override
  String get solution_suggestions => 'Đề xuất giải pháp';

  @override
  String get allowNotifications => 'Cho phép thông báo';

  @override
  String get notifications => 'Thông báo';

  @override
  String get notificationsEnabled => 'Đã bật thông báo';

  @override
  String get notificationsDenied => 'Thông báo bị từ chối';

  @override
  String get pleaseWait => 'Vui lòng đợi';

  @override
  String get all => 'tất cả';

  @override
  String get cancel => 'Hủy bỏ';

  @override
  String get openSettings => 'Mở Cài đặt';

  @override
  String get subTextNotifications => 'Bạn có thể bật thông báo bật lên cho mọi chủ đề mà bạn quan tâm.';

  @override
  String get troubleshooting_tips => 'Mẹo khắc phục sự cố';

  @override
  String get welcome => 'Chào mừng bạn đến với ứng dụng tin tức, được cá nhân hóa dành riêng cho bạn!';

  @override
  String get continueReading => 'Tiếp tục đọc';

  @override
  String get share => 'Chia sẻ';

  @override
  String get area => 'Khu vực';

  @override
  String get chooseYourAreaHint => 'Chọn khu vực của bạn để nhận thông tin cập nhật tin tức được bản địa hóa';

  @override
  String get chooseYourAreaHintUnused => 'Chọn vùng tin tức bạn muốn.\nTrong ứng dụng, bạn cũng có thể chọn các quốc gia bổ sung.';

  @override
  String get chooseYourLangHint => 'Chọn ngôn ngữ của bạn, bạn luôn có thể thay đổi nó sau.';

  @override
  String get topics => 'chủ đề';

  @override
  String get chooseTopicsHint => 'Chọn chủ đề mà bạn quan tâm, bạn luôn có thể thay đổi chúng trong cài đặt.';

  @override
  String get categories => 'Danh mục';

  @override
  String get manageNotifications => 'Quản lý thông báo';

  @override
  String get languageAndRegion => 'Ngôn ngữ & khu vực';

  @override
  String get about => 'Giới thiệu';

  @override
  String get privacyPolicy => 'Chính sách bảo mật';

  @override
  String get contactUs => 'Liên hệ với chúng tôi';

  @override
  String get networkStatusPartialTitle => 'Sự cố máy chủ';

  @override
  String get networkStatusOfflineTitle => 'Không có kết nối internet';

  @override
  String get networkStatusPartialMessage => 'Chúng tôi có thể truy cập Internet nhưng không thể truy cập máy chủ.\\nHãy thử lại sau giây lát.';

  @override
  String get networkStatusOfflineMessage => 'Không có kết nối internet. Chúng tôi đang hiển thị các bài viết cũ hơn; kết nối internet để xem những câu chuyện mới nhất.';

  @override
  String get networkStatusInternetLabel => 'Kết nối Internet';

  @override
  String get networkStatusServerLabel => 'Kết nối máy chủ';

  @override
  String get networkStatusDismiss => 'hiểu rồi';

  @override
  String get networkStatusConnected => 'Đã kết nối';

  @override
  String get networkStatusDisconnected => 'Không được kết nối';

  @override
  String get offlineMode => 'Chế độ ngoại tuyến';

  @override
  String get changesSavedSuccessfully => 'Đã lưu thay đổi thành công';

  @override
  String get unableToSaveChanges => 'Không thể lưu thay đổi';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Thông báo bật lên';

  @override
  String get dismissibleNoticeNotificationsSubtitle => 'Tùy chỉnh cảnh báo của bạn một cách dễ dàng. Bật hoặc tắt thông báo đẩy cho bất kỳ chủ đề nào mà bạn quan tâm.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Đang trên đường cập nhật!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle => 'Bạn sẽ sớm có thể chọn khu vực nào trên thế giới mà bạn muốn nhận tin tức và thông tin cập nhật từ đó.';

  @override
  String get info => 'Thông tin';

  @override
  String get success => 'thành công';

  @override
  String get saveChanges => 'Lưu thay đổi';

  @override
  String get saveChangesConfirmation => 'Bạn có muốn lưu các thay đổi của mình không?';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get unableToOpenReference => 'Không thể mở tài liệu tham khảo này';

  @override
  String searchPageNoResults(String query) {
    return 'Không tìm thấy kết quả nào cho \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Không tìm thấy kết quả nào cho \"$query\" trong danh mục này';
  }

  @override
  String get newsTopics => 'Chủ đề tin tức';

  @override
  String get errorNoInternet => 'Vui lòng kiểm tra kết nối của bạn và thử lại.';

  @override
  String get errorNoInternetTitle => 'Không có kết nối internet.';

  @override
  String get errorTimeout => 'Yêu cầu đã hết thời gian chờ. Vui lòng thử lại sau.';

  @override
  String get errorTimeoutTitle => 'Yêu cầu đã hết thời gian chờ.';

  @override
  String get errorServer => 'Đã xảy ra lỗi máy chủ. Vui lòng thử lại.';

  @override
  String get errorServerTitle => 'Lỗi máy chủ.';

  @override
  String get errorUnauthorized => 'Bạn không được ủy quyền. Vui lòng đăng nhập và thử lại.';

  @override
  String get errorUnauthorizedTitle => 'Không được phép.';

  @override
  String get errorForbidden => 'Bạn không có quyền thực hiện hành động này.';

  @override
  String get errorForbiddenTitle => 'Truy cập bị từ chối.';

  @override
  String get errorNotFound => 'Chúng tôi không thể tìm thấy những gì bạn đang tìm kiếm.';

  @override
  String get errorNotFoundTitle => 'Không tìm thấy.';

  @override
  String get updateArticle => 'Thông tin chi tiết đã được cập nhật';

  @override
  String get errorValidation => 'Một số thông tin có vẻ không hợp lệ. Vui lòng xem lại và thử lại.';

  @override
  String get agreeMail => 'Tôi đồng ý nhận thông tin cập nhật và bản tin qua email.';

  @override
  String get sendUsEmail => 'Gửi email cho chúng tôi';

  @override
  String get discardChangesTitle => 'Hủy thay đổi?';

  @override
  String get discardChangesMessage => 'Bạn có những thay đổi chưa được lưu. Nếu bạn tiếp tục, họ sẽ bị mất.';

  @override
  String get discardButton => 'Loại bỏ';

  @override
  String get stayButton => 'ở lại';

  @override
  String get changeCountryConfirm => 'Chuyển đổi điểm đến tin tức';

  @override
  String get otherWaysToContact => 'Những cách khác để liên lạc';

  @override
  String get agreePrivacy => 'Tôi đã đọc và đồng ý với ';

  @override
  String get contactUsSubtitle => 'Hãy liên hệ với chúng tôi bằng cách sử dụng mẫu dưới đây.';

  @override
  String get fullName => 'Tên đầy đủ';

  @override
  String get mail => 'Địa chỉ email';

  @override
  String get message => 'Tin nhắn';

  @override
  String get errorValidationTitle => 'Đầu vào không hợp lệ.';

  @override
  String get similarSources => 'Nguồn tương tự';

  @override
  String get send => 'Gửi';

  @override
  String get errorGeneric => 'Đã xảy ra lỗi. Vui lòng thử lại.';

  @override
  String get errorGenericTitle => 'Đã xảy ra lỗi.';

  @override
  String get emptyResults_title => 'Không có kết quả phù hợp';

  @override
  String get emptyResults_noResults => 'Không tìm thấy kết quả nào.';

  @override
  String get emptyResults_bottomWithTopic => 'Hãy thử thay đổi từ khóa của bạn hoặc chọn một chủ đề khác.';

  @override
  String get emptyResults_bottomWithoutTopic => 'Hãy thử thay đổi từ khóa của bạn.';

  @override
  String get emptyResults_inThisTopic => 'trong chủ đề này';

  @override
  String get errorBadRequestTitle => 'Yêu cầu xấu.';

  @override
  String get errorBadRequest => 'Yêu cầu không hợp lệ. Vui lòng thử lại.';

  @override
  String get errorNotModifiedTitle => 'Không được sửa đổi.';

  @override
  String get errorNotModified => 'Không có gì thay đổi kể từ yêu cầu cuối cùng của bạn.';

  @override
  String get errorNetworkTitle => 'Lỗi mạng.';

  @override
  String get errorNetwork => 'Chúng tôi không thể truy cập mạng. Hãy kiểm tra kết nối của bạn và thử lại.';

  @override
  String get errorDataIsEmptyTitle => 'Không có dữ liệu có sẵn.';

  @override
  String get errorDataIsEmpty => 'Chúng tôi không thể tìm thấy bất kỳ dữ liệu nào để hiển thị.';

  @override
  String get errorConflictTitle => 'Xung đột.';

  @override
  String get errorConflict => 'Yêu cầu xung đột với dữ liệu hiện có. Vui lòng thử lại.';

  @override
  String get errorServerValidationTitle => 'Lỗi xác thực.';

  @override
  String get errorServerValidation => 'Máy chủ từ chối một số dữ liệu. Vui lòng xem lại và thử lại.';

  @override
  String get errorWriteFileTitle => 'Viết không thành công.';

  @override
  String get errorWriteFile => 'Chúng tôi không thể lưu tập tin. Vui lòng thử lại.';

  @override
  String get errorReadFileTitle => 'Đọc không thành công.';

  @override
  String get errorReadFile => 'Chúng tôi không thể đọc tập tin. Vui lòng thử lại.';

  @override
  String get errorFileNotFoundTitle => 'Không tìm thấy tập tin.';

  @override
  String get errorFileNotFound => 'Chúng tôi không thể tìm thấy tập tin bạn đang tìm kiếm.';

  @override
  String get errorInsufficientStorageTitle => 'Không đủ dung lượng lưu trữ.';

  @override
  String get errorInsufficientStorage => 'Hãy giải phóng dung lượng và thử lại.';

  @override
  String get errorDatabaseReadTitle => 'Lỗi đọc cơ sở dữ liệu.';

  @override
  String get errorDatabaseRead => 'Chúng tôi không thể đọc từ cơ sở dữ liệu.';

  @override
  String get errorDatabaseWriteTitle => 'Lỗi ghi cơ sở dữ liệu.';

  @override
  String get errorDatabaseWrite => 'Chúng tôi không thể lưu vào cơ sở dữ liệu.';

  @override
  String get errorDatabaseConnectionTitle => 'Lỗi kết nối cơ sở dữ liệu.';

  @override
  String get errorDatabaseConnection => 'Chúng tôi không thể kết nối với cơ sở dữ liệu.';

  @override
  String get errorAuthTitle => 'Lỗi xác thực.';

  @override
  String get errorAuth => 'Vui lòng đăng nhập và thử lại.';

  @override
  String get errorInvalidCredentialsTitle => 'Thông tin xác thực không hợp lệ.';

  @override
  String get errorInvalidCredentials => 'Tên người dùng hoặc mật khẩu không chính xác.';

  @override
  String get errorSecureStorageReadTitle => 'Lỗi đọc lưu trữ an toàn.';

  @override
  String get errorSecureStorageRead => 'Chúng tôi không thể đọc từ bộ nhớ an toàn.';

  @override
  String get errorSecureStorageWriteTitle => 'Lỗi ghi lưu trữ an toàn.';

  @override
  String get errorSecureStorageWrite => 'Chúng tôi không thể ghi vào bộ nhớ an toàn.';

  @override
  String get errorSecureStorageClearTitle => 'Lỗi xóa bộ nhớ an toàn.';

  @override
  String get errorSecureStorageClear => 'Chúng tôi không thể xóa bộ nhớ an toàn.';

  @override
  String get errorTokenExpiredTitle => 'Phiên đã hết hạn.';

  @override
  String get errorTokenExpired => 'Vui lòng đăng nhập lại.';

  @override
  String get errorUserNotFoundTitle => 'Không tìm thấy người dùng.';

  @override
  String get errorUserNotFound => 'Chúng tôi không thể tìm thấy người dùng đó.';

  @override
  String get errorPermissionDeniedTitle => 'Quyền bị từ chối.';

  @override
  String get errorPermissionDenied => 'Bạn không có quyền thực hiện hành động này.';

  @override
  String get errorEmptyResultTitle => 'Không có kết quả.';

  @override
  String get errorEmptyResult => 'Chúng tôi không thể tìm thấy bất kỳ kết quả nào.';

  @override
  String get errorInvalidInputTitle => 'Đầu vào không hợp lệ.';

  @override
  String get errorInvalidInput => 'Vui lòng kiểm tra đầu vào của bạn và thử lại.';

  @override
  String get errorEmptyTopicsTitle => 'Không có chủ đề nào được chọn.';

  @override
  String get errorEmptyTopics => 'Vui lòng chọn ít nhất một chủ đề.';

  @override
  String get errorParsingTitle => 'Lỗi phân tích cú pháp.';

  @override
  String get errorParsing => 'Chúng tôi không thể xử lý dữ liệu.';

  @override
  String get errorUnknownTitle => 'Lỗi không xác định.';

  @override
  String get errorUnknown => 'Đã xảy ra lỗi không mong muốn.';
}
