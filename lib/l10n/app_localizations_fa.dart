// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get back => 'برگشت';

  @override
  String get saveChangesTitle => 'ذخیره تغییرات';

  @override
  String get channels_section_title => 'جدید در برنامه';

  @override
  String get go_to_groups_page => 'به صفحه گروه ها بروید';

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
  String get channels_section_description => 'یک منطقه جدید برای کانال های واتس اپ و تلگرام با فیلم ها، تصاویر و به روز رسانی ها – همه جالب ترین مطالب در یک مکان.';

  @override
  String get newMessages => 'پیام های جدید';

  @override
  String get addArea => 'اضافه کردن منطقه';

  @override
  String get removeArea => 'منطقه را حذف کنید';

  @override
  String removeAreaConfirmContent(String area) {
    return 'آیا مطمئن هستید که می خواهید $area را از مناطق انتخابی خود حذف کنید؟';
  }

  @override
  String get channels => 'کانال ها';

  @override
  String get contactUsSuccessTitle => 'با موفقیت ارسال شد✅';

  @override
  String get contactUsSuccessMessage => 'متشکرم! ما پیام شما را دریافت کردیم و در اسرع وقت با شما تماس خواهیم گرفت.';

  @override
  String get selectCountry => 'کشور را انتخاب کنید';

  @override
  String get areaManagmentTitle => 'حوزه مصرف اخبار';

  @override
  String get areaManagmentSubtitle => 'کشورهای من';

  @override
  String get sharedFromApp => 'به اشتراک گذاشته شده از';

  @override
  String get textCopied => 'متن کپی شد';

  @override
  String get queryIsEmpty => 'پرس و جو خالی است';

  @override
  String get queryIsEmptyTitle => 'جستجو خالی است';

  @override
  String get areaWereRemoved => 'منطقه با موفقیت حذف شد';

  @override
  String get areaWereAdded => 'منطقه با موفقیت اضافه شد';

  @override
  String get saveChangesMessage => 'آیا می خواهید تغییراتی را که ایجاد کرده اید ذخیره کنید؟';

  @override
  String get busyLandingTitle => 'تقریبا داریم فرود می آییم…';

  @override
  String get busyLandingSubtitle => 'در حال آماده سازی اخبار شما هستیم';

  @override
  String get changeCountryTitle => 'به کدام کشور برویم؟';

  @override
  String get changeCountrySubtitle => 'وقتی کشوری را انتخاب می کنید، تمام محتوای برنامه مطابق با انتخاب شما به روز می شود.';

  @override
  String get dailySummary => 'خلاصه روزانه';

  @override
  String get lastUpdated => 'آخرین به روز رسانی';

  @override
  String get saveChangesSubtitle => 'آیا می خواهید تغییراتی را که ایجاد کرده اید ذخیره کنید؟';

  @override
  String get readMore => 'ادامه مطلب';

  @override
  String get searchPageNoResultsPrefix => 'هیچ نتیجه ای برای ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix => 'هیچ نتیجه ای برای \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' در این دسته';

  @override
  String get toPowerOn => 'روشن کردن';

  @override
  String get notificationsOffTitle => 'اعلان ها خاموش است';

  @override
  String get notificationsOffSubtitle => 'به نظر می رسد دسترسی به اعلان هنوز فعال نشده است.';

  @override
  String get newArticles => 'مقالات جدید';

  @override
  String get home => 'خانه';

  @override
  String get changesApplyOnNextLaunch => 'تغییرات در راه اندازی برنامه بعدی اعمال خواهد شد.';

  @override
  String get enable => 'فعال کردن';

  @override
  String get stayUpdatedWithLatestNews => 'با آخرین اخبار به روز باشید';

  @override
  String get enableNotifications => 'اعلان ها را فعال کنید';

  @override
  String get error_details => 'جزئیات خطا';

  @override
  String get error_title => 'اوه مشکلی پیش اومده';

  @override
  String get freeSearch => 'جستجوی رایگان';

  @override
  String get aiPageSubtitle => 'این ویژگی هنوز در حال توسعه است \n ارزش دوباره بررسی را دارد';

  @override
  String get topicsSelectionTitle => 'انتخاب موضوعات خبری';

  @override
  String get groups => 'گروه ها';

  @override
  String get aiPageTitle => 'به زودی: شما می توانید با هوش مصنوعی ما در مورد اخبار چت کنید!';

  @override
  String get topicsSelectionSubtitle => 'موضوعات یا موضوعات فرعی را که می خواهید در فید خود ببینید انتخاب کنید. شما همیشه می توانید آنها را در اینجا تغییر دهید.';

  @override
  String get failedToLoadTopics => 'موضوعات بارگیری نشد';

  @override
  String get settingsNote => 'هر زمان که بخواهید می توانید تنظیمات را ویرایش کنید';

  @override
  String get lang => 'زبان';

  @override
  String get failed_to_load_data => 'ما نتوانستیم داده ها را بارگیری کنیم. لطفاً اتصال اینترنت خود را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get changeLang => 'تغییر زبان';

  @override
  String get notNow => 'نه در حال حاضر';

  @override
  String get notificationsPermissionRationale => 'فعال کردن اعلان‌ها به شما امکان می‌دهد از اخبار مهم، به‌روزرسانی‌های فوری و محتوای شخصی‌شده به‌روز باشید – بنابراین هرگز چیزی را که برایتان مهم است از دست ندهید.';

  @override
  String get skipToSuggestedContent => 'به محتوایی که برای شما انتخاب کردیم بروید';

  @override
  String get lets_go => 'برویم';

  @override
  String get keepGoing => 'ادامه بده!';

  @override
  String get skip => 'پرش کنید';

  @override
  String get save => 'ذخیره کنید';

  @override
  String get next => 'بعدی';

  @override
  String get pleaseSelectLanguage => 'لطفا یک زبان را انتخاب کنید';

  @override
  String get pleaseSelectAtLeastOneTopic => 'حداقل یک موضوع را انتخاب کنید';

  @override
  String get notificationTitle => 'می خواهید به روز بمانید؟';

  @override
  String get search => 'جستجو کنید';

  @override
  String get searchPageEmptySubtitle => 'دوست دارید چه چیزی را جستجو کنید؟';

  @override
  String get searchPageEmptyTitle => 'یک کلمه کلیدی یا موضوع را برای جستجو تایپ کنید';

  @override
  String get notificationSubTitle => 'می‌توانید اعلان‌های بازشو را برای هر موضوعی که به آن علاقه دارید روشن کنید.';

  @override
  String get whatIsInteresting => 'آنچه به شما علاقه دارد';

  @override
  String get subTextWhatIsInteresting => 'برای ارسال فقط مواردی که واقعاً مرتبط هستند، اجازه دهید ابتدا موارد مورد علاقه شما را علامت گذاری کنیم.';

  @override
  String get getStarted => 'شروع کنید';

  @override
  String get try_again => 'دوباره امتحان کنید';

  @override
  String get allow => 'اجازه دهید';

  @override
  String get noPermissions => 'بدون مجوز';

  @override
  String get solution_suggestions => 'پیشنهادات راه حل';

  @override
  String get allowNotifications => 'اجازه دادن به اعلان‌ها';

  @override
  String get notifications => 'اطلاعیه ها';

  @override
  String get notificationsEnabled => 'اعلان ها فعال شد';

  @override
  String get notificationsDenied => 'اعلان ها رد شد';

  @override
  String get pleaseWait => 'لطفا صبر کنید';

  @override
  String get all => 'همه';

  @override
  String get cancel => 'لغو کنید';

  @override
  String get openSettings => 'تنظیمات را باز کنید';

  @override
  String get subTextNotifications => 'می توانید اعلان های پاپ آپ را برای هر موضوعی که به آن علاقه دارید فعال کنید.';

  @override
  String get troubleshooting_tips => 'نکات عیب یابی';

  @override
  String get welcome => 'به برنامه خبری خوش آمدید که فقط برای شما شخصی سازی شده است!';

  @override
  String get continueReading => 'به خواندن ادامه دهید';

  @override
  String get share => 'به اشتراک بگذارید';

  @override
  String get area => 'منطقه';

  @override
  String get chooseYourAreaHint => 'منطقه خود را برای دریافت به‌روزرسانی‌های خبری محلی انتخاب کنید';

  @override
  String get chooseYourAreaHintUnused => 'منطقه خبری مورد نظر خود را انتخاب کنید.\nدر داخل برنامه، می توانید کشورهای دیگری را نیز انتخاب کنید.';

  @override
  String get chooseYourLangHint => 'زبان خود را انتخاب کنید، همیشه می توانید بعداً آن را تغییر دهید.';

  @override
  String get topics => 'موضوعات';

  @override
  String get chooseTopicsHint => 'موضوعات مورد علاقه خود را انتخاب کنید، همیشه می توانید آنها را در تنظیمات تغییر دهید.';

  @override
  String get categories => 'دسته بندی ها';

  @override
  String get manageNotifications => 'مدیریت اعلان ها';

  @override
  String get languageAndRegion => 'زبان و منطقه';

  @override
  String get about => 'درباره';

  @override
  String get privacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get contactUs => 'با ما تماس بگیرید';

  @override
  String get networkStatusPartialTitle => 'مشکل سرور';

  @override
  String get networkStatusOfflineTitle => 'بدون اتصال به اینترنت';

  @override
  String get networkStatusPartialMessage => 'ما می‌توانیم به اینترنت دسترسی پیدا کنیم، اما نه به سرور.\\nیک لحظه دیگر دوباره امتحان کنید.';

  @override
  String get networkStatusOfflineMessage => 'بدون اتصال به اینترنت ما مقالات قدیمی‌تری را نشان می‌دهیم. برای مشاهده آخرین داستان ها به اینترنت متصل شوید.';

  @override
  String get networkStatusInternetLabel => 'اتصال به اینترنت';

  @override
  String get networkStatusServerLabel => 'اتصال به سرور';

  @override
  String get networkStatusDismiss => 'متوجه شدم';

  @override
  String get networkStatusConnected => 'متصل شد';

  @override
  String get networkStatusDisconnected => 'متصل نیست';

  @override
  String get offlineMode => 'حالت آفلاین';

  @override
  String get changesSavedSuccessfully => 'تغییرات با موفقیت ذخیره شد';

  @override
  String get unableToSaveChanges => 'امکان ذخیره تغییرات وجود ندارد';

  @override
  String get dismissibleNoticeNotificationsTitle => 'اعلان های پاپ آپ';

  @override
  String get dismissibleNoticeNotificationsSubtitle => 'هشدارهای خود را به راحتی سفارشی کنید. اعلان‌های فشاری را برای هر موضوعی که به آن علاقه دارید روشن یا خاموش کنید.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'به روز رسانی در راه است!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle => 'به زودی می توانید انتخاب کنید که از کدام مناطق جهان می خواهید اخبار و به روز رسانی ها را دریافت کنید.';

  @override
  String get info => 'اطلاعات';

  @override
  String get success => 'موفقیت';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get saveChangesConfirmation => 'آیا می خواهید تغییرات خود را ذخیره کنید؟';

  @override
  String get confirm => 'تایید کنید';

  @override
  String get unableToOpenReference => 'این مرجع باز نمی شود';

  @override
  String searchPageNoResults(String query) {
    return 'نتیجه ای برای \"$query\" یافت نشد';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'هیچ نتیجه ای برای \"$query\" در این رده یافت نشد';
  }

  @override
  String get newsTopics => 'موضوعات خبری';

  @override
  String get errorNoInternet => 'لطفاً اتصال خود را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get errorNoInternetTitle => 'بدون اتصال به اینترنت';

  @override
  String get errorTimeout => 'زمان درخواست به پایان رسید. لطفاً بعداً دوباره امتحان کنید.';

  @override
  String get errorTimeoutTitle => 'زمان درخواست تمام شد.';

  @override
  String get errorServer => 'خطای سرور رخ داده است. لطفا دوباره امتحان کنید.';

  @override
  String get errorServerTitle => 'خطای سرور';

  @override
  String get errorUnauthorized => 'شما مجاز نیستید. لطفا وارد شوید و دوباره امتحان کنید.';

  @override
  String get errorUnauthorizedTitle => 'غیر مجاز';

  @override
  String get errorForbidden => 'شما اجازه انجام این عمل را ندارید.';

  @override
  String get errorForbiddenTitle => 'دسترسی رد شد.';

  @override
  String get errorNotFound => 'ما نتوانستیم آنچه شما به دنبال آن بودید را پیدا کنیم.';

  @override
  String get errorNotFoundTitle => 'پیدا نشد.';

  @override
  String get updateArticle => 'جزئیات بیشتر به روز شده است';

  @override
  String get errorValidation => 'برخی از اطلاعات نامعتبر به نظر می رسند. لطفا مرور کنید و دوباره امتحان کنید.';

  @override
  String get agreeMail => 'من موافقت می کنم که به روز رسانی ها و خبرنامه ها را از طریق ایمیل دریافت کنم.';

  @override
  String get sendUsEmail => 'برای ما ایمیل بفرستید';

  @override
  String get discardChangesTitle => 'از تغییرات صرفنظر شود؟';

  @override
  String get discardChangesMessage => 'شما تغییرات ذخیره نشده ای دارید. اگر ادامه دهید، آنها گم می شوند.';

  @override
  String get discardButton => 'دور انداختن';

  @override
  String get stayButton => 'بمان';

  @override
  String get changeCountryConfirm => 'تغییر مقصد خبری';

  @override
  String get otherWaysToContact => 'راه های دیگر تماس';

  @override
  String get agreePrivacy => 'من خوانده ام و موافقم ';

  @override
  String get contactUsSubtitle => 'با استفاده از فرم زیر با ما تماس بگیرید.';

  @override
  String get fullName => 'نام کامل';

  @override
  String get mail => 'آدرس ایمیل';

  @override
  String get message => 'پیام';

  @override
  String get errorValidationTitle => 'ورودی نامعتبر است.';

  @override
  String get similarSources => 'منابع مشابه';

  @override
  String get send => 'ارسال کنید';

  @override
  String get errorGeneric => 'مشکلی پیش آمد. لطفا دوباره امتحان کنید.';

  @override
  String get errorGenericTitle => 'مشکلی پیش آمد.';

  @override
  String get emptyResults_title => 'نتایج منطبقی وجود ندارد';

  @override
  String get emptyResults_noResults => 'هیچ نتیجه ای یافت نشد.';

  @override
  String get emptyResults_bottomWithTopic => 'سعی کنید کلمات کلیدی خود را تغییر دهید یا موضوع دیگری را انتخاب کنید.';

  @override
  String get emptyResults_bottomWithoutTopic => 'سعی کنید کلمات کلیدی خود را تغییر دهید.';

  @override
  String get emptyResults_inThisTopic => 'در این تاپیک';

  @override
  String get errorBadRequestTitle => 'درخواست بد';

  @override
  String get errorBadRequest => 'درخواست نامعتبر بود. لطفا دوباره امتحان کنید.';

  @override
  String get errorNotModifiedTitle => 'اصلاح نشده است.';

  @override
  String get errorNotModified => 'از آخرین درخواست شما چیزی تغییر نکرده است.';

  @override
  String get errorNetworkTitle => 'خطای شبکه';

  @override
  String get errorNetwork => 'ما نتوانستیم به شبکه دسترسی پیدا کنیم. اتصال خود را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get errorDataIsEmptyTitle => 'هیچ داده ای در دسترس نیست.';

  @override
  String get errorDataIsEmpty => 'هیچ داده ای برای نمایش پیدا نکردیم.';

  @override
  String get errorConflictTitle => 'درگیری.';

  @override
  String get errorConflict => 'درخواست با داده‌های موجود مغایرت داشت. لطفا دوباره امتحان کنید.';

  @override
  String get errorServerValidationTitle => 'خطای اعتبارسنجی';

  @override
  String get errorServerValidation => 'سرور برخی از داده ها را رد کرد. لطفا مرور کنید و دوباره امتحان کنید.';

  @override
  String get errorWriteFileTitle => 'نوشتن ناموفق بود.';

  @override
  String get errorWriteFile => 'ما نتوانستیم فایل را ذخیره کنیم. لطفا دوباره امتحان کنید.';

  @override
  String get errorReadFileTitle => 'خواندن ناموفق بود.';

  @override
  String get errorReadFile => 'ما نتوانستیم فایل را بخوانیم. لطفا دوباره امتحان کنید.';

  @override
  String get errorFileNotFoundTitle => 'فایل پیدا نشد';

  @override
  String get errorFileNotFound => 'ما نتوانستیم فایل مورد نظر شما را پیدا کنیم.';

  @override
  String get errorInsufficientStorageTitle => 'فضای ذخیره سازی کافی نیست.';

  @override
  String get errorInsufficientStorage => 'فضا را آزاد کنید و دوباره امتحان کنید.';

  @override
  String get errorDatabaseReadTitle => 'خطای خواندن پایگاه داده';

  @override
  String get errorDatabaseRead => 'ما نتوانستیم از پایگاه داده بخوانیم.';

  @override
  String get errorDatabaseWriteTitle => 'خطای نوشتن پایگاه داده';

  @override
  String get errorDatabaseWrite => 'ما نتوانستیم در پایگاه داده ذخیره کنیم.';

  @override
  String get errorDatabaseConnectionTitle => 'خطای اتصال پایگاه داده';

  @override
  String get errorDatabaseConnection => 'ما نتوانستیم به پایگاه داده وصل شویم.';

  @override
  String get errorAuthTitle => 'خطای احراز هویت';

  @override
  String get errorAuth => 'لطفا وارد شوید و دوباره امتحان کنید.';

  @override
  String get errorInvalidCredentialsTitle => 'اعتبار نامعتبر';

  @override
  String get errorInvalidCredentials => 'نام کاربری یا رمز عبور نادرست است.';

  @override
  String get errorSecureStorageReadTitle => 'خطای خواندن حافظه امن';

  @override
  String get errorSecureStorageRead => 'نمی‌توانیم از فضای ذخیره‌سازی ایمن بخوانیم.';

  @override
  String get errorSecureStorageWriteTitle => 'خطای نوشتن حافظه امن';

  @override
  String get errorSecureStorageWrite => 'نتوانستیم در فضای ذخیره‌سازی ایمن بنویسیم.';

  @override
  String get errorSecureStorageClearTitle => 'خطای پاک کردن حافظه امن';

  @override
  String get errorSecureStorageClear => 'نتوانستیم فضای ذخیره‌سازی ایمن را پاک کنیم.';

  @override
  String get errorTokenExpiredTitle => 'جلسه منقضی شد';

  @override
  String get errorTokenExpired => 'لطفاً دوباره وارد شوید.';

  @override
  String get errorUserNotFoundTitle => 'کاربر پیدا نشد';

  @override
  String get errorUserNotFound => 'ما نتوانستیم آن کاربر را پیدا کنیم.';

  @override
  String get errorPermissionDeniedTitle => 'اجازه رد شد.';

  @override
  String get errorPermissionDenied => 'شما اجازه انجام این عمل را ندارید.';

  @override
  String get errorEmptyResultTitle => 'هیچ نتیجه ای وجود ندارد.';

  @override
  String get errorEmptyResult => 'هیچ نتیجه ای پیدا نکردیم';

  @override
  String get errorInvalidInputTitle => 'ورودی نامعتبر است.';

  @override
  String get errorInvalidInput => 'لطفا ورودی خود را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get errorEmptyTopicsTitle => 'هیچ موضوعی انتخاب نشده است.';

  @override
  String get errorEmptyTopics => 'لطفا حداقل یک موضوع را انتخاب کنید.';

  @override
  String get errorParsingTitle => 'خطای تجزیه.';

  @override
  String get errorParsing => 'ما نتوانستیم داده ها را پردازش کنیم.';

  @override
  String get errorUnknownTitle => 'خطای ناشناخته';

  @override
  String get errorUnknown => 'یک خطای غیرمنتظره رخ داد.';
}
