// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get back => 'назад';

  @override
  String get saveChangesTitle => 'Зберегти зміни';

  @override
  String get channels_section_title => 'Нове в додатку';

  @override
  String get go_to_groups_page => 'Перейдіть на сторінку груп';

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
      'Нова область для каналів WhatsApp і Telegram з відео, зображеннями та оновленнями – весь найцікавіший контент в одному місці.';

  @override
  String get newMessages => 'Нові повідомлення';

  @override
  String get addArea => 'Додати область';

  @override
  String get removeArea => 'Видалити область';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Ви впевнені, що хочете видалити $area із вибраних областей?';
  }

  @override
  String get channels => 'Канали';

  @override
  String get contactUsSuccessTitle => 'Успішно відправлено ✅';

  @override
  String get contactUsSuccessMessage =>
      'дякую! Ми отримали ваше повідомлення і зв’яжемося з вами якомога швидше.';

  @override
  String get selectCountry => 'Виберіть країну';

  @override
  String get areaManagmentTitle => 'Зона споживання новин';

  @override
  String get areaManagmentSubtitle => 'Мої Країни';

  @override
  String get sharedFromApp => 'Поділився з';

  @override
  String get textCopied => 'Текст скопійовано';

  @override
  String get queryIsEmpty => 'Запит порожній';

  @override
  String get queryIsEmptyTitle => 'Пошук порожній.';

  @override
  String get areaWereRemoved => 'Область успішно видалено';

  @override
  String get areaWereAdded => 'Область успішно додано';

  @override
  String get saveChangesMessage => 'Бажаєте зберегти внесені зміни?';

  @override
  String get busyLandingTitle => 'Ми майже приземляємось…';

  @override
  String get busyLandingSubtitle => 'Готуємо ваші новини';

  @override
  String get changeCountryTitle => 'До якої країни нам перейти?';

  @override
  String get changeCountrySubtitle =>
      'Коли ви обираєте країну, увесь вміст програми оновлюватиметься відповідно до вашого вибору.';

  @override
  String get dailySummary => 'Щоденний підсумок';

  @override
  String get lastUpdated => 'Останнє оновлення';

  @override
  String get saveChangesSubtitle => 'Бажаєте зберегти внесені зміни?';

  @override
  String get readMore => 'Читати далі';

  @override
  String get searchPageNoResultsPrefix => 'Не знайдено результатів для ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Не знайдено результатів для \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' в цій категорії';

  @override
  String get toPowerOn => 'щоб увімкнути';

  @override
  String get notificationsOffTitle => 'Сповіщення вимкнено';

  @override
  String get notificationsOffSubtitle =>
      'Схоже, доступ до сповіщень ще не ввімкнено.';

  @override
  String get newArticles => 'Нові статті';

  @override
  String get home => 'додому';

  @override
  String get changesApplyOnNextLaunch =>
      'Зміни буде застосовано під час наступного запуску програми.';

  @override
  String get enable => 'Увімкнути';

  @override
  String get stayUpdatedWithLatestNews => 'Будьте в курсі останніх новин';

  @override
  String get enableNotifications => 'Увімкнути сповіщення';

  @override
  String get error_details => 'Деталі помилки';

  @override
  String get error_title => 'Ой, щось не так';

  @override
  String get freeSearch => 'Безкоштовний пошук';

  @override
  String get aiPageSubtitle =>
      'Ця функція ще в розробці \n варто незабаром перевірити.';

  @override
  String get topicsSelectionTitle => 'Вибір тем новин';

  @override
  String get groups => 'Групи';

  @override
  String get aiPageTitle =>
      'Незабаром: ви зможете поспілкуватися з нашим ШІ про новини!';

  @override
  String get topicsSelectionSubtitle =>
      'Виберіть теми чи підтеми, які ви хотіли б бачити у своїй стрічці. Ви завжди можете змінити їх тут.';

  @override
  String get failedToLoadTopics => 'Не вдалося завантажити теми';

  @override
  String get settingsNote => 'Ви можете будь-коли змінити налаштування';

  @override
  String get lang => 'Мова';

  @override
  String get failed_to_load_data =>
      'Не вдалося завантажити дані. Перевірте підключення до Інтернету та повторіть спробу.';

  @override
  String get changeLang => 'Змінити мову';

  @override
  String get notNow => 'Не зараз';

  @override
  String get notificationsPermissionRationale =>
      'Увімкнення сповіщень дає змогу бути в курсі важливих новин, термінових оновлень і персоналізованого вмісту, тож ви ніколи не пропустите нічого важливого для вас.';

  @override
  String get skipToSuggestedContent =>
      'Перейдіть до вмісту, який ми вибрали для вас';

  @override
  String get lets_go => 'ходімо';

  @override
  String get keepGoing => 'Продовжуйте!';

  @override
  String get skip => 'Пропустити';

  @override
  String get save => 'зберегти';

  @override
  String get next => 'Далі';

  @override
  String get pleaseSelectLanguage => 'Будь ласка, виберіть мову';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Виберіть хоча б одну тему';

  @override
  String get notificationTitle => 'Хочете бути в курсі подій?';

  @override
  String get search => 'Пошук';

  @override
  String get searchPageEmptySubtitle => 'Що б ви хотіли шукати?';

  @override
  String get searchPageEmptyTitle =>
      'Введіть ключове слово або тему для пошуку';

  @override
  String get notificationSubTitle =>
      'Ви можете ввімкнути спливаючі сповіщення для будь-якої теми, яка вас цікавить.';

  @override
  String get whatIsInteresting => 'Що вас цікавить';

  @override
  String get subTextWhatIsInteresting =>
      'Щоб надсилати лише те, що дійсно актуально, давайте спочатку відзначимо те, що вас цікавить.';

  @override
  String get getStarted => 'Почніть роботу';

  @override
  String get try_again => 'Спробуйте знову';

  @override
  String get allow => 'Дозволити';

  @override
  String get noPermissions => 'Немає дозволів';

  @override
  String get solution_suggestions => 'Пропозиції щодо вирішення';

  @override
  String get allowNotifications => 'Дозволити сповіщення';

  @override
  String get notifications => 'Сповіщення';

  @override
  String get notificationsEnabled => 'Сповіщення ввімкнено';

  @override
  String get notificationsDenied => 'Сповіщення відхилено';

  @override
  String get pleaseWait => 'Будь ласка, зачекайте';

  @override
  String get all => 'все';

  @override
  String get cancel => 'Скасувати';

  @override
  String get openSettings => 'Відкрийте налаштування';

  @override
  String get subTextNotifications =>
      'Ви можете ввімкнути спливаючі сповіщення для кожної теми, яка вас цікавить.';

  @override
  String get troubleshooting_tips => 'Поради щодо усунення несправностей';

  @override
  String get welcome =>
      'Ласкаво просимо до програми новин, персоналізованої спеціально для вас!';

  @override
  String get continueReading => 'Читайте далі';

  @override
  String get share => 'Поділіться';

  @override
  String get area => 'Площа';

  @override
  String get chooseYourAreaHint =>
      'Виберіть свій регіон, щоб отримувати локалізовані оновлення новин';

  @override
  String get chooseYourAreaHintUnused =>
      'Виберіть потрібний регіон новин.\nУ програмі також можна вибрати додаткові країни.';

  @override
  String get chooseYourLangHint =>
      'Виберіть свою мову, ви завжди можете змінити її пізніше.';

  @override
  String get topics => 'Теми';

  @override
  String get chooseTopicsHint =>
      'Вибирайте теми, які вас цікавлять, ви завжди можете змінити їх у налаштуваннях.';

  @override
  String get categories => 'Категорії';

  @override
  String get manageNotifications => 'Керувати сповіщеннями';

  @override
  String get languageAndRegion => 'Мова та регіон';

  @override
  String get about => 'про';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get contactUs => 'Зв\'яжіться з нами';

  @override
  String get networkStatusPartialTitle => 'Проблема з сервером';

  @override
  String get networkStatusOfflineTitle => 'Немає підключення до Інтернету';

  @override
  String get networkStatusPartialMessage =>
      'Ми можемо отримати доступ до Інтернету, але не до сервера.\\nСпробуйте ще раз за мить.';

  @override
  String get networkStatusOfflineMessage =>
      'Немає підключення до Інтернету. Ми показуємо старіші статті; підключіться до Інтернету, щоб переглянути останні новини.';

  @override
  String get networkStatusInternetLabel => 'підключення до Інтернету';

  @override
  String get networkStatusServerLabel => 'Підключення до сервера';

  @override
  String get networkStatusDismiss => 'зрозумів';

  @override
  String get networkStatusConnected => 'Підключено';

  @override
  String get networkStatusDisconnected => 'Не підключено';

  @override
  String get offlineMode => 'Автономний режим';

  @override
  String get changesSavedSuccessfully => 'Зміни успішно збережено';

  @override
  String get unableToSaveChanges => 'Не вдалося зберегти зміни';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Спливаючі повідомлення';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Легко налаштуйте свої сповіщення. Увімкніть або вимкніть push-повідомлення для будь-якої теми, яка вас цікавить.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Update on the way!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Незабаром ви зможете вибрати, з яких регіонів світу ви хочете отримувати новини та оновлення.';

  @override
  String get info => 'Інформація';

  @override
  String get success => 'Успіх';

  @override
  String get saveChanges => 'Зберегти зміни';

  @override
  String get saveChangesConfirmation => 'Бажаєте зберегти зміни?';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get unableToOpenReference => 'Неможливо відкрити це посилання';

  @override
  String searchPageNoResults(String query) {
    return 'Немає результатів для \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'У цій категорії не знайдено результатів для \"$query\".';
  }

  @override
  String get newsTopics => 'Теми новин';

  @override
  String get errorNoInternet => 'Перевірте підключення та повторіть спробу.';

  @override
  String get errorNoInternetTitle => 'Немає підключення до Інтернету.';

  @override
  String get errorTimeout => 'Час очікування запиту минув. Спробуйте пізніше.';

  @override
  String get errorTimeoutTitle => 'Час очікування запиту минув.';

  @override
  String get errorServer => 'Сталася помилка сервера. Спробуйте ще раз.';

  @override
  String get errorServerTitle => 'Помилка сервера.';

  @override
  String get errorUnauthorized =>
      'Ви не авторизовані. Увійдіть і повторіть спробу.';

  @override
  String get errorUnauthorizedTitle => 'Несанкціонований.';

  @override
  String get errorForbidden => 'Ви не маєте дозволу на виконання цієї дії.';

  @override
  String get errorForbiddenTitle => 'Доступ заборонено.';

  @override
  String get errorNotFound => 'Ми не змогли знайти те, що ви шукали.';

  @override
  String get errorNotFoundTitle => 'Не знайдено.';

  @override
  String get updateArticle => 'Більш детальну інформацію оновлено';

  @override
  String get errorValidation =>
      'Деяка інформація виглядає недійсною. Будь ласка, перегляньте та повторіть спробу.';

  @override
  String get agreeMail =>
      'Я погоджуюся отримувати оновлення та інформаційні бюлетені електронною поштою.';

  @override
  String get sendUsEmail => 'Надішліть нам електронний лист';

  @override
  String get discardChangesTitle => 'Скасувати зміни?';

  @override
  String get discardChangesMessage =>
      'У вас є незбережені зміни. Якщо ви продовжите, вони будуть втрачені.';

  @override
  String get discardButton => 'Відкинути';

  @override
  String get stayButton => 'Залишся';

  @override
  String get changeCountryConfirm => 'Змінити призначення новин';

  @override
  String get otherWaysToContact => 'Інші способи зв\'язку';

  @override
  String get agreePrivacy => 'Я прочитав і погоджуюся з ';

  @override
  String get contactUsSubtitle =>
      'Не соромтеся зв’язатися з нами за допомогою форми нижче.';

  @override
  String get fullName => 'ПІБ';

  @override
  String get mail => 'Адреса електронної пошти';

  @override
  String get message => 'повідомлення';

  @override
  String get errorValidationTitle => 'Невірний вхід.';

  @override
  String get similarSources => 'Подібні джерела';

  @override
  String get send => 'Надіслати';

  @override
  String get errorGeneric => 'Щось пішло не так. Спробуйте ще раз.';

  @override
  String get errorGenericTitle => 'Щось пішло не так.';

  @override
  String get emptyResults_title => 'Немає відповідних результатів';

  @override
  String get emptyResults_noResults => 'Результатів не знайдено.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Спробуйте змінити ключові слова або виберіть іншу тему.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'Спробуйте змінити ключові слова.';

  @override
  String get emptyResults_inThisTopic => 'в цій темі';

  @override
  String get errorBadRequestTitle => 'Поганий запит.';

  @override
  String get errorBadRequest => 'Запит був недійсним. Спробуйте ще раз.';

  @override
  String get errorNotModifiedTitle => 'Не змінено.';

  @override
  String get errorNotModified =>
      'З часу вашого останнього запиту нічого не змінилося.';

  @override
  String get errorNetworkTitle => 'Помилка мережі.';

  @override
  String get errorNetwork =>
      'Не вдалося підключитися до мережі. Перевірте підключення та повторіть спробу.';

  @override
  String get errorDataIsEmptyTitle => 'Немає даних.';

  @override
  String get errorDataIsEmpty => 'Не вдалося знайти дані для відображення.';

  @override
  String get errorConflictTitle => 'Конфлікт.';

  @override
  String get errorConflict =>
      'Запит суперечив наявним даним. Спробуйте ще раз.';

  @override
  String get errorServerValidationTitle => 'Помилка підтвердження.';

  @override
  String get errorServerValidation =>
      'Сервер відхилив деякі дані. Будь ласка, перегляньте та повторіть спробу.';

  @override
  String get errorWriteFileTitle => 'Помилка запису.';

  @override
  String get errorWriteFile => 'Не вдалося зберегти файл. Спробуйте ще раз.';

  @override
  String get errorReadFileTitle => 'Прочитати не вдалося.';

  @override
  String get errorReadFile => 'Не вдалося прочитати файл. Спробуйте ще раз.';

  @override
  String get errorFileNotFoundTitle => 'Файл не знайдено.';

  @override
  String get errorFileNotFound =>
      'Нам не вдалося знайти файл, який ви шукаєте.';

  @override
  String get errorInsufficientStorageTitle => 'Недостатньо пам\'яті.';

  @override
  String get errorInsufficientStorage => 'Звільніть місце та повторіть спробу.';

  @override
  String get errorDatabaseReadTitle => 'Помилка читання бази даних.';

  @override
  String get errorDatabaseRead => 'Ми не змогли прочитати з бази даних.';

  @override
  String get errorDatabaseWriteTitle => 'Помилка запису бази даних.';

  @override
  String get errorDatabaseWrite => 'Не вдалося зберегти в базі даних.';

  @override
  String get errorDatabaseConnectionTitle =>
      'Помилка підключення до бази даних.';

  @override
  String get errorDatabaseConnection =>
      'Не вдалося підключитися до бази даних.';

  @override
  String get errorAuthTitle => 'Помилка автентифікації.';

  @override
  String get errorAuth => 'Увійдіть і повторіть спробу.';

  @override
  String get errorInvalidCredentialsTitle => 'Недійсні облікові дані.';

  @override
  String get errorInvalidCredentials =>
      'Ім\'я користувача або пароль неправильні.';

  @override
  String get errorSecureStorageReadTitle =>
      'Помилка читання безпечного сховища.';

  @override
  String get errorSecureStorageRead =>
      'Не вдалося прочитати з безпечного сховища.';

  @override
  String get errorSecureStorageWriteTitle =>
      'Помилка запису в безпечне сховище.';

  @override
  String get errorSecureStorageWrite =>
      'Не вдалося записати в безпечне сховище.';

  @override
  String get errorSecureStorageClearTitle =>
      'Помилка очищення безпечного сховища.';

  @override
  String get errorSecureStorageClear => 'Не вдалося очистити безпечне сховище.';

  @override
  String get errorTokenExpiredTitle => 'Сеанс закінчився.';

  @override
  String get errorTokenExpired => 'Увійдіть знову.';

  @override
  String get errorUserNotFoundTitle => 'Користувача не знайдено.';

  @override
  String get errorUserNotFound => 'Нам не вдалося знайти цього користувача.';

  @override
  String get errorPermissionDeniedTitle => 'У дозволі відмовлено.';

  @override
  String get errorPermissionDenied =>
      'Ви не маєте дозволу на виконання цієї дії.';

  @override
  String get errorEmptyResultTitle => 'Результатів немає.';

  @override
  String get errorEmptyResult => 'Не вдалося знайти жодного результату.';

  @override
  String get errorInvalidInputTitle => 'Невірний вхід.';

  @override
  String get errorInvalidInput => 'Перевірте введені дані та повторіть спробу.';

  @override
  String get errorEmptyTopicsTitle => 'Теми не вибрано.';

  @override
  String get errorEmptyTopics => 'Виберіть принаймні одну тему.';

  @override
  String get errorParsingTitle => 'Помилка аналізу.';

  @override
  String get errorParsing => 'Не вдалося обробити дані.';

  @override
  String get errorUnknownTitle => 'Невідома помилка.';

  @override
  String get errorUnknown => 'Сталася неочікувана помилка.';
}
