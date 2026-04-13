// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get back => '뒤로';

  @override
  String get saveChangesTitle => '변경 사항 저장';

  @override
  String get channels_section_title => '앱의 새로운 기능';

  @override
  String get go_to_groups_page => '그룹 페이지로 이동';

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
  String get channels_section_description => '비디오, 이미지, 업데이트가 포함된 WhatsApp 및 Telegram 채널을 위한 새로운 영역 – 가장 흥미로운 콘텐츠가 모두 한곳에 있습니다.';

  @override
  String get newMessages => '새 메시지';

  @override
  String get addArea => '지역 추가';

  @override
  String get removeArea => '영역 제거';

  @override
  String removeAreaConfirmContent(String area) {
    return '선택한 지역에서 $area를 제거하시겠습니까?';
  }

  @override
  String get channels => '채널';

  @override
  String get contactUsSuccessTitle => '성공적으로 전송되었습니다 ✅';

  @override
  String get contactUsSuccessMessage => '감사합니다! 귀하의 메시지가 접수되었으며 최대한 빨리 연락드리겠습니다.';

  @override
  String get selectCountry => '국가 선택';

  @override
  String get areaManagmentTitle => '뉴스 소비 영역';

  @override
  String get areaManagmentSubtitle => '내 국가';

  @override
  String get sharedFromApp => '다음에서 공유됨';

  @override
  String get textCopied => '텍스트가 복사되었습니다.';

  @override
  String get queryIsEmpty => '쿼리가 비어 있습니다.';

  @override
  String get queryIsEmptyTitle => '검색어가 비어 있습니다.';

  @override
  String get areaWereRemoved => '영역이 성공적으로 제거되었습니다.';

  @override
  String get areaWereAdded => '지역이 추가되었습니다.';

  @override
  String get saveChangesMessage => '변경사항을 저장하시겠습니까?';

  @override
  String get busyLandingTitle => '거의 착륙 중입니다…';

  @override
  String get busyLandingSubtitle => '여러분의 소식을 준비하고 있습니다';

  @override
  String get changeCountryTitle => '어느 나라로 바꿔야 할까요?';

  @override
  String get changeCountrySubtitle => '국가를 선택하면 선택 사항에 따라 앱의 모든 콘텐츠가 업데이트됩니다.';

  @override
  String get dailySummary => '일일 요약';

  @override
  String get lastUpdated => '마지막 업데이트';

  @override
  String get saveChangesSubtitle => '변경사항을 저장하시겠습니까?';

  @override
  String get readMore => '더 읽어보세요';

  @override
  String get searchPageNoResultsPrefix => '에 대한 검색 결과가 없습니다. ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix => '에 대한 검색 결과가 없습니다. \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' 이 카테고리에';

  @override
  String get toPowerOn => '전원을 켜다';

  @override
  String get notificationsOffTitle => '알림 꺼짐';

  @override
  String get notificationsOffSubtitle => '알림 액세스가 아직 활성화되지 않은 것 같습니다.';

  @override
  String get newArticles => '새로운 기사';

  @override
  String get home => '집';

  @override
  String get changesApplyOnNextLaunch => '변경사항은 다음 앱 실행 시 적용됩니다.';

  @override
  String get enable => '활성화';

  @override
  String get stayUpdatedWithLatestNews => '최신 뉴스를 받아보세요';

  @override
  String get enableNotifications => '알림 활성화';

  @override
  String get error_details => '오류 세부정보';

  @override
  String get error_title => '이런, 뭔가 잘못됐어';

  @override
  String get freeSearch => '무료 검색';

  @override
  String get aiPageSubtitle => '이 기능은 아직 개발 중입니다. \n 곧 다시 확인해 볼 가치가 있습니다.';

  @override
  String get topicsSelectionTitle => '뉴스 주제 선택';

  @override
  String get groups => '그룹';

  @override
  String get aiPageTitle => '출시 예정: 뉴스에 대해 AI와 채팅할 수 있습니다!';

  @override
  String get topicsSelectionSubtitle => '피드에서 보고 싶은 주제나 하위 주제를 선택하세요. 여기에서 언제든지 변경할 수 있습니다.';

  @override
  String get failedToLoadTopics => '주제를 로드하지 못했습니다.';

  @override
  String get settingsNote => '언제든지 설정을 편집할 수 있습니다.';

  @override
  String get lang => '언어';

  @override
  String get failed_to_load_data => '데이터를 로드할 수 없습니다. 인터넷 연결을 확인하고 다시 시도해 주세요.';

  @override
  String get changeLang => '언어 변경';

  @override
  String get notNow => '지금은 아님';

  @override
  String get notificationsPermissionRationale => '알림을 활성화하면 중요한 뉴스, 긴급 업데이트, 맞춤 콘텐츠에 대한 최신 정보를 받아볼 수 있으므로 중요한 내용을 놓치지 않을 수 있습니다.';

  @override
  String get skipToSuggestedContent => '우리가 당신을 위해 선택한 콘텐츠로 건너뛰기';

  @override
  String get lets_go => '가자';

  @override
  String get keepGoing => '계속하세요!';

  @override
  String get skip => '건너뛰기';

  @override
  String get save => '저장';

  @override
  String get next => '다음';

  @override
  String get pleaseSelectLanguage => '언어를 선택해주세요';

  @override
  String get pleaseSelectAtLeastOneTopic => '주제를 하나 이상 선택하세요.';

  @override
  String get notificationTitle => '최신 소식을 받고 싶으신가요?';

  @override
  String get search => '검색';

  @override
  String get searchPageEmptySubtitle => '무엇을 검색하시겠습니까?';

  @override
  String get searchPageEmptyTitle => '검색할 키워드나 주제를 입력하세요';

  @override
  String get notificationSubTitle => '관심 있는 주제에 대해 팝업 알림을 켤 수 있습니다.';

  @override
  String get whatIsInteresting => '당신이 관심을 갖는 것';

  @override
  String get subTextWhatIsInteresting => '정말 관련 있는 내용만 보내려면 먼저 관심 있는 내용을 표시해 보세요.';

  @override
  String get getStarted => '시작하기';

  @override
  String get try_again => '다시 시도하세요';

  @override
  String get allow => '허용';

  @override
  String get noPermissions => '권한 없음';

  @override
  String get solution_suggestions => '솔루션 제안';

  @override
  String get allowNotifications => '알림 허용';

  @override
  String get notifications => '알림';

  @override
  String get notificationsEnabled => '알림 활성화됨';

  @override
  String get notificationsDenied => '알림이 거부되었습니다';

  @override
  String get pleaseWait => '잠시만 기다려주세요';

  @override
  String get all => '모두';

  @override
  String get cancel => '취소';

  @override
  String get openSettings => '설정 열기';

  @override
  String get subTextNotifications => '관심 있는 모든 주제에 대해 팝업 알림을 활성화할 수 있습니다.';

  @override
  String get troubleshooting_tips => '문제 해결 팁';

  @override
  String get welcome => '당신만을 위한 맞춤형 뉴스 앱에 오신 것을 환영합니다!';

  @override
  String get continueReading => '계속 읽기';

  @override
  String get share => '공유';

  @override
  String get area => '면적';

  @override
  String get chooseYourAreaHint => '현지화된 뉴스 업데이트를 받으려면 지역을 선택하세요.';

  @override
  String get chooseYourAreaHintUnused => '원하는 뉴스 지역을 선택하세요.\n앱 내에서 추가 국가를 선택할 수도 있습니다.';

  @override
  String get chooseYourLangHint => '언어를 선택하세요. 나중에 언제든지 변경할 수 있습니다.';

  @override
  String get topics => '주제';

  @override
  String get chooseTopicsHint => '관심 있는 주제를 선택하세요. 언제든지 설정에서 변경할 수 있습니다.';

  @override
  String get categories => '카테고리';

  @override
  String get manageNotifications => '알림 관리';

  @override
  String get languageAndRegion => '언어 및 지역';

  @override
  String get about => '소개';

  @override
  String get privacyPolicy => '개인 정보 보호 정책';

  @override
  String get contactUs => '문의하기';

  @override
  String get networkStatusPartialTitle => '서버 문제';

  @override
  String get networkStatusOfflineTitle => '인터넷에 연결되어 있지 않음';

  @override
  String get networkStatusPartialMessage => '인터넷에는 연결할 수 있지만 서버에는 연결할 수 없습니다.\\n잠시 후에 다시 시도하세요.';

  @override
  String get networkStatusOfflineMessage => '인터넷에 연결되어 있지 않습니다. 우리는 오래된 기사를 보여주고 있습니다. 최신 기사를 보려면 인터넷에 연결하세요.';

  @override
  String get networkStatusInternetLabel => '인터넷 연결';

  @override
  String get networkStatusServerLabel => '서버 연결';

  @override
  String get networkStatusDismiss => '알았어요';

  @override
  String get networkStatusConnected => '연결됨';

  @override
  String get networkStatusDisconnected => '연결되지 않음';

  @override
  String get offlineMode => '오프라인 모드';

  @override
  String get changesSavedSuccessfully => '변경사항이 성공적으로 저장되었습니다.';

  @override
  String get unableToSaveChanges => '변경사항을 저장할 수 없습니다.';

  @override
  String get dismissibleNoticeNotificationsTitle => '팝업 알림';

  @override
  String get dismissibleNoticeNotificationsSubtitle => '알림을 쉽게 사용자 정의하세요. 관심 있는 주제에 대해 푸시 알림을 켜거나 끄세요.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => '가는 길에 업데이트하세요!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle => '곧 뉴스와 업데이트를 받아보고 싶은 지역을 선택할 수 있게 됩니다.';

  @override
  String get info => '정보';

  @override
  String get success => '성공';

  @override
  String get saveChanges => '변경사항 저장';

  @override
  String get saveChangesConfirmation => '변경 사항을 저장하시겠습니까?';

  @override
  String get confirm => '확인';

  @override
  String get unableToOpenReference => '이 참조를 열 수 없습니다.';

  @override
  String searchPageNoResults(String query) {
    return '\"$query\"에 대한 검색결과가 없습니다.';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return '이 카테고리에 \"$query\"에 대한 검색결과가 없습니다.';
  }

  @override
  String get newsTopics => '뉴스 주제';

  @override
  String get errorNoInternet => '연결을 확인하고 다시 시도해 주세요.';

  @override
  String get errorNoInternetTitle => '인터넷에 연결되어 있지 않습니다.';

  @override
  String get errorTimeout => '요청 시간이 초과되었습니다. 나중에 다시 시도해 주세요.';

  @override
  String get errorTimeoutTitle => '요청 시간이 초과되었습니다.';

  @override
  String get errorServer => '서버 오류가 발생했습니다. 다시 시도해 주세요.';

  @override
  String get errorServerTitle => '서버 오류입니다.';

  @override
  String get errorUnauthorized => '귀하는 권한이 없습니다. 로그인한 후 다시 시도해 주세요.';

  @override
  String get errorUnauthorizedTitle => '승인되지 않았습니다.';

  @override
  String get errorForbidden => '이 작업을 수행할 권한이 없습니다.';

  @override
  String get errorForbiddenTitle => '액세스가 거부되었습니다.';

  @override
  String get errorNotFound => '귀하가 찾고 있는 것을 찾을 수 없습니다.';

  @override
  String get errorNotFoundTitle => '찾을 수 없습니다.';

  @override
  String get updateArticle => '자세한 내용이 업데이트되었습니다';

  @override
  String get errorValidation => '일부 정보가 잘못된 것 같습니다. 검토한 후 다시 시도해 주세요.';

  @override
  String get agreeMail => '이메일로 업데이트 및 뉴스레터를 받는 데 동의합니다.';

  @override
  String get sendUsEmail => '이메일을 보내주세요';

  @override
  String get discardChangesTitle => '변경사항을 취소하시겠습니까?';

  @override
  String get discardChangesMessage => '저장되지 않은 변경사항이 있습니다. 계속하면 해당 항목이 손실됩니다.';

  @override
  String get discardButton => '폐기';

  @override
  String get stayButton => '숙박';

  @override
  String get changeCountryConfirm => '뉴스 대상 전환';

  @override
  String get otherWaysToContact => '기타 연락 방법';

  @override
  String get agreePrivacy => '나는 다음 내용을 읽었으며 이에 동의합니다. ';

  @override
  String get contactUsSubtitle => '아래 양식을 사용하여 언제든지 문의해 주세요.';

  @override
  String get fullName => '이름';

  @override
  String get mail => '이메일 주소';

  @override
  String get message => '메시지';

  @override
  String get errorValidationTitle => '입력이 잘못되었습니다.';

  @override
  String get similarSources => '유사한 소스';

  @override
  String get send => '보내기';

  @override
  String get errorGeneric => '문제가 발생했습니다. 다시 시도해 주세요.';

  @override
  String get errorGenericTitle => '문제가 발생했습니다.';

  @override
  String get emptyResults_title => '일치하는 결과가 없습니다';

  @override
  String get emptyResults_noResults => '검색된 결과가 없습니다.';

  @override
  String get emptyResults_bottomWithTopic => '키워드를 변경하거나 다른 주제를 선택해 보세요.';

  @override
  String get emptyResults_bottomWithoutTopic => '키워드를 바꿔보세요.';

  @override
  String get emptyResults_inThisTopic => '이 주제에서는';

  @override
  String get errorBadRequestTitle => '요청이 잘못되었습니다.';

  @override
  String get errorBadRequest => '요청이 잘못되었습니다. 다시 시도해 주세요.';

  @override
  String get errorNotModifiedTitle => '수정되지 않았습니다.';

  @override
  String get errorNotModified => '마지막 요청 이후 변경된 사항이 없습니다.';

  @override
  String get errorNetworkTitle => '네트워크 오류입니다.';

  @override
  String get errorNetwork => '네트워크에 연결할 수 없습니다. 연결을 확인하고 다시 시도하세요.';

  @override
  String get errorDataIsEmptyTitle => '데이터가 없습니다.';

  @override
  String get errorDataIsEmpty => '표시할 데이터를 찾을 수 없습니다.';

  @override
  String get errorConflictTitle => '갈등.';

  @override
  String get errorConflict => '요청이 기존 데이터와 충돌했습니다. 다시 시도해 주세요.';

  @override
  String get errorServerValidationTitle => '유효성 검사 오류입니다.';

  @override
  String get errorServerValidation => '서버가 일부 데이터를 거부했습니다. 검토한 후 다시 시도해 주세요.';

  @override
  String get errorWriteFileTitle => '쓰기에 실패했습니다.';

  @override
  String get errorWriteFile => '파일을 저장할 수 없습니다. 다시 시도해 주세요.';

  @override
  String get errorReadFileTitle => '읽기에 실패했습니다.';

  @override
  String get errorReadFile => '파일을 읽을 수 없습니다. 다시 시도해 주세요.';

  @override
  String get errorFileNotFoundTitle => '파일을 찾을 수 없습니다.';

  @override
  String get errorFileNotFound => '찾고 있는 파일을 찾을 수 없습니다.';

  @override
  String get errorInsufficientStorageTitle => '저장용량이 충분하지 않습니다.';

  @override
  String get errorInsufficientStorage => '여유 공간을 확보한 후 다시 시도하세요.';

  @override
  String get errorDatabaseReadTitle => '데이터베이스 읽기 오류입니다.';

  @override
  String get errorDatabaseRead => '데이터베이스에서 읽을 수 없습니다.';

  @override
  String get errorDatabaseWriteTitle => '데이터베이스 쓰기 오류입니다.';

  @override
  String get errorDatabaseWrite => '데이터베이스에 저장할 수 없습니다.';

  @override
  String get errorDatabaseConnectionTitle => '데이터베이스 연결 오류입니다.';

  @override
  String get errorDatabaseConnection => '데이터베이스에 연결할 수 없습니다.';

  @override
  String get errorAuthTitle => '인증 오류입니다.';

  @override
  String get errorAuth => '로그인한 후 다시 시도해 주세요.';

  @override
  String get errorInvalidCredentialsTitle => '자격 증명이 잘못되었습니다.';

  @override
  String get errorInvalidCredentials => '사용자 이름이나 비밀번호가 올바르지 않습니다.';

  @override
  String get errorSecureStorageReadTitle => '보안 저장소 읽기 오류입니다.';

  @override
  String get errorSecureStorageRead => '보안 저장소에서 읽을 수 없습니다.';

  @override
  String get errorSecureStorageWriteTitle => '보안 저장소 쓰기 오류입니다.';

  @override
  String get errorSecureStorageWrite => '보안 저장소에 쓸 수 없습니다.';

  @override
  String get errorSecureStorageClearTitle => '보안 저장소 삭제 오류입니다.';

  @override
  String get errorSecureStorageClear => '보안 저장소를 지울 수 없습니다.';

  @override
  String get errorTokenExpiredTitle => '세션이 만료되었습니다.';

  @override
  String get errorTokenExpired => '다시 로그인해 주세요.';

  @override
  String get errorUserNotFoundTitle => '사용자를 찾을 수 없습니다.';

  @override
  String get errorUserNotFound => '해당 사용자를 찾을 수 없습니다.';

  @override
  String get errorPermissionDeniedTitle => '허가가 거부되었습니다.';

  @override
  String get errorPermissionDenied => '이 작업을 수행할 권한이 없습니다.';

  @override
  String get errorEmptyResultTitle => '결과가 없습니다.';

  @override
  String get errorEmptyResult => '결과를 찾을 수 없습니다.';

  @override
  String get errorInvalidInputTitle => '입력이 잘못되었습니다.';

  @override
  String get errorInvalidInput => '입력 내용을 확인하고 다시 시도해 주세요.';

  @override
  String get errorEmptyTopicsTitle => '선택한 주제가 없습니다.';

  @override
  String get errorEmptyTopics => '주제를 하나 이상 선택하세요.';

  @override
  String get errorParsingTitle => '구문 분석 오류입니다.';

  @override
  String get errorParsing => '데이터를 처리할 수 없습니다.';

  @override
  String get errorUnknownTitle => '알 수 없는 오류입니다.';

  @override
  String get errorUnknown => '예상치 못한 오류가 발생했습니다.';
}
