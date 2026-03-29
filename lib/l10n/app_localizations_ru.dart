// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get back => 'назад';

  @override
  String get saveChangesTitle => 'Сохранить изменения';

  @override
  String get channels_section_title => 'Новое в приложении';

  @override
  String get go_to_groups_page => 'Перейти на страницу группы';

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
      'Новая область для каналов WhatsApp и Telegram с видео, изображениями и обновлениями — весь самый интересный контент в одном месте.';

  @override
  String get newMessages => 'Новые сообщения';

  @override
  String get addArea => 'Добавить область';

  @override
  String get removeArea => 'Удалить область';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Вы уверены, что хотите удалить $area из выбранных вами областей?';
  }

  @override
  String get channels => 'Каналы';

  @override
  String get contactUsSuccessTitle => 'Отправлено успешно ✅';

  @override
  String get contactUsSuccessMessage =>
      'Спасибо! Мы получили ваше сообщение и свяжемся с вами как можно скорее.';

  @override
  String get selectCountry => 'Выберите страну';

  @override
  String get areaManagmentTitle => 'Новости Область потребления';

  @override
  String get areaManagmentSubtitle => 'Мои страны';

  @override
  String get sharedFromApp => 'Доступно из';

  @override
  String get textCopied => 'Текст скопирован';

  @override
  String get queryIsEmpty => 'Запрос пуст';

  @override
  String get queryIsEmptyTitle => 'Поиск пуст.';

  @override
  String get areaWereRemoved => 'Область успешно удалена';

  @override
  String get areaWereAdded => 'Область успешно добавлена';

  @override
  String get saveChangesMessage => 'Хотите сохранить внесенные изменения?';

  @override
  String get busyLandingTitle => 'Мы почти приземляемся…';

  @override
  String get busyLandingSubtitle => 'Мы готовим ваши новости';

  @override
  String get changeCountryTitle => 'В какую страну нам следует переключиться?';

  @override
  String get changeCountrySubtitle =>
      'Когда вы выберете страну, весь контент в приложении обновится в соответствии с вашим выбором.';

  @override
  String get dailySummary => 'Ежедневная сводка';

  @override
  String get lastUpdated => 'Последнее обновление';

  @override
  String get saveChangesSubtitle => 'Хотите сохранить внесенные изменения?';

  @override
  String get readMore => 'Подробнее';

  @override
  String get searchPageNoResultsPrefix => 'Результаты не найдены для ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Результаты не найдены для \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' в этой категории';

  @override
  String get toPowerOn => 'включить питание';

  @override
  String get notificationsOffTitle => 'Уведомления отключены';

  @override
  String get notificationsOffSubtitle =>
      'Похоже, доступ к уведомлениям еще не включен.';

  @override
  String get newArticles => 'Новые статьи';

  @override
  String get home => 'дом';

  @override
  String get changesApplyOnNextLaunch =>
      'Изменения вступят в силу при следующем запуске приложения.';

  @override
  String get enable => 'Включить';

  @override
  String get stayUpdatedWithLatestNews => 'Будьте в курсе последних новостей';

  @override
  String get enableNotifications => 'Включить уведомления';

  @override
  String get error_details => 'Подробности ошибки';

  @override
  String get error_title => 'Ой, что-то не так';

  @override
  String get freeSearch => 'Бесплатный поиск';

  @override
  String get aiPageSubtitle =>
      'Эта функция все еще находится в разработке \n стоит вернуться сюда в ближайшее время.';

  @override
  String get topicsSelectionTitle => 'Выбор тем новостей';

  @override
  String get groups => 'Группы';

  @override
  String get aiPageTitle =>
      'Скоро: вы сможете общаться с нашим искусственным интеллектом о новостях!';

  @override
  String get topicsSelectionSubtitle =>
      'Выберите темы или подтемы, которые вы хотели бы видеть в своей ленте. Вы всегда можете изменить их здесь.';

  @override
  String get failedToLoadTopics => 'Не удалось загрузить темы.';

  @override
  String get settingsNote => 'Вы можете редактировать настройки в любое время';

  @override
  String get lang => 'Язык';

  @override
  String get failed_to_load_data =>
      'Нам не удалось загрузить данные. Пожалуйста, проверьте подключение к Интернету и повторите попытку.';

  @override
  String get changeLang => 'Изменить язык';

  @override
  String get notNow => 'Не сейчас';

  @override
  String get notificationsPermissionRationale =>
      'Включение уведомлений позволяет вам быть в курсе важных новостей, срочных обновлений и персонализированного контента, поэтому вы никогда не пропустите ничего важного для вас.';

  @override
  String get skipToSuggestedContent =>
      'Перейти к контенту, который мы выбрали для вас';

  @override
  String get lets_go => 'Поехали';

  @override
  String get keepGoing => 'Продолжать идти!';

  @override
  String get skip => 'Пропустить';

  @override
  String get save => 'Сохранить';

  @override
  String get next => 'Далее';

  @override
  String get pleaseSelectLanguage => 'пожалуйста, выберите язык';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Выберите хотя бы одну тему';

  @override
  String get notificationTitle => 'Хотите оставаться в курсе?';

  @override
  String get search => 'Поиск';

  @override
  String get searchPageEmptySubtitle => 'Что бы вы хотели найти?';

  @override
  String get searchPageEmptyTitle =>
      'Введите ключевое слово или тему для поиска';

  @override
  String get notificationSubTitle =>
      'Вы можете включить всплывающие уведомления по любой интересующей вас теме.';

  @override
  String get whatIsInteresting => 'Что вас интересует';

  @override
  String get subTextWhatIsInteresting =>
      'Чтобы отправлять только то, что действительно актуально, давайте сначала отметим то, что вас интересует.';

  @override
  String get getStarted => 'Начать';

  @override
  String get try_again => 'Попробуйте еще раз';

  @override
  String get allow => 'Разрешить';

  @override
  String get noPermissions => 'Нет разрешений';

  @override
  String get solution_suggestions => 'Предложения по решению';

  @override
  String get allowNotifications => 'Разрешить уведомления';

  @override
  String get notifications => 'Уведомления';

  @override
  String get notificationsEnabled => 'Уведомления включены';

  @override
  String get notificationsDenied => 'Уведомления отклонены';

  @override
  String get pleaseWait => 'Пожалуйста, подождите';

  @override
  String get all => 'все';

  @override
  String get cancel => 'Отмена';

  @override
  String get openSettings => 'Открыть настройки';

  @override
  String get subTextNotifications =>
      'Вы можете включить всплывающие уведомления по каждой интересующей вас теме.';

  @override
  String get troubleshooting_tips => 'Советы по устранению неполадок';

  @override
  String get welcome =>
      'Добро пожаловать в новостное приложение, персонализированное специально для вас!';

  @override
  String get continueReading => 'Продолжить чтение';

  @override
  String get share => 'Поделиться';

  @override
  String get area => 'Площадь';

  @override
  String get chooseYourAreaHint =>
      'Выберите свой регион, чтобы получать локализованные обновления новостей';

  @override
  String get chooseYourAreaHintUnused =>
      'Выберите нужный регион новостей.\nВ приложении вы также можете выбрать дополнительные страны.';

  @override
  String get chooseYourLangHint =>
      'Выберите язык, вы всегда сможете изменить его позже.';

  @override
  String get topics => 'Темы';

  @override
  String get chooseTopicsHint =>
      'Выбирайте темы, которые вас интересуют, вы всегда можете изменить их в настройках.';

  @override
  String get categories => 'Категории';

  @override
  String get manageNotifications => 'Управление уведомлениями';

  @override
  String get languageAndRegion => 'Язык и регион';

  @override
  String get about => 'О';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get contactUs => 'Свяжитесь с нами';

  @override
  String get networkStatusPartialTitle => 'Проблема с сервером';

  @override
  String get networkStatusOfflineTitle => 'Нет подключения к Интернету';

  @override
  String get networkStatusPartialMessage =>
      'Мы можем подключиться к Интернету, но не к серверу.\\nПовторите попытку через минуту.';

  @override
  String get networkStatusOfflineMessage =>
      'Нет подключения к Интернету. Мы показываем старые статьи; подключитесь к Интернету, чтобы увидеть последние новости.';

  @override
  String get networkStatusInternetLabel => 'подключение к Интернету';

  @override
  String get networkStatusServerLabel => 'Подключение к серверу';

  @override
  String get networkStatusDismiss => 'понял';

  @override
  String get networkStatusConnected => 'Подключено';

  @override
  String get networkStatusDisconnected => 'Не подключено';

  @override
  String get offlineMode => 'Офлайн-режим';

  @override
  String get changesSavedSuccessfully => 'Изменения успешно сохранены';

  @override
  String get unableToSaveChanges => 'Не удалось сохранить изменения';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Всплывающие уведомления';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Легко настройте свои оповещения. Включите или отключите push-уведомления для любой темы, которая вас интересует.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Обновление уже в пути!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Вскоре вы сможете выбирать, из каких регионов мира вы хотите получать новости и обновления.';

  @override
  String get info => 'Информация';

  @override
  String get success => 'Успех';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get saveChangesConfirmation => 'Хотите сохранить изменения?';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get unableToOpenReference => 'Невозможно открыть эту ссылку';

  @override
  String searchPageNoResults(String query) {
    return 'По запросу \"$query\" результатов не найдено.';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'В этой категории результатов не найдено по запросу «$query».';
  }

  @override
  String get newsTopics => 'Темы новостей';

  @override
  String get errorNoInternet =>
      'Пожалуйста, проверьте подключение и повторите попытку.';

  @override
  String get errorNoInternetTitle => 'Нет подключения к Интернету.';

  @override
  String get errorTimeout =>
      'Время запроса истекло. Пожалуйста, повторите попытку позже.';

  @override
  String get errorTimeoutTitle => 'Время запроса истекло.';

  @override
  String get errorServer =>
      'Произошла ошибка сервера. Пожалуйста, попробуйте еще раз.';

  @override
  String get errorServerTitle => 'Ошибка сервера.';

  @override
  String get errorUnauthorized =>
      'Вы не авторизованы. Пожалуйста, войдите в систему и повторите попытку.';

  @override
  String get errorUnauthorizedTitle => 'Несанкционированный.';

  @override
  String get errorForbidden =>
      'У вас нет разрешения на выполнение этого действия.';

  @override
  String get errorForbiddenTitle => 'Доступ запрещен.';

  @override
  String get errorNotFound => 'Мы не смогли найти то, что вы искали.';

  @override
  String get errorNotFoundTitle => 'Не найден.';

  @override
  String get updateArticle => 'Более подробная информация обновлена';

  @override
  String get errorValidation =>
      'Некоторая информация выглядит недействительной. Пожалуйста, просмотрите и повторите попытку.';

  @override
  String get agreeMail =>
      'Я согласен получать обновления и информационные бюллетени по электронной почте.';

  @override
  String get sendUsEmail => 'Отправьте нам электронное письмо';

  @override
  String get discardChangesTitle => 'Отменить изменения?';

  @override
  String get discardChangesMessage =>
      'У вас есть несохраненные изменения. Если вы продолжите, они будут потеряны.';

  @override
  String get discardButton => 'Отбросить';

  @override
  String get stayButton => 'Останься';

  @override
  String get changeCountryConfirm => 'Переключить направление новостей';

  @override
  String get otherWaysToContact => 'Другие способы связи';

  @override
  String get agreePrivacy => 'Я прочитал и согласен с ';

  @override
  String get contactUsSubtitle =>
      'Не стесняйтесь обращаться к нам, используя форму ниже.';

  @override
  String get fullName => 'Полное имя';

  @override
  String get mail => 'Адрес электронной почты';

  @override
  String get message => 'Сообщение';

  @override
  String get errorValidationTitle => 'Неверный ввод.';

  @override
  String get similarSources => 'Похожие источники';

  @override
  String get send => 'Отправить';

  @override
  String get errorGeneric =>
      'Что-то пошло не так. Пожалуйста, попробуйте еще раз.';

  @override
  String get errorGenericTitle => 'Что-то пошло не так.';

  @override
  String get emptyResults_title => 'Нет соответствующих результатов';

  @override
  String get emptyResults_noResults => 'Результаты не найдены.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Попробуйте изменить ключевые слова или выбрать другую тему.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'Попробуйте изменить ключевые слова.';

  @override
  String get emptyResults_inThisTopic => 'в этой теме';

  @override
  String get errorBadRequestTitle => 'Плохой запрос.';

  @override
  String get errorBadRequest =>
      'Запрос недействителен. Пожалуйста, попробуйте еще раз.';

  @override
  String get errorNotModifiedTitle => 'Не модифицировано.';

  @override
  String get errorNotModified =>
      'С момента вашего последнего запроса ничего не изменилось.';

  @override
  String get errorNetworkTitle => 'Ошибка сети.';

  @override
  String get errorNetwork =>
      'Мы не смогли подключиться к сети. Проверьте подключение и повторите попытку.';

  @override
  String get errorDataIsEmptyTitle => 'Данные отсутствуют.';

  @override
  String get errorDataIsEmpty => 'Нам не удалось найти данные для отображения.';

  @override
  String get errorConflictTitle => 'Конфликт.';

  @override
  String get errorConflict =>
      'Запрос противоречил существующим данным. Пожалуйста, попробуйте еще раз.';

  @override
  String get errorServerValidationTitle => 'Ошибка валидации.';

  @override
  String get errorServerValidation =>
      'Сервер отклонил некоторые данные. Пожалуйста, просмотрите и повторите попытку.';

  @override
  String get errorWriteFileTitle => 'Записать не удалось.';

  @override
  String get errorWriteFile =>
      'Нам не удалось сохранить файл. Пожалуйста, попробуйте еще раз.';

  @override
  String get errorReadFileTitle => 'Прочитать не удалось.';

  @override
  String get errorReadFile =>
      'Мы не смогли прочитать файл. Пожалуйста, попробуйте еще раз.';

  @override
  String get errorFileNotFoundTitle => 'Файл не найден.';

  @override
  String get errorFileNotFound =>
      'Нам не удалось найти файл, который вы ищете.';

  @override
  String get errorInsufficientStorageTitle =>
      'Недостаточно места для хранения.';

  @override
  String get errorInsufficientStorage =>
      'Освободите место и повторите попытку.';

  @override
  String get errorDatabaseReadTitle => 'Ошибка чтения базы данных.';

  @override
  String get errorDatabaseRead =>
      'Мы не смогли прочитать данные из базы данных.';

  @override
  String get errorDatabaseWriteTitle => 'Ошибка записи базы данных.';

  @override
  String get errorDatabaseWrite => 'Мы не смогли сохранить в базу данных.';

  @override
  String get errorDatabaseConnectionTitle =>
      'Ошибка подключения к базе данных.';

  @override
  String get errorDatabaseConnection =>
      'Нам не удалось подключиться к базе данных.';

  @override
  String get errorAuthTitle => 'Ошибка аутентификации.';

  @override
  String get errorAuth => 'Пожалуйста, войдите в систему и повторите попытку.';

  @override
  String get errorInvalidCredentialsTitle => 'Неверные учетные данные.';

  @override
  String get errorInvalidCredentials => 'Имя пользователя или пароль неверны.';

  @override
  String get errorSecureStorageReadTitle =>
      'Ошибка чтения безопасного хранилища.';

  @override
  String get errorSecureStorageRead =>
      'Нам не удалось прочитать данные из безопасного хранилища.';

  @override
  String get errorSecureStorageWriteTitle =>
      'Ошибка записи в безопасное хранилище.';

  @override
  String get errorSecureStorageWrite =>
      'Мы не смогли записать данные в безопасное хранилище.';

  @override
  String get errorSecureStorageClearTitle =>
      'Ошибка очистки безопасного хранилища.';

  @override
  String get errorSecureStorageClear =>
      'Не удалось очистить безопасное хранилище.';

  @override
  String get errorTokenExpiredTitle => 'Сессия истекла.';

  @override
  String get errorTokenExpired => 'Пожалуйста, войдите снова.';

  @override
  String get errorUserNotFoundTitle => 'Пользователь не найден.';

  @override
  String get errorUserNotFound => 'Нам не удалось найти этого пользователя.';

  @override
  String get errorPermissionDeniedTitle => 'Разрешение отклонено.';

  @override
  String get errorPermissionDenied =>
      'У вас нет разрешения на выполнение этого действия.';

  @override
  String get errorEmptyResultTitle => 'Никаких результатов.';

  @override
  String get errorEmptyResult => 'Мы не смогли найти никаких результатов.';

  @override
  String get errorInvalidInputTitle => 'Неверный ввод.';

  @override
  String get errorInvalidInput =>
      'Пожалуйста, проверьте введенные данные и повторите попытку.';

  @override
  String get errorEmptyTopicsTitle => 'Темы не выбраны.';

  @override
  String get errorEmptyTopics => 'Пожалуйста, выберите хотя бы одну тему.';

  @override
  String get errorParsingTitle => 'Ошибка разбора.';

  @override
  String get errorParsing => 'Мы не смогли обработать данные.';

  @override
  String get errorUnknownTitle => 'Неизвестная ошибка.';

  @override
  String get errorUnknown => 'Произошла непредвиденная ошибка.';
}
