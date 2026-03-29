// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get back => 'மீண்டும்';

  @override
  String get saveChangesTitle => 'மாற்றங்களைச் சேமிக்கவும்';

  @override
  String get channels_section_title => 'பயன்பாட்டில் புதியது';

  @override
  String get go_to_groups_page => 'குழுக்கள் பக்கத்திற்குச் செல்லவும்';

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
  String get shareMessageOptionLinkSubtitle =>
      'Send a direct link to the message';

  @override
  String get shareMessageOptionContentTitle => 'Share text and media';

  @override
  String get shareMessageOptionContentSubtitle =>
      'Send the message text and media';

  @override
  String get channels_section_description =>
      'வாட்ஸ்அப் மற்றும் டெலிகிராம் சேனல்களுக்கான புதிய பகுதி வீடியோக்கள், படங்கள் மற்றும் புதுப்பிப்புகள் - ஒரே இடத்தில் மிகவும் சுவாரஸ்யமான உள்ளடக்கம்.';

  @override
  String get newMessages => 'புதிய செய்திகள்';

  @override
  String get addArea => 'பகுதியைச் சேர்க்கவும்';

  @override
  String get removeArea => 'பகுதியை அகற்று';

  @override
  String removeAreaConfirmContent(String area) {
    return 'நீங்கள் தேர்ந்தெடுத்த பகுதிகளிலிருந்து $area ஐ நிச்சயமாக அகற்ற விரும்புகிறீர்களா?';
  }

  @override
  String get channels => 'சேனல்கள்';

  @override
  String get contactUsSuccessTitle => 'வெற்றிகரமாக அனுப்பப்பட்டது ✅';

  @override
  String get contactUsSuccessMessage =>
      'நன்றி! உங்கள் செய்தியைப் பெற்றுள்ளோம், விரைவில் உங்களைத் தொடர்புகொள்வோம்.';

  @override
  String get selectCountry => 'நாட்டைத் தேர்ந்தெடுக்கவும்';

  @override
  String get areaManagmentTitle => 'செய்தி நுகர்வு பகுதி';

  @override
  String get areaManagmentSubtitle => 'எனது நாடுகள்';

  @override
  String get sharedFromApp => 'இருந்து பகிரப்பட்டது';

  @override
  String get textCopied => 'உரை நகலெடுக்கப்பட்டது';

  @override
  String get queryIsEmpty => 'வினவல் காலியாக உள்ளது';

  @override
  String get queryIsEmptyTitle => 'தேடல் காலியாக உள்ளது.';

  @override
  String get areaWereRemoved => 'பகுதி வெற்றிகரமாக அகற்றப்பட்டது';

  @override
  String get areaWereAdded => 'பகுதி வெற்றிகரமாக சேர்க்கப்பட்டது';

  @override
  String get saveChangesMessage =>
      'நீங்கள் செய்த மாற்றங்களைச் சேமிக்க விரும்புகிறீர்களா?';

  @override
  String get busyLandingTitle => 'நாங்கள் கிட்டத்தட்ட தரையிறங்குகிறோம்…';

  @override
  String get busyLandingSubtitle => 'உங்கள் செய்தியை நாங்கள் தயார் செய்கிறோம்';

  @override
  String get changeCountryTitle => 'எந்த நாட்டுக்கு மாற வேண்டும்?';

  @override
  String get changeCountrySubtitle =>
      'நீங்கள் ஒரு நாட்டைத் தேர்ந்தெடுக்கும்போது, ஆப்ஸில் உள்ள எல்லா உள்ளடக்கமும் உங்கள் தேர்வுக்கு ஏற்ப புதுப்பிக்கப்படும்.';

  @override
  String get dailySummary => 'தினசரி சுருக்கம்';

  @override
  String get lastUpdated => 'கடைசியாக புதுப்பிக்கப்பட்டது';

  @override
  String get saveChangesSubtitle =>
      'நீங்கள் செய்த மாற்றங்களைச் சேமிக்க விரும்புகிறீர்களா?';

  @override
  String get readMore => 'மேலும் படிக்கவும்';

  @override
  String get searchPageNoResultsPrefix =>
      'இதற்கான முடிவுகள் எதுவும் கிடைக்கவில்லை ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'இதற்கான முடிவுகள் எதுவும் கிடைக்கவில்லை \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' இந்த வகையில்';

  @override
  String get toPowerOn => 'அதிகாரத்திற்கு';

  @override
  String get notificationsOffTitle => 'அறிவிப்புகள் முடக்கப்பட்டுள்ளன';

  @override
  String get notificationsOffSubtitle =>
      'அறிவிப்பு அணுகல் இன்னும் இயக்கப்படவில்லை போல் தெரிகிறது.';

  @override
  String get newArticles => 'புதிய கட்டுரைகள்';

  @override
  String get home => 'வீடு';

  @override
  String get changesApplyOnNextLaunch =>
      'அடுத்த ஆப்ஸ் வெளியீட்டில் மாற்றங்கள் செயல்படுத்தப்படும்.';

  @override
  String get enable => 'இயக்கு';

  @override
  String get stayUpdatedWithLatestNews =>
      'சமீபத்திய செய்திகளுடன் புதுப்பித்த நிலையில் இருங்கள்';

  @override
  String get enableNotifications => 'அறிவிப்புகளை இயக்கு';

  @override
  String get error_details => 'பிழை விவரங்கள்';

  @override
  String get error_title => 'அச்சச்சோ ஏதோ தவறு';

  @override
  String get freeSearch => 'இலவச தேடல்';

  @override
  String get aiPageSubtitle =>
      'இந்த அம்சம் இன்னும் வளர்ச்சியில் உள்ளது \n விரைவில் மீண்டும் சரிபார்க்க வேண்டும்.';

  @override
  String get topicsSelectionTitle => 'செய்தி தலைப்புகள் தேர்வு';

  @override
  String get groups => 'குழுக்கள்';

  @override
  String get aiPageTitle =>
      'விரைவில்: நீங்கள் எங்கள் AI உடன் செய்திகளைப் பற்றி அரட்டையடிக்க முடியும்!';

  @override
  String get topicsSelectionSubtitle =>
      'உங்கள் ஊட்டத்தில் நீங்கள் பார்க்க விரும்பும் தலைப்புகள் அல்லது துணை தலைப்புகளைத் தேர்ந்தெடுக்கவும். நீங்கள் எப்போதும் இங்கே அவற்றை மாற்றலாம்.';

  @override
  String get failedToLoadTopics => 'தலைப்புகளை ஏற்ற முடியவில்லை';

  @override
  String get settingsNote => 'You can edit the settings anytime';

  @override
  String get lang => 'மொழி';

  @override
  String get failed_to_load_data =>
      'எங்களால் தரவை ஏற்ற முடியவில்லை. உங்கள் இணைய இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get changeLang => 'மொழியை மாற்றவும்';

  @override
  String get notNow => 'இப்போது இல்லை';

  @override
  String get notificationsPermissionRationale =>
      'அறிவிப்புகளை இயக்குவது, முக்கியமான செய்திகள், அவசர அறிவிப்புகள் மற்றும் தனிப்பயனாக்கப்பட்ட உள்ளடக்கம் ஆகியவற்றைப் புதுப்பித்த நிலையில் வைத்திருக்க உங்களை அனுமதிக்கிறது - எனவே உங்களுக்கு முக்கியமான எதையும் நீங்கள் தவறவிட மாட்டீர்கள்.';

  @override
  String get skipToSuggestedContent =>
      'உங்களுக்காக நாங்கள் தேர்ந்தெடுத்த உள்ளடக்கத்திற்குச் செல்லவும்';

  @override
  String get lets_go => 'போகலாம்';

  @override
  String get keepGoing => 'தொடருங்கள்!';

  @override
  String get skip => 'தவிர்க்கவும்';

  @override
  String get save => 'சேமிக்கவும்';

  @override
  String get next => 'அடுத்து';

  @override
  String get pleaseSelectLanguage =>
      'தயவுசெய்து ஒரு மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get pleaseSelectAtLeastOneTopic =>
      'குறைந்தது ஒரு தலைப்பையாவது தேர்ந்தெடுக்கவும்';

  @override
  String get notificationTitle => 'புதுப்பித்த நிலையில் இருக்க வேண்டுமா?';

  @override
  String get search => 'தேடு';

  @override
  String get searchPageEmptySubtitle => 'நீங்கள் எதைத் தேட விரும்புகிறீர்கள்?';

  @override
  String get searchPageEmptyTitle =>
      'தேடுவதற்கு ஒரு முக்கிய சொல் அல்லது தலைப்பை உள்ளிடவும்';

  @override
  String get notificationSubTitle =>
      'உங்களுக்கு விருப்பமான எந்த தலைப்புக்கும் பாப்-அப் அறிவிப்புகளை இயக்கலாம்.';

  @override
  String get whatIsInteresting => 'உங்களுக்கு என்ன ஆர்வம்';

  @override
  String get subTextWhatIsInteresting =>
      'உண்மையிலேயே பொருத்தமானதை மட்டும் அனுப்ப, முதலில் உங்களுக்கு விருப்பமானதைக் குறிக்கவும்.';

  @override
  String get getStarted => 'தொடங்குங்கள்';

  @override
  String get try_again => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get allow => 'அனுமதி';

  @override
  String get noPermissions => 'அனுமதிகள் இல்லை';

  @override
  String get solution_suggestions => 'தீர்வு பரிந்துரைகள்';

  @override
  String get allowNotifications => 'அறிவிப்புகளை அனுமதிக்கவும்';

  @override
  String get notifications => 'அறிவிப்புகள்';

  @override
  String get notificationsEnabled => 'அறிவிப்புகள் இயக்கப்பட்டன';

  @override
  String get notificationsDenied => 'அறிவிப்புகள் மறுக்கப்பட்டன';

  @override
  String get pleaseWait => 'தயவுசெய்து காத்திருங்கள்';

  @override
  String get all => 'அனைத்து';

  @override
  String get cancel => 'ரத்து செய்';

  @override
  String get openSettings => 'அமைப்புகளைத் திறக்கவும்';

  @override
  String get subTextNotifications =>
      'உங்களுக்கு விருப்பமான ஒவ்வொரு தலைப்புக்கும் பாப்-அப் அறிவிப்புகளை இயக்கலாம்.';

  @override
  String get troubleshooting_tips => 'பிழைகாணல் குறிப்புகள்';

  @override
  String get welcome =>
      'உங்களுக்காக தனிப்பயனாக்கப்பட்ட செய்தி பயன்பாட்டிற்கு வரவேற்கிறோம்!';

  @override
  String get continueReading => 'தொடர்ந்து படிக்கவும்';

  @override
  String get share => 'பகிரவும்';

  @override
  String get area => 'பகுதி';

  @override
  String get chooseYourAreaHint =>
      'உள்ளூர் செய்தி அறிவிப்புகளைப் பெற உங்கள் பகுதியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get chooseYourAreaHintUnused =>
      'நீங்கள் விரும்பும் செய்திப் பகுதியைத் தேர்ந்தெடுக்கவும்.\nபயன்பாட்டிற்குள், நீங்கள் கூடுதல் நாடுகளையும் தேர்ந்தெடுக்கலாம்.';

  @override
  String get chooseYourLangHint =>
      'உங்கள் மொழியைத் தேர்ந்தெடுங்கள், பின்னர் எப்போது வேண்டுமானாலும் மாற்றலாம்.';

  @override
  String get topics => 'தலைப்புகள்';

  @override
  String get chooseTopicsHint =>
      'உங்களுக்கு விருப்பமான தலைப்புகளைத் தேர்வுசெய்யவும், அவற்றை எப்போதும் அமைப்புகளில் மாற்றலாம்.';

  @override
  String get categories => 'வகைகள்';

  @override
  String get manageNotifications => 'அறிவிப்புகளை நிர்வகிக்கவும்';

  @override
  String get languageAndRegion => 'மொழி & பகுதி';

  @override
  String get about => 'பற்றி';

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get contactUs => 'எங்களை தொடர்பு கொள்ளவும்';

  @override
  String get networkStatusPartialTitle => 'சர்வர் பிரச்சனை';

  @override
  String get networkStatusOfflineTitle => 'இணைய இணைப்பு இல்லை';

  @override
  String get networkStatusPartialMessage =>
      'நாங்கள் இணையத்தை அணுகலாம் ஆனால் சேவையகத்தை அணுக முடியாது.\\nசிறிது நேரத்தில் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get networkStatusOfflineMessage =>
      'இணைய இணைப்பு இல்லை. நாங்கள் பழைய கட்டுரைகளைக் காட்டுகிறோம்; சமீபத்திய கதைகளைப் பார்க்க இணையத்துடன் இணைக்கவும்.';

  @override
  String get networkStatusInternetLabel => 'இணைய இணைப்பு';

  @override
  String get networkStatusServerLabel => 'சேவையக இணைப்பு';

  @override
  String get networkStatusDismiss => 'கிடைத்தது';

  @override
  String get networkStatusConnected => 'இணைக்கப்பட்டது';

  @override
  String get networkStatusDisconnected => 'இணைக்கப்படவில்லை';

  @override
  String get offlineMode => 'ஆஃப்லைன் பயன்முறை';

  @override
  String get changesSavedSuccessfully =>
      'மாற்றங்கள் வெற்றிகரமாக சேமிக்கப்பட்டன';

  @override
  String get unableToSaveChanges => 'மாற்றங்களைச் சேமிக்க முடியவில்லை';

  @override
  String get dismissibleNoticeNotificationsTitle => 'பாப்-அப் அறிவிப்புகள்';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'உங்கள் விழிப்பூட்டல்களை எளிதாகத் தனிப்பயனாக்குங்கள். உங்களுக்கு விருப்பமான எந்தவொரு தலைப்பிற்கும் புஷ் அறிவிப்புகளை இயக்கவும் அல்லது முடக்கவும்.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'வழியில் புதுப்பிப்பு!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'விரைவில் நீங்கள் உலகின் எந்தப் பகுதிகளிலிருந்து செய்திகளையும் அறிவிப்புகளையும் பெற விரும்புகிறீர்கள் என்பதைத் தேர்வுசெய்ய முடியும்.';

  @override
  String get info => 'தகவல்';

  @override
  String get success => 'வெற்றி';

  @override
  String get saveChanges => 'மாற்றங்களைச் சேமிக்கவும்';

  @override
  String get saveChangesConfirmation =>
      'உங்கள் மாற்றங்களைச் சேமிக்க விரும்புகிறீர்களா?';

  @override
  String get confirm => 'உறுதிப்படுத்தவும்';

  @override
  String get unableToOpenReference => 'இந்தக் குறிப்பைத் திறக்க முடியவில்லை';

  @override
  String searchPageNoResults(String query) {
    return '\"$query\" க்கான முடிவுகள் எதுவும் இல்லை';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'இந்த வகையில் \"$query\" க்கான முடிவுகள் எதுவும் இல்லை';
  }

  @override
  String get newsTopics => 'செய்தி தலைப்புகள்';

  @override
  String get errorNoInternet =>
      'உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorNoInternetTitle => 'இணைய இணைப்பு இல்லை.';

  @override
  String get errorTimeout => 'கோரிக்கை நேரம் முடிந்தது. பிறகு முயற்சிக்கவும்.';

  @override
  String get errorTimeoutTitle => 'கோரிக்கை நேரம் முடிந்தது.';

  @override
  String get errorServer => 'சர்வர் பிழை ஏற்பட்டது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorServerTitle => 'சர்வர் பிழை.';

  @override
  String get errorUnauthorized =>
      'நீங்கள் அங்கீகரிக்கப்படவில்லை. உள்நுழைந்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorUnauthorizedTitle => 'அங்கீகரிக்கப்படாதது.';

  @override
  String get errorForbidden => 'இந்தச் செயலைச் செய்ய உங்களுக்கு அனுமதி இல்லை.';

  @override
  String get errorForbiddenTitle => 'அணுகல் மறுக்கப்பட்டது.';

  @override
  String get errorNotFound =>
      'நீங்கள் தேடுவதை எங்களால் கண்டுபிடிக்க முடியவில்லை.';

  @override
  String get errorNotFoundTitle => 'காணப்படவில்லை.';

  @override
  String get updateArticle => 'மேலும் விவரங்கள் புதுப்பிக்கப்பட்டுள்ளன';

  @override
  String get errorValidation =>
      'சில தகவல்கள் தவறானதாகத் தெரிகிறது. மதிப்பாய்வு செய்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get agreeMail =>
      'மின்னஞ்சல் மூலம் புதுப்பிப்புகள் மற்றும் செய்திமடல்களைப் பெற ஒப்புக்கொள்கிறேன்.';

  @override
  String get sendUsEmail => 'எங்களுக்கு ஒரு மின்னஞ்சல் அனுப்பவும்';

  @override
  String get discardChangesTitle => 'மாற்றங்களை நிராகரிக்கவா?';

  @override
  String get discardChangesMessage =>
      'உங்களிடம் சேமிக்கப்படாத மாற்றங்கள் உள்ளன. நீங்கள் தொடர்ந்தால், அவர்கள் இழக்கப்படுவார்கள்.';

  @override
  String get discardButton => 'நிராகரி';

  @override
  String get stayButton => 'இருங்கள்';

  @override
  String get changeCountryConfirm => 'செய்தி இலக்கை மாற்றவும்';

  @override
  String get otherWaysToContact => 'தொடர்பு கொள்வதற்கான பிற வழிகள்';

  @override
  String get agreePrivacy => 'நான் படித்து ஒப்புக்கொண்டேன் ';

  @override
  String get contactUsSubtitle =>
      'கீழே உள்ள படிவத்தைப் பயன்படுத்தி எங்களைத் தொடர்புகொள்ள தயங்க வேண்டாம்.';

  @override
  String get fullName => 'முழுப் பெயர்';

  @override
  String get mail => 'மின்னஞ்சல் முகவரி';

  @override
  String get message => 'செய்தி';

  @override
  String get errorValidationTitle => 'தவறான உள்ளீடு.';

  @override
  String get similarSources => 'இதே போன்ற ஆதாரங்கள்';

  @override
  String get send => 'அனுப்பு';

  @override
  String get errorGeneric => 'ஏதோ தவறாகிவிட்டது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorGenericTitle => 'ஏதோ தவறாகிவிட்டது.';

  @override
  String get emptyResults_title => 'பொருந்தக்கூடிய முடிவுகள் இல்லை';

  @override
  String get emptyResults_noResults => 'முடிவுகள் எதுவும் கிடைக்கவில்லை.';

  @override
  String get emptyResults_bottomWithTopic =>
      'உங்கள் முக்கிய வார்த்தைகளை மாற்ற முயற்சிக்கவும் அல்லது வேறு தலைப்பை தேர்வு செய்யவும்.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'உங்கள் முக்கிய வார்த்தைகளை மாற்ற முயற்சிக்கவும்.';

  @override
  String get emptyResults_inThisTopic => 'இந்த தலைப்பில்';

  @override
  String get errorBadRequestTitle => 'தவறான கோரிக்கை.';

  @override
  String get errorBadRequest => 'கோரிக்கை தவறானது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorNotModifiedTitle => 'மாற்றியமைக்கப்படவில்லை.';

  @override
  String get errorNotModified =>
      'உங்கள் கடைசி கோரிக்கைக்குப் பிறகு எதுவும் மாறவில்லை.';

  @override
  String get errorNetworkTitle => 'நெட்வொர்க் பிழை.';

  @override
  String get errorNetwork =>
      'நெட்வொர்க்கை எங்களால் அடைய முடியவில்லை. உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயலவும்.';

  @override
  String get errorDataIsEmptyTitle => 'தரவு எதுவும் கிடைக்கவில்லை.';

  @override
  String get errorDataIsEmpty =>
      'காண்பிக்க எந்த தரவையும் எங்களால் கண்டுபிடிக்க முடியவில்லை.';

  @override
  String get errorConflictTitle => 'மோதல்.';

  @override
  String get errorConflict =>
      'கோரிக்கை ஏற்கனவே உள்ள தரவுகளுடன் முரண்படுகிறது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorServerValidationTitle => 'சரிபார்ப்பு பிழை.';

  @override
  String get errorServerValidation =>
      'சேவையகம் சில தரவை நிராகரித்தது. மதிப்பாய்வு செய்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorWriteFileTitle => 'எழுத முடியவில்லை.';

  @override
  String get errorWriteFile =>
      'கோப்பைச் சேமிக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorReadFileTitle => 'படிக்க முடியவில்லை.';

  @override
  String get errorReadFile =>
      'எங்களால் கோப்பைப் படிக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorFileNotFoundTitle => 'கோப்பு கிடைக்கவில்லை.';

  @override
  String get errorFileNotFound =>
      'நீங்கள் தேடும் கோப்பை எங்களால் கண்டுபிடிக்க முடியவில்லை.';

  @override
  String get errorInsufficientStorageTitle => 'போதுமான சேமிப்பு இல்லை.';

  @override
  String get errorInsufficientStorage =>
      'இடத்தைக் காலி செய்து மீண்டும் முயலவும்.';

  @override
  String get errorDatabaseReadTitle => 'தரவுத்தள வாசிப்பு பிழை.';

  @override
  String get errorDatabaseRead =>
      'தரவுத்தளத்திலிருந்து எங்களால் படிக்க முடியவில்லை.';

  @override
  String get errorDatabaseWriteTitle => 'தரவுத்தளத்தில் எழுதும் பிழை.';

  @override
  String get errorDatabaseWrite =>
      'எங்களால் தரவுத்தளத்தில் சேமிக்க முடியவில்லை.';

  @override
  String get errorDatabaseConnectionTitle => 'தரவுத்தள இணைப்பு பிழை.';

  @override
  String get errorDatabaseConnection =>
      'எங்களால் தரவுத்தளத்துடன் இணைக்க முடியவில்லை.';

  @override
  String get errorAuthTitle => 'அங்கீகார பிழை.';

  @override
  String get errorAuth => 'உள்நுழைந்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorInvalidCredentialsTitle => 'தவறான சான்றுகள்.';

  @override
  String get errorInvalidCredentials =>
      'பயனர் பெயர் அல்லது கடவுச்சொல் தவறானது.';

  @override
  String get errorSecureStorageReadTitle =>
      'பாதுகாப்பான சேமிப்பக வாசிப்பு பிழை.';

  @override
  String get errorSecureStorageRead =>
      'பாதுகாப்பான சேமிப்பகத்திலிருந்து எங்களால் படிக்க முடியவில்லை.';

  @override
  String get errorSecureStorageWriteTitle =>
      'பாதுகாப்பான சேமிப்பக எழுத்து பிழை.';

  @override
  String get errorSecureStorageWrite =>
      'சேமிப்பகத்தைப் பாதுகாக்க எங்களால் எழுத முடியவில்லை.';

  @override
  String get errorSecureStorageClearTitle =>
      'பாதுகாப்பான சேமிப்பக தெளிவான பிழை.';

  @override
  String get errorSecureStorageClear =>
      'பாதுகாப்பான சேமிப்பிடத்தை எங்களால் அழிக்க முடியவில்லை.';

  @override
  String get errorTokenExpiredTitle => 'அமர்வு காலாவதியானது.';

  @override
  String get errorTokenExpired => 'மீண்டும் உள்நுழையவும்.';

  @override
  String get errorUserNotFoundTitle => 'பயனர் கிடைக்கவில்லை.';

  @override
  String get errorUserNotFound =>
      'அந்த பயனரை எங்களால் கண்டுபிடிக்க முடியவில்லை.';

  @override
  String get errorPermissionDeniedTitle => 'அனுமதி மறுக்கப்பட்டது.';

  @override
  String get errorPermissionDenied =>
      'இந்தச் செயலைச் செய்ய உங்களுக்கு அனுமதி இல்லை.';

  @override
  String get errorEmptyResultTitle => 'முடிவுகள் இல்லை.';

  @override
  String get errorEmptyResult =>
      'எங்களால் எந்த முடிவுகளையும் கண்டுபிடிக்க முடியவில்லை.';

  @override
  String get errorInvalidInputTitle => 'தவறான உள்ளீடு.';

  @override
  String get errorInvalidInput =>
      'உங்கள் உள்ளீட்டைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorEmptyTopicsTitle =>
      'தலைப்புகள் எதுவும் தேர்ந்தெடுக்கப்படவில்லை.';

  @override
  String get errorEmptyTopics =>
      'குறைந்தது ஒரு தலைப்பையாவது தேர்ந்தெடுக்கவும்.';

  @override
  String get errorParsingTitle => 'பாகுபடுத்தும் பிழை.';

  @override
  String get errorParsing => 'எங்களால் தரவைச் செயலாக்க முடியவில்லை.';

  @override
  String get errorUnknownTitle => 'அறியப்படாத பிழை.';

  @override
  String get errorUnknown => 'எதிர்பாராத பிழை ஏற்பட்டது.';
}
