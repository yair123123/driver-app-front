// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get back => 'בחזרה';

  @override
  String get saveChangesTitle => 'שמור שינויים';

  @override
  String get channels_section_title => 'חדש באפליקציה';

  @override
  String get go_to_groups_page => 'עבור לדף הקבוצות';

  @override
  String sharedViaApp(Object appName) {
    return '*שותף על ידי $appName*';
  }

  @override
  String downloadAndroid(Object url) {
    return 'להורדה באנדרואיד 👈 $url';
  }

  @override
  String downloadIOS(Object url) {
    return 'להורדה באייפון 👈 $url';
  }

  @override
  String get shareMessageTitle => 'שיתוף הודעה';

  @override
  String get shareMessageSubtitle => 'בחר איך לשתף את ההודעה';

  @override
  String get shareMessageOptionLinkTitle => 'שתף קישור';

  @override
  String get shareMessageOptionLinkSubtitle => 'ישלח קישור ישיר להודעה';

  @override
  String get shareMessageOptionContentTitle => 'שתף טקסט ומדיה';

  @override
  String get shareMessageOptionContentSubtitle =>
      'ישלח את הטקסט והמדיה של ההודעה';

  @override
  String get channels_section_description =>
      'אזור חדש לערוצי וואטסאפ וטלגרם עם סרטונים, תמונות ועדכונים - כל התוכן הכי מעניין במקום אחד.';

  @override
  String get newMessages => 'הודעות חדשות';

  @override
  String get addArea => 'הוסף אזור';

  @override
  String get removeArea => 'הסר אזור';

  @override
  String removeAreaConfirmContent(String area) {
    return 'האם אתה בטוח שברצונך להסיר את $area מהאזורים שבחרת?';
  }

  @override
  String get channels => 'ערוצים';

  @override
  String get contactUsSuccessTitle => 'נשלח בהצלחה ✅';

  @override
  String get contactUsSuccessMessage =>
      'תודה לך! קיבלנו את הודעתך ונחזור אליך בהקדם האפשרי.';

  @override
  String get selectCountry => 'בחר מדינה';

  @override
  String get areaManagmentTitle => 'חדשות אזור צריכה';

  @override
  String get areaManagmentSubtitle => 'המדינות שלי';

  @override
  String get sharedFromApp => 'משותף מ';

  @override
  String get textCopied => 'הטקסט הועתק';

  @override
  String get queryIsEmpty => 'השאילתה ריקה';

  @override
  String get queryIsEmptyTitle => 'החיפוש ריק.';

  @override
  String get areaWereRemoved => 'האזור הוסר בהצלחה';

  @override
  String get areaWereAdded => 'אזור נוסף בהצלחה';

  @override
  String get saveChangesMessage => 'האם ברצונך לשמור את השינויים שביצעת?';

  @override
  String get busyLandingTitle => 'אנחנו כמעט נוחתים…';

  @override
  String get busyLandingSubtitle => 'אנחנו מכינים את החדשות שלך';

  @override
  String get changeCountryTitle => 'לאיזו מדינה נעבור עכשיו?';

  @override
  String get changeCountrySubtitle =>
      'כאשר תבחר מדינה, כל התוכן באפליקציה יתעדכן בהתאם לבחירתך.';

  @override
  String get dailySummary => 'סיכום יומי';

  @override
  String get lastUpdated => 'עודכן לאחרונה';

  @override
  String get saveChangesSubtitle => 'האם ברצונך לשמור את השינויים שביצעת?';

  @override
  String get readMore => 'קרא עוד';

  @override
  String get searchPageNoResultsPrefix => 'לא נמצאו תוצאות עבור ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'לא נמצאו תוצאות עבור \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' בקטגוריה זו';

  @override
  String get toPowerOn => 'להדליק';

  @override
  String get notificationsOffTitle => 'הודעות כבויות';

  @override
  String get notificationsOffSubtitle => 'נראה שגישה להתראות עדיין לא הופעלה.';

  @override
  String get newArticles => 'מאמרים חדשים';

  @override
  String get home => 'הביתה';

  @override
  String get changesApplyOnNextLaunch => 'השינויים יחולו בהשקת האפליקציה הבאה.';

  @override
  String get enable => 'אפשר';

  @override
  String get stayUpdatedWithLatestNews => 'הישאר מעודכן בחדשות האחרונות';

  @override
  String get enableNotifications => 'הפעל התראות';

  @override
  String get error_details => 'פרטי שגיאה';

  @override
  String get error_title => 'אופס משהו לא בסדר';

  @override
  String get freeSearch => 'חיפוש חינם';

  @override
  String get aiPageSubtitle => 'תכונה זו עדיין בפיתוח \n שווה לבדוק שוב בקרוב.';

  @override
  String get topicsSelectionTitle => 'בחירת נושאי חדשות';

  @override
  String get groups => 'קבוצות';

  @override
  String get aiPageTitle =>
      'בקרוב: תוכל לשוחח עם הבינה המלאכותית שלנו על החדשות!';

  @override
  String get topicsSelectionSubtitle =>
      'בחר נושאים או תת-נושאים שתרצה לראות בעדכון שלך. אתה תמיד יכול לשנות אותם כאן.';

  @override
  String get failedToLoadTopics => 'טעינת הנושאים נכשלה';

  @override
  String get settingsNote => 'אתה יכול לערוך את ההגדרות בכל עת';

  @override
  String get lang => 'שפה';

  @override
  String get failed_to_load_data =>
      'לא הצלחנו לטעון את הנתונים. אנא בדוק את חיבור האינטרנט שלך ונסה שוב.';

  @override
  String get changeLang => 'שנה שפה';

  @override
  String get notNow => 'לא עכשיו';

  @override
  String get notificationsPermissionRationale =>
      'הפעלת התראות מאפשרת לך להישאר מעודכן בחדשות חשובות, עדכונים דחופים ותוכן מותאם אישית - כך שלעולם לא תחמיץ שום דבר שחשוב לך.';

  @override
  String get skipToSuggestedContent => 'דלג לתוכן שבחרנו עבורך';

  @override
  String get lets_go => 'בוא נלך';

  @override
  String get keepGoing => 'לְהַמשִׁיך לָלֶכֶת!';

  @override
  String get skip => 'דלג';

  @override
  String get save => 'שמור';

  @override
  String get next => 'הבא';

  @override
  String get pleaseSelectLanguage => 'אנא בחר שפה';

  @override
  String get pleaseSelectAtLeastOneTopic => 'בחר לפחות נושא אחד';

  @override
  String get notificationTitle => 'רוצים להישאר מעודכנים?';

  @override
  String get search => 'חפש';

  @override
  String get searchPageEmptySubtitle => 'מה תרצה לחפש?';

  @override
  String get searchPageEmptyTitle => 'הקלד מילת מפתח או נושא לחיפוש';

  @override
  String get notificationSubTitle =>
      'אתה יכול להפעיל התראות קופצות עבור כל נושא שמעניין אותך.';

  @override
  String get whatIsInteresting => 'מה מעניין אותך';

  @override
  String get subTextWhatIsInteresting =>
      'כדי לשלוח רק את מה שבאמת רלוונטי, תחילה נסמן את מה שמעניין אותך.';

  @override
  String get getStarted => 'התחל';

  @override
  String get try_again => 'נסה שוב';

  @override
  String get allow => 'אפשר';

  @override
  String get noPermissions => 'אין הרשאות';

  @override
  String get solution_suggestions => 'הצעות לפתרון';

  @override
  String get allowNotifications => 'אפשר הודעות';

  @override
  String get notifications => 'התראות';

  @override
  String get notificationsEnabled => 'התראות מופעלות';

  @override
  String get notificationsDenied => 'הודעות נדחו';

  @override
  String get pleaseWait => 'אנא המתן';

  @override
  String get all => 'הכל';

  @override
  String get cancel => 'בטל';

  @override
  String get openSettings => 'פתח את ההגדרות';

  @override
  String get subTextNotifications =>
      'אתה יכול להפעיל התראות קופצות עבור כל נושא שמעניין אותך.';

  @override
  String get troubleshooting_tips => 'עצות לפתרון בעיות';

  @override
  String get welcome =>
      'ברוכים הבאים לאפליקציית החדשות, בהתאמה אישית רק בשבילך!';

  @override
  String get continueReading => 'המשך לקרוא';

  @override
  String get share => 'שתף';

  @override
  String get area => 'אזור';

  @override
  String get chooseYourAreaHint =>
      'בחר את האזור שלך כדי לקבל עדכוני חדשות מקומיים';

  @override
  String get chooseYourAreaHintUnused =>
      'בחר את אזור החדשות שאתה רוצה.\nבתוך האפליקציה, תוכל לבחור גם מדינות נוספות.';

  @override
  String get chooseYourLangHint =>
      'בחר את השפה שלך, אתה תמיד יכול לשנות אותה מאוחר יותר.';

  @override
  String get topics => 'נושאים';

  @override
  String get chooseTopicsHint =>
      'בחר את הנושאים שמעניינים אותך, אתה תמיד יכול לשנות אותם בהגדרות.';

  @override
  String get categories => 'קטגוריות';

  @override
  String get manageNotifications => 'נהל התראות';

  @override
  String get languageAndRegion => 'שפה ואזור';

  @override
  String get about => 'בערך';

  @override
  String get privacyPolicy => 'מדיניות הפרטיות';

  @override
  String get contactUs => 'צור איתנו קשר';

  @override
  String get networkStatusPartialTitle => 'בעיה בשרת';

  @override
  String get networkStatusOfflineTitle => 'אין חיבור לאינטרנט';

  @override
  String get networkStatusPartialMessage =>
      'אנחנו יכולים להגיע לאינטרנט אבל לא לשרת.\\nנסה שוב בעוד רגע.';

  @override
  String get networkStatusOfflineMessage =>
      'אין חיבור לאינטרנט. אנו מציגים מאמרים ישנים יותר; התחבר לאינטרנט כדי לראות את הסיפורים האחרונים.';

  @override
  String get networkStatusInternetLabel => 'חיבור לאינטרנט';

  @override
  String get networkStatusServerLabel => 'חיבור לשרת';

  @override
  String get networkStatusDismiss => 'הבנתי';

  @override
  String get networkStatusConnected => 'מחובר';

  @override
  String get networkStatusDisconnected => 'לא מחובר';

  @override
  String get offlineMode => 'מצב לא מקוון';

  @override
  String get changesSavedSuccessfully => 'השינויים נשמרו בהצלחה';

  @override
  String get unableToSaveChanges => 'לא ניתן לשמור שינויים';

  @override
  String get dismissibleNoticeNotificationsTitle => 'הודעות קופצות';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'התאם אישית את ההתראות שלך בקלות. הפעל או כבה התראות דחיפה עבור כל נושא שמעניין אותך.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'עדכון בדרך!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'בקרוב תוכל לבחור מאילו אזורים בעולם אתה רוצה לקבל חדשות ועדכונים.';

  @override
  String get info => 'מידע';

  @override
  String get success => 'הצלחה';

  @override
  String get saveChanges => 'שמור שינויים';

  @override
  String get saveChangesConfirmation => 'האם ברצונך לשמור את השינויים שלך?';

  @override
  String get confirm => 'אשר';

  @override
  String get unableToOpenReference => 'לא ניתן לפתוח הפניה זו';

  @override
  String searchPageNoResults(String query) {
    return 'לא נמצאו תוצאות עבור \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'לא נמצאו תוצאות עבור \"$query\" בקטגוריה זו';
  }

  @override
  String get newsTopics => 'נושאי חדשות';

  @override
  String get errorNoInternet => 'אנא בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorNoInternetTitle => 'אין חיבור לאינטרנט.';

  @override
  String get errorTimeout => 'תם הזמן הקצוב לבקשה. אנא נסה שוב מאוחר יותר.';

  @override
  String get errorTimeoutTitle => 'תם הזמן הקצוב לבקשה.';

  @override
  String get errorServer => 'אירעה שגיאת שרת. אנא נסה שוב.';

  @override
  String get errorServerTitle => 'שגיאת שרת.';

  @override
  String get errorUnauthorized => 'אתה לא מורשה. אנא היכנס ונסה שוב.';

  @override
  String get errorUnauthorizedTitle => 'לא מורשה.';

  @override
  String get errorForbidden => 'אין לך הרשאה לבצע פעולה זו.';

  @override
  String get errorForbiddenTitle => 'הגישה נדחתה.';

  @override
  String get errorNotFound => 'לא הצלחנו למצוא את מה שחיפשת.';

  @override
  String get errorNotFoundTitle => 'לא נמצא.';

  @override
  String get updateArticle => 'פרטים נוספים עודכנו';

  @override
  String get errorValidation => 'חלק מהמידע נראה לא חוקי. אנא בדוק ונסה שוב.';

  @override
  String get agreeMail => 'אני מסכים לקבל עדכונים וניוזלטרים במייל.';

  @override
  String get sendUsEmail => 'שלחו לנו מייל';

  @override
  String get discardChangesTitle => 'למחוק שינויים?';

  @override
  String get discardChangesMessage =>
      'יש לך שינויים שלא נשמרו. אם תמשיך, הם יאבדו.';

  @override
  String get discardButton => 'לזרוק';

  @override
  String get stayButton => 'הישארו';

  @override
  String get changeCountryConfirm => 'החלף יעד חדשות';

  @override
  String get otherWaysToContact => 'דרכים אחרות ליצור קשר';

  @override
  String get agreePrivacy => 'קראתי ואני מסכים ל ';

  @override
  String get contactUsSubtitle => 'אל תהסס לפנות אלינו באמצעות הטופס למטה.';

  @override
  String get fullName => 'שם מלא';

  @override
  String get mail => 'כתובת אימייל';

  @override
  String get message => 'הודעה';

  @override
  String get errorValidationTitle => 'קלט לא חוקי.';

  @override
  String get similarSources => 'מקורות דומים';

  @override
  String get send => 'שלח';

  @override
  String get errorGeneric => 'משהו השתבש. אנא נסה שוב.';

  @override
  String get errorGenericTitle => 'משהו השתבש.';

  @override
  String get emptyResults_title => 'אין תוצאות תואמות';

  @override
  String get emptyResults_noResults => 'לא נמצאו תוצאות.';

  @override
  String get emptyResults_bottomWithTopic =>
      'נסה לשנות את מילות המפתח שלך או בחר נושא אחר.';

  @override
  String get emptyResults_bottomWithoutTopic => 'נסה לשנות את מילות המפתח שלך.';

  @override
  String get emptyResults_inThisTopic => 'בנושא זה';

  @override
  String get errorBadRequestTitle => 'בקשה גרועה.';

  @override
  String get errorBadRequest => 'הבקשה לא הייתה חוקית. אנא נסה שוב.';

  @override
  String get errorNotModifiedTitle => 'לא שונה.';

  @override
  String get errorNotModified => 'שום דבר לא השתנה מאז הבקשה האחרונה שלך.';

  @override
  String get errorNetworkTitle => 'שגיאת רשת.';

  @override
  String get errorNetwork =>
      'לא הצלחנו להגיע לרשת. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorDataIsEmptyTitle => 'אין נתונים זמינים.';

  @override
  String get errorDataIsEmpty => 'לא הצלחנו למצוא נתונים להצגה.';

  @override
  String get errorConflictTitle => 'קונפליקט.';

  @override
  String get errorConflict => 'הבקשה התנגשה עם הנתונים הקיימים. אנא נסה שוב.';

  @override
  String get errorServerValidationTitle => 'שגיאת אימות.';

  @override
  String get errorServerValidation =>
      'השרת דחה נתונים מסוימים. אנא בדוק ונסה שוב.';

  @override
  String get errorWriteFileTitle => 'הכתיבה נכשלה.';

  @override
  String get errorWriteFile => 'לא הצלחנו לשמור את הקובץ. אנא נסה שוב.';

  @override
  String get errorReadFileTitle => 'הקריאה נכשלה.';

  @override
  String get errorReadFile => 'לא הצלחנו לקרוא את הקובץ. אנא נסה שוב.';

  @override
  String get errorFileNotFoundTitle => 'הקובץ לא נמצא.';

  @override
  String get errorFileNotFound => 'לא הצלחנו למצוא את הקובץ שאתה מחפש.';

  @override
  String get errorInsufficientStorageTitle => 'אין מספיק אחסון.';

  @override
  String get errorInsufficientStorage => 'פנה מקום ונסה שוב.';

  @override
  String get errorDatabaseReadTitle => 'שגיאת קריאת מסד נתונים.';

  @override
  String get errorDatabaseRead => 'לא הצלחנו לקרוא ממסד הנתונים.';

  @override
  String get errorDatabaseWriteTitle => 'שגיאת כתיבה של מסד נתונים.';

  @override
  String get errorDatabaseWrite => 'לא הצלחנו לשמור במסד הנתונים.';

  @override
  String get errorDatabaseConnectionTitle => 'שגיאת חיבור למסד נתונים.';

  @override
  String get errorDatabaseConnection => 'לא הצלחנו להתחבר למסד הנתונים.';

  @override
  String get errorAuthTitle => 'שגיאת אימות.';

  @override
  String get errorAuth => 'אנא היכנס ונסה שוב.';

  @override
  String get errorInvalidCredentialsTitle => 'אישורים לא חוקיים.';

  @override
  String get errorInvalidCredentials => 'שם המשתמש או הסיסמה שגויים.';

  @override
  String get errorSecureStorageReadTitle => 'שגיאת קריאת אחסון מאובטח.';

  @override
  String get errorSecureStorageRead => 'לא הצלחנו לקרוא מאחסון מאובטח.';

  @override
  String get errorSecureStorageWriteTitle => 'שגיאת כתיבה של אחסון מאובטח.';

  @override
  String get errorSecureStorageWrite => 'לא יכולנו לכתוב לאחסון מאובטח.';

  @override
  String get errorSecureStorageClearTitle => 'שגיאת ניקוי אחסון מאובטח.';

  @override
  String get errorSecureStorageClear => 'לא הצלחנו לפנות אחסון מאובטח.';

  @override
  String get errorTokenExpiredTitle => 'פג תוקף ההפעלה.';

  @override
  String get errorTokenExpired => 'נא להיכנס שוב.';

  @override
  String get errorUserNotFoundTitle => 'המשתמש לא נמצא.';

  @override
  String get errorUserNotFound => 'לא הצלחנו למצוא את המשתמש הזה.';

  @override
  String get errorPermissionDeniedTitle => 'הרשות נדחתה.';

  @override
  String get errorPermissionDenied => 'אין לך הרשאה לבצע פעולה זו.';

  @override
  String get errorEmptyResultTitle => 'אין תוצאות.';

  @override
  String get errorEmptyResult => 'לא מצאנו תוצאות.';

  @override
  String get errorInvalidInputTitle => 'קלט לא חוקי.';

  @override
  String get errorInvalidInput => 'אנא בדוק את הקלט שלך ונסה שוב.';

  @override
  String get errorEmptyTopicsTitle => 'לא נבחרו נושאים.';

  @override
  String get errorEmptyTopics => 'אנא בחר לפחות נושא אחד.';

  @override
  String get errorParsingTitle => 'שגיאת ניתוח.';

  @override
  String get errorParsing => 'לא יכולנו לעבד את הנתונים.';

  @override
  String get errorUnknownTitle => 'שגיאה לא ידועה.';

  @override
  String get errorUnknown => 'אירעה שגיאה בלתי צפויה.';
}
