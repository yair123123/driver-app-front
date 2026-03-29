// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get back => 'العودة';

  @override
  String get saveChangesTitle => 'حفظ التغييرات';

  @override
  String get channels_section_title => 'الجديد في التطبيق';

  @override
  String get go_to_groups_page => 'انتقل إلى صفحة المجموعات';

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
      'منطقة جديدة لقنوات WhatsApp وTelegram تحتوي على مقاطع فيديو وصور وتحديثات - كل المحتوى الأكثر إثارة للاهتمام في مكان واحد.';

  @override
  String get newMessages => 'رسائل جديدة';

  @override
  String get addArea => 'أضف منطقة';

  @override
  String get removeArea => 'إزالة المنطقة';

  @override
  String removeAreaConfirmContent(String area) {
    return 'هل أنت متأكد من رغبتك في إزالة $area من المناطق المحددة؟';
  }

  @override
  String get channels => 'القنوات';

  @override
  String get contactUsSuccessTitle => 'تم الإرسال بنجاح ✅';

  @override
  String get contactUsSuccessMessage =>
      'شكرا لك! لقد تلقينا رسالتك وسوف نقوم بالرد عليك في أقرب وقت ممكن.';

  @override
  String get selectCountry => 'اختر البلد';

  @override
  String get areaManagmentTitle => 'منطقة استهلاك الأخبار';

  @override
  String get areaManagmentSubtitle => 'بلدي';

  @override
  String get sharedFromApp => 'مشترك من';

  @override
  String get textCopied => 'تم نسخ النص';

  @override
  String get queryIsEmpty => 'الاستعلام فارغ';

  @override
  String get queryIsEmptyTitle => 'البحث فارغ.';

  @override
  String get areaWereRemoved => 'تمت إزالة المنطقة بنجاح';

  @override
  String get areaWereAdded => 'تمت إضافة المنطقة بنجاح';

  @override
  String get saveChangesMessage => 'هل تريد حفظ التغييرات التي قمت بها؟';

  @override
  String get busyLandingTitle => 'نحن على وشك الهبوط…';

  @override
  String get busyLandingSubtitle => 'نحن نجهز أخبارك';

  @override
  String get changeCountryTitle => 'ما هي الدولة التي يجب أن نتحول إليها؟';

  @override
  String get changeCountrySubtitle =>
      'عندما تختار بلدًا، سيتم تحديث كل المحتوى الموجود في التطبيق وفقًا لاختيارك.';

  @override
  String get dailySummary => 'ملخص يومي';

  @override
  String get lastUpdated => 'آخر تحديث';

  @override
  String get saveChangesSubtitle => 'هل تريد حفظ التغييرات التي قمت بها؟';

  @override
  String get readMore => 'اقرأ المزيد';

  @override
  String get searchPageNoResultsPrefix => 'لم يتم العثور على نتائج ل ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'لم يتم العثور على نتائج ل \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' في هذه الفئة';

  @override
  String get toPowerOn => 'لتشغيل';

  @override
  String get notificationsOffTitle => 'الإخطارات معطلة';

  @override
  String get notificationsOffSubtitle =>
      'يبدو أنه لم يتم تمكين الوصول إلى الإشعارات بعد.';

  @override
  String get newArticles => 'مقالات جديدة';

  @override
  String get home => 'المنزل';

  @override
  String get changesApplyOnNextLaunch =>
      'سيتم تطبيق التغييرات عند إطلاق التطبيق التالي.';

  @override
  String get enable => 'تمكين';

  @override
  String get stayUpdatedWithLatestNews => 'ابق على اطلاع بأحدث الأخبار';

  @override
  String get enableNotifications => 'تمكين الإخطارات';

  @override
  String get error_details => 'تفاصيل الخطأ';

  @override
  String get error_title => 'عفوا هناك خطأ ما';

  @override
  String get freeSearch => 'بحث مجاني';

  @override
  String get aiPageSubtitle =>
      'هذه الميزة لا تزال قيد التطوير \n يستحق التحقق مرة أخرى قريبا.';

  @override
  String get topicsSelectionTitle => 'اختيار موضوعات الأخبار';

  @override
  String get groups => 'المجموعات';

  @override
  String get aiPageTitle =>
      'قريبًا: ستتمكن من الدردشة مع الذكاء الاصطناعي الخاص بنا حول الأخبار!';

  @override
  String get topicsSelectionSubtitle =>
      'اختر المواضيع أو المواضيع الفرعية التي ترغب في رؤيتها في خلاصتك. يمكنك دائمًا تغييرها هنا.';

  @override
  String get failedToLoadTopics => 'فشل تحميل المواضيع';

  @override
  String get settingsNote => 'يمكنك تعديل الإعدادات في أي وقت';

  @override
  String get lang => 'اللغة';

  @override
  String get failed_to_load_data =>
      'لم نتمكن من تحميل البيانات. يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.';

  @override
  String get changeLang => 'تغيير اللغة';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get notificationsPermissionRationale =>
      'يتيح لك تمكين الإشعارات البقاء على اطلاع دائم بالأخبار المهمة والتحديثات العاجلة والمحتوى المخصص - حتى لا يفوتك أي شيء يهمك أبدًا.';

  @override
  String get skipToSuggestedContent => 'انتقل إلى المحتوى الذي اخترناه لك';

  @override
  String get lets_go => 'دعنا نذهب';

  @override
  String get keepGoing => 'يستمر في التقدم!';

  @override
  String get skip => 'تخطي';

  @override
  String get save => 'حفظ';

  @override
  String get next => 'التالي';

  @override
  String get pleaseSelectLanguage => 'الرجاء تحديد اللغة';

  @override
  String get pleaseSelectAtLeastOneTopic => 'حدد موضوعًا واحدًا على الأقل';

  @override
  String get notificationTitle => 'هل ترغب في البقاء على اطلاع دائم؟';

  @override
  String get search => 'بحث';

  @override
  String get searchPageEmptySubtitle => 'ماذا تريد أن تبحث؟';

  @override
  String get searchPageEmptyTitle => 'اكتب كلمة أساسية أو موضوعًا للبحث فيه';

  @override
  String get notificationSubTitle =>
      'يمكنك تشغيل الإشعارات المنبثقة لأي موضوع يهمك.';

  @override
  String get whatIsInteresting => 'ما يهمك';

  @override
  String get subTextWhatIsInteresting =>
      'لإرسال ما هو ذي صلة حقًا فقط، دعنا أولاً نحدد ما يثير اهتمامك.';

  @override
  String get getStarted => 'ابدأ';

  @override
  String get try_again => 'حاول مرة أخرى';

  @override
  String get allow => 'السماح';

  @override
  String get noPermissions => 'لا أذونات';

  @override
  String get solution_suggestions => 'اقتراحات الحل';

  @override
  String get allowNotifications => 'السماح بالإخطارات';

  @override
  String get notifications => 'الإخطارات';

  @override
  String get notificationsEnabled => 'تم تمكين الإخطارات';

  @override
  String get notificationsDenied => 'تم رفض الإخطارات';

  @override
  String get pleaseWait => 'من فضلك انتظر';

  @override
  String get all => 'الكل';

  @override
  String get cancel => 'إلغاء';

  @override
  String get openSettings => 'افتح الإعدادات';

  @override
  String get subTextNotifications =>
      'يمكنك تفعيل الإشعارات المنبثقة لكل موضوع يهمك.';

  @override
  String get troubleshooting_tips => 'نصائح لاستكشاف الأخطاء وإصلاحها';

  @override
  String get welcome => 'مرحبًا بك في تطبيق الأخبار المخصص لك فقط!';

  @override
  String get continueReading => 'مواصلة القراءة';

  @override
  String get share => 'شارك';

  @override
  String get area => 'المنطقة';

  @override
  String get chooseYourAreaHint =>
      'اختر منطقتك للحصول على تحديثات الأخبار المحلية';

  @override
  String get chooseYourAreaHintUnused =>
      'اختر منطقة الأخبار التي تريدها.\nداخل التطبيق، يمكنك تحديد بلدان إضافية أيضًا.';

  @override
  String get chooseYourLangHint => 'اختر لغتك، ويمكنك دائمًا تغييرها لاحقًا.';

  @override
  String get topics => 'المواضيع';

  @override
  String get chooseTopicsHint =>
      'اختر المواضيع التي تهمك، ويمكنك دائمًا تغييرها في الإعدادات.';

  @override
  String get categories => 'الفئات';

  @override
  String get manageNotifications => 'إدارة الإخطارات';

  @override
  String get languageAndRegion => 'اللغة والمنطقة';

  @override
  String get about => 'حول';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get contactUs => 'اتصل بنا';

  @override
  String get networkStatusPartialTitle => 'مشكلة الخادم';

  @override
  String get networkStatusOfflineTitle => 'لا يوجد اتصال بالإنترنت';

  @override
  String get networkStatusPartialMessage =>
      'يمكننا الوصول إلى الإنترنت ولكن ليس إلى الخادم.\\nحاول مرة أخرى بعد قليل.';

  @override
  String get networkStatusOfflineMessage =>
      'لا يوجد اتصال بالإنترنت. نحن نعرض المقالات القديمة. اتصل بالإنترنت لرؤية أحدث القصص.';

  @override
  String get networkStatusInternetLabel => 'اتصال بالإنترنت';

  @override
  String get networkStatusServerLabel => 'اتصال الخادم';

  @override
  String get networkStatusDismiss => 'حصلت عليه';

  @override
  String get networkStatusConnected => 'متصل';

  @override
  String get networkStatusDisconnected => 'غير متصل';

  @override
  String get offlineMode => 'وضع غير متصل بالشبكة';

  @override
  String get changesSavedSuccessfully => 'تم حفظ التغييرات بنجاح';

  @override
  String get unableToSaveChanges => 'غير قادر على حفظ التغييرات';

  @override
  String get dismissibleNoticeNotificationsTitle => 'الإخطارات المنبثقة';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'تخصيص التنبيهات الخاصة بك بسهولة. قم بتشغيل أو إيقاف تشغيل الإشعارات لأي موضوع يثير اهتمامك.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'تحديث على الطريق!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'ستتمكن قريبًا من اختيار مناطق العالم التي ترغب في الحصول على الأخبار والتحديثات منها.';

  @override
  String get info => 'معلومات';

  @override
  String get success => 'النجاح';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get saveChangesConfirmation => 'هل تريد حفظ تغييراتك؟';

  @override
  String get confirm => 'تأكيد';

  @override
  String get unableToOpenReference => 'غير قادر على فتح هذا المرجع';

  @override
  String searchPageNoResults(String query) {
    return 'لم يتم العثور على أي نتائج \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'لم يتم العثور على أي نتائج ل \"$query\" في هذا التصنيف';
  }

  @override
  String get newsTopics => 'موضوعات الأخبار';

  @override
  String get errorNoInternet => 'يرجى التحقق من اتصالك والمحاولة مرة أخرى.';

  @override
  String get errorNoInternetTitle => 'لا يوجد اتصال بالإنترنت.';

  @override
  String get errorTimeout =>
      'انتهت مهلة الطلب. يرجى المحاولة مرة أخرى في وقت لاحق.';

  @override
  String get errorTimeoutTitle => 'انتهت مهلة الطلب.';

  @override
  String get errorServer => 'حدث خطأ في الخادم. يرجى المحاولة مرة أخرى.';

  @override
  String get errorServerTitle => 'خطأ في الخادم.';

  @override
  String get errorUnauthorized =>
      'أنت غير مصرح لك. الرجاء تسجيل الدخول والمحاولة مرة أخرى.';

  @override
  String get errorUnauthorizedTitle => 'غير مصرح به.';

  @override
  String get errorForbidden => 'ليس لديك الإذن للقيام بهذا الإجراء.';

  @override
  String get errorForbiddenTitle => 'تم رفض الوصول.';

  @override
  String get errorNotFound => 'لم نتمكن من العثور على ما كنت تبحث عنه.';

  @override
  String get errorNotFoundTitle => 'لم يتم العثور عليه.';

  @override
  String get updateArticle => 'تم تحديث المزيد من التفاصيل';

  @override
  String get errorValidation =>
      'بعض المعلومات تبدو غير صالحة. يرجى المراجعة والمحاولة مرة أخرى.';

  @override
  String get agreeMail =>
      'أوافق على تلقي التحديثات والرسائل الإخبارية عبر البريد الإلكتروني.';

  @override
  String get sendUsEmail => 'أرسل لنا رسالة بالبريد الإلكتروني';

  @override
  String get discardChangesTitle => 'هل تريد تجاهل التغييرات؟';

  @override
  String get discardChangesMessage =>
      'لديك تغييرات غير محفوظة. إذا واصلت، وسوف تضيع.';

  @override
  String get discardButton => 'تجاهل';

  @override
  String get stayButton => 'البقاء';

  @override
  String get changeCountryConfirm => 'تبديل وجهة الأخبار';

  @override
  String get otherWaysToContact => 'طرق أخرى للاتصال';

  @override
  String get agreePrivacy => 'لقد قرأت ووافقت على ';

  @override
  String get contactUsSubtitle =>
      'لا تتردد في الاتصال بنا باستخدام النموذج أدناه.';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get mail => 'عنوان البريد الإلكتروني';

  @override
  String get message => 'رسالة';

  @override
  String get errorValidationTitle => 'إدخال غير صالح.';

  @override
  String get similarSources => 'مصادر مماثلة';

  @override
  String get send => 'أرسل';

  @override
  String get errorGeneric => 'حدث خطأ ما. يرجى المحاولة مرة أخرى.';

  @override
  String get errorGenericTitle => 'حدث خطأ ما.';

  @override
  String get emptyResults_title => 'لا توجد نتائج مطابقة';

  @override
  String get emptyResults_noResults => 'لم يتم العثور على نتائج.';

  @override
  String get emptyResults_bottomWithTopic =>
      'حاول تغيير كلماتك الرئيسية أو اختر موضوعًا آخر.';

  @override
  String get emptyResults_bottomWithoutTopic => 'حاول تغيير كلماتك الرئيسية.';

  @override
  String get emptyResults_inThisTopic => 'في هذا الموضوع';

  @override
  String get errorBadRequestTitle => 'طلب سيء.';

  @override
  String get errorBadRequest => 'الطلب غير صالح. يرجى المحاولة مرة أخرى.';

  @override
  String get errorNotModifiedTitle => 'لم يتم تعديله.';

  @override
  String get errorNotModified => 'لم يتغير شيء منذ طلبك الأخير.';

  @override
  String get errorNetworkTitle => 'خطأ في الشبكة.';

  @override
  String get errorNetwork =>
      'لم نتمكن من الوصول إلى الشبكة. تحقق من اتصالك وحاول مرة أخرى.';

  @override
  String get errorDataIsEmptyTitle => 'لا توجد بيانات متاحة.';

  @override
  String get errorDataIsEmpty => 'لم نتمكن من العثور على أي بيانات لعرضها.';

  @override
  String get errorConflictTitle => 'الصراع.';

  @override
  String get errorConflict =>
      'يتعارض الطلب مع البيانات الموجودة. يرجى المحاولة مرة أخرى.';

  @override
  String get errorServerValidationTitle => 'خطأ في التحقق.';

  @override
  String get errorServerValidation =>
      'رفض الخادم بعض البيانات. يرجى المراجعة والمحاولة مرة أخرى.';

  @override
  String get errorWriteFileTitle => 'فشلت الكتابة.';

  @override
  String get errorWriteFile => 'لم نتمكن من حفظ الملف. يرجى المحاولة مرة أخرى.';

  @override
  String get errorReadFileTitle => 'فشلت القراءة.';

  @override
  String get errorReadFile =>
      'لم نتمكن من قراءة الملف. يرجى المحاولة مرة أخرى.';

  @override
  String get errorFileNotFoundTitle => 'لم يتم العثور على الملف.';

  @override
  String get errorFileNotFound => 'لم نتمكن من العثور على الملف الذي تبحث عنه.';

  @override
  String get errorInsufficientStorageTitle => 'لا توجد مساحة تخزين كافية.';

  @override
  String get errorInsufficientStorage => 'قم بتحرير مساحة وحاول مرة أخرى.';

  @override
  String get errorDatabaseReadTitle => 'خطأ في قراءة قاعدة البيانات.';

  @override
  String get errorDatabaseRead => 'لم نتمكن من القراءة من قاعدة البيانات.';

  @override
  String get errorDatabaseWriteTitle => 'خطأ في كتابة قاعدة البيانات.';

  @override
  String get errorDatabaseWrite => 'لم نتمكن من الحفظ في قاعدة البيانات.';

  @override
  String get errorDatabaseConnectionTitle => 'خطأ في الاتصال بقاعدة البيانات.';

  @override
  String get errorDatabaseConnection => 'لم نتمكن من الاتصال بقاعدة البيانات.';

  @override
  String get errorAuthTitle => 'خطأ في المصادقة.';

  @override
  String get errorAuth => 'الرجاء تسجيل الدخول والمحاولة مرة أخرى.';

  @override
  String get errorInvalidCredentialsTitle => 'بيانات اعتماد غير صالحة.';

  @override
  String get errorInvalidCredentials =>
      'اسم المستخدم أو كلمة المرور غير صحيحة.';

  @override
  String get errorSecureStorageReadTitle => 'خطأ في قراءة التخزين الآمن.';

  @override
  String get errorSecureStorageRead => 'لم نتمكن من القراءة من التخزين الآمن.';

  @override
  String get errorSecureStorageWriteTitle => 'خطأ في الكتابة للتخزين الآمن.';

  @override
  String get errorSecureStorageWrite => 'لم نتمكن من الكتابة لتأمين التخزين.';

  @override
  String get errorSecureStorageClearTitle => 'التخزين الآمن خطأ واضح.';

  @override
  String get errorSecureStorageClear => 'لم نتمكن من مسح مساحة التخزين الآمنة.';

  @override
  String get errorTokenExpiredTitle => 'انتهت صلاحية الجلسة.';

  @override
  String get errorTokenExpired => 'الرجاء تسجيل الدخول مرة أخرى.';

  @override
  String get errorUserNotFoundTitle => 'لم يتم العثور على المستخدم.';

  @override
  String get errorUserNotFound => 'لم نتمكن من العثور على هذا المستخدم.';

  @override
  String get errorPermissionDeniedTitle => 'تم رفض الإذن.';

  @override
  String get errorPermissionDenied => 'ليس لديك الإذن بتنفيذ هذا الإجراء.';

  @override
  String get errorEmptyResultTitle => 'لا توجد نتائج.';

  @override
  String get errorEmptyResult => 'لم نتمكن من العثور على أي نتائج.';

  @override
  String get errorInvalidInputTitle => 'إدخال غير صالح.';

  @override
  String get errorInvalidInput =>
      'يرجى التحقق من المدخلات الخاصة بك وحاول مرة أخرى.';

  @override
  String get errorEmptyTopicsTitle => 'لم يتم اختيار أي مواضيع.';

  @override
  String get errorEmptyTopics => 'الرجاء تحديد موضوع واحد على الأقل.';

  @override
  String get errorParsingTitle => 'خطأ في التحليل.';

  @override
  String get errorParsing => 'لم نتمكن من معالجة البيانات.';

  @override
  String get errorUnknownTitle => 'خطأ غير معروف.';

  @override
  String get errorUnknown => 'حدث خطأ غير متوقع.';
}
