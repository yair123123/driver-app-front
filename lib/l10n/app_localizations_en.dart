// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get back => 'back';

  @override
  String get saveChangesTitle => 'Save Changes';

  @override
  String get channels_section_title => 'New in the app';

  @override
  String get go_to_groups_page => 'Go to the groups page';

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
      'A new area for WhatsApp and Telegram channels with videos, images and updates – all the most interesting content in one place.';

  @override
  String get newMessages => 'New Messages';

  @override
  String get addArea => 'Add Area';

  @override
  String get removeArea => 'Remove Area';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Are you sure you want to remove $area from your selected areas?';
  }

  @override
  String get channels => 'Channels';

  @override
  String get contactUsSuccessTitle => 'Sent successfully ✅';

  @override
  String get contactUsSuccessMessage =>
      'Thank you! We received your message and will get back to you as soon as possible.';

  @override
  String get selectCountry => 'Select Country';

  @override
  String get areaManagmentTitle => 'News Consumption Area';

  @override
  String get areaManagmentSubtitle => 'My Countries';

  @override
  String get sharedFromApp => 'Shared from';

  @override
  String get textCopied => 'Text copied';

  @override
  String get queryIsEmpty => 'Query is empty';

  @override
  String get queryIsEmptyTitle => 'Search is empty.';

  @override
  String get areaWereRemoved => 'Area were removed successfully';

  @override
  String get areaWereAdded => 'Area were added successfully';

  @override
  String get saveChangesMessage => 'Do you want to save the changes you made?';

  @override
  String get busyLandingTitle => 'We’re almost landing…';

  @override
  String get busyLandingSubtitle => 'We’re preparing your news';

  @override
  String get changeCountryTitle => 'Which country should we switch to?';

  @override
  String get changeCountrySubtitle =>
      'When you choose a country, all content in the app will update according to your selection.';

  @override
  String get dailySummary => 'Daily summary';

  @override
  String get lastUpdated => 'Last updated';

  @override
  String get saveChangesSubtitle => 'Do you want to save the changes you made?';

  @override
  String get readMore => 'Read more';

  @override
  String get searchPageNoResultsPrefix => 'No results found for ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'No results found for \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' in this category';

  @override
  String get toPowerOn => 'to power on';

  @override
  String get notificationsOffTitle => 'Notifications off';

  @override
  String get notificationsOffSubtitle =>
      'It looks like notification access hasn\'t been enabled yet.';

  @override
  String get newArticles => 'New Articles';

  @override
  String get home => 'home';

  @override
  String get changesApplyOnNextLaunch =>
      'Changes will be applied on the next app launch.';

  @override
  String get enable => 'Enable';

  @override
  String get stayUpdatedWithLatestNews => 'Stay updated with the latest news';

  @override
  String get enableNotifications => 'Enable Notifications';

  @override
  String get error_details => 'Error details';

  @override
  String get error_title => 'Oops something wrong';

  @override
  String get freeSearch => 'Free Search';

  @override
  String get aiPageSubtitle =>
      'This feature is still in development \n worth checking back soon.';

  @override
  String get topicsSelectionTitle => 'News Topics Selection';

  @override
  String get groups => 'Groups';

  @override
  String get aiPageTitle =>
      'Coming soon: you\'ll be able to chat with our AI about the news!';

  @override
  String get topicsSelectionSubtitle =>
      'Choose topics or subtopics you\'d like to see in your feed. You can always change them here.';

  @override
  String get failedToLoadTopics => 'Failed to load topics';

  @override
  String get settingsNote => 'You can edit the settings anytime';

  @override
  String get lang => 'Language';

  @override
  String get failed_to_load_data =>
      'We couldn\'t load the data. Please check your internet connection and try again.';

  @override
  String get changeLang => 'Change language';

  @override
  String get notNow => 'Not Now';

  @override
  String get notificationsPermissionRationale =>
      'Enabling notifications lets you stay up to date with important news, urgent updates, and personalized content – so you never miss anything that matters to you.';

  @override
  String get skipToSuggestedContent => 'Skip to the content we picked for you';

  @override
  String get lets_go => 'Let\'s go';

  @override
  String get keepGoing => 'Keep Going!';

  @override
  String get skip => 'Skip';

  @override
  String get save => 'Save';

  @override
  String get next => 'Next';

  @override
  String get pleaseSelectLanguage => 'please Select a Language';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Select at least one topic';

  @override
  String get notificationTitle => 'Want to stay updated?';

  @override
  String get search => 'Search';

  @override
  String get searchPageEmptySubtitle => 'What would you like to search?';

  @override
  String get searchPageEmptyTitle => 'Type a keyword or topic to search';

  @override
  String get notificationSubTitle =>
      'You can turn on pop-up notifications for any topic that interests you.';

  @override
  String get whatIsInteresting => 'What interests you';

  @override
  String get subTextWhatIsInteresting =>
      'To send only what’s truly relevant, let’s first mark what interests you.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get try_again => 'Try again';

  @override
  String get allow => 'Allow';

  @override
  String get noPermissions => 'No Permissions';

  @override
  String get solution_suggestions => 'Solution suggestions';

  @override
  String get allowNotifications => 'Allow Notifications';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsEnabled => 'Notifications Enabled';

  @override
  String get notificationsDenied => 'Notifications Denied';

  @override
  String get pleaseWait => 'Please Wait';

  @override
  String get all => 'all';

  @override
  String get cancel => 'Cancel';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get subTextNotifications =>
      'You can enable pop-up notifications for every topic that interests you.';

  @override
  String get troubleshooting_tips => 'Troubleshooting Tips';

  @override
  String get welcome => 'Welcome to the news app, personalized just for you!';

  @override
  String get continueReading => 'Continue reading';

  @override
  String get share => 'Share';

  @override
  String get area => 'Area';

  @override
  String get chooseYourAreaHint =>
      'Choose your area to get localized news updates';

  @override
  String get chooseYourAreaHintUnused =>
      'Choose the news region you want.\nWithin the app, you can select additional countries as well.';

  @override
  String get chooseYourLangHint =>
      'Choose your language, you can always change it later.';

  @override
  String get topics => 'Topics';

  @override
  String get chooseTopicsHint =>
      'Choose the topics that interest you, you can always change them in the settings.';

  @override
  String get categories => 'Categories';

  @override
  String get manageNotifications => 'Manage notifications';

  @override
  String get languageAndRegion => 'Language & region';

  @override
  String get about => 'About';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get contactUs => 'Contact us';

  @override
  String get networkStatusPartialTitle => 'Server issue';

  @override
  String get networkStatusOfflineTitle => 'No internet connection';

  @override
  String get networkStatusPartialMessage =>
      'We can reach the internet but not the server.\\nTry again in a moment.';

  @override
  String get networkStatusOfflineMessage =>
      'No internet connection. We\'re showing older articles; connect to the internet to see the latest stories.';

  @override
  String get networkStatusInternetLabel => 'Internet connection';

  @override
  String get networkStatusServerLabel => 'Server connection';

  @override
  String get networkStatusDismiss => 'Got it';

  @override
  String get networkStatusConnected => 'Connected';

  @override
  String get networkStatusDisconnected => 'Not connected';

  @override
  String get offlineMode => 'Offline mode';

  @override
  String get changesSavedSuccessfully => 'Changes saved successfully';

  @override
  String get unableToSaveChanges => 'Unable to save changes';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Pop-up notifications';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Customize your alerts easily. Turn push notifications on or off for any topic that interests you.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Update on the way!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Soon you\'ll be able to choose which regions of the world you want to get news and updates from.';

  @override
  String get info => 'Info';

  @override
  String get success => 'Success';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get saveChangesConfirmation => 'Do you want to save your changes?';

  @override
  String get confirm => 'Confirm';

  @override
  String get unableToOpenReference => 'Unable to open this reference';

  @override
  String searchPageNoResults(String query) {
    return 'No results found for \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'No results found for \"$query\" in this category';
  }

  @override
  String get newsTopics => 'News topics';

  @override
  String get errorNoInternet => 'Please check your connection and try again.';

  @override
  String get errorNoInternetTitle => 'No internet connection.';

  @override
  String get errorTimeout => 'The request timed out. Please try again later.';

  @override
  String get errorTimeoutTitle => 'Request timed out.';

  @override
  String get errorServer => 'Server error occurred. Please try again.';

  @override
  String get errorServerTitle => 'Server error.';

  @override
  String get errorUnauthorized =>
      'You are not authorized. Please sign in and try again.';

  @override
  String get errorUnauthorizedTitle => 'Unauthorized.';

  @override
  String get errorForbidden =>
      'You do not have permission to perform this action.';

  @override
  String get errorForbiddenTitle => 'Access denied.';

  @override
  String get errorNotFound => 'We could not find what you were looking for.';

  @override
  String get errorNotFoundTitle => 'Not found.';

  @override
  String get updateArticle => 'More details have been updated';

  @override
  String get errorValidation =>
      'Some information looks invalid. Please review and try again.';

  @override
  String get agreeMail =>
      'I agree to receive updates and newsletters by email.';

  @override
  String get sendUsEmail => 'Send us an email';

  @override
  String get discardChangesTitle => 'Discard changes?';

  @override
  String get discardChangesMessage =>
      'You have unsaved changes. If you continue, they will be lost.';

  @override
  String get discardButton => 'Discard';

  @override
  String get stayButton => 'Stay';

  @override
  String get changeCountryConfirm => 'Switch news destination';

  @override
  String get otherWaysToContact => 'Other ways to contact';

  @override
  String get agreePrivacy => 'I have read and agree to the ';

  @override
  String get contactUsSubtitle =>
      'Feel free to contact us using the form below.';

  @override
  String get fullName => 'Full name';

  @override
  String get mail => 'Email address';

  @override
  String get message => 'Message';

  @override
  String get errorValidationTitle => 'Invalid input.';

  @override
  String get similarSources => 'Similar sources';

  @override
  String get send => 'Send';

  @override
  String get errorGeneric => 'Something went wrong. Please try again.';

  @override
  String get errorGenericTitle => 'Something went wrong.';

  @override
  String get emptyResults_title => 'No matching results';

  @override
  String get emptyResults_noResults => 'No results found.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Try changing your keywords or choose another topic.';

  @override
  String get emptyResults_bottomWithoutTopic => 'Try changing your keywords.';

  @override
  String get emptyResults_inThisTopic => 'in this topic';

  @override
  String get errorBadRequestTitle => 'Bad request.';

  @override
  String get errorBadRequest => 'The request was invalid. Please try again.';

  @override
  String get errorNotModifiedTitle => 'Not modified.';

  @override
  String get errorNotModified => 'Nothing has changed since your last request.';

  @override
  String get errorNetworkTitle => 'Network error.';

  @override
  String get errorNetwork =>
      'We couldn\'t reach the network. Check your connection and try again.';

  @override
  String get errorDataIsEmptyTitle => 'No data available.';

  @override
  String get errorDataIsEmpty => 'We couldn\'t find any data to display.';

  @override
  String get errorConflictTitle => 'Conflict.';

  @override
  String get errorConflict =>
      'The request conflicted with existing data. Please try again.';

  @override
  String get errorServerValidationTitle => 'Validation error.';

  @override
  String get errorServerValidation =>
      'The server rejected some data. Please review and try again.';

  @override
  String get errorWriteFileTitle => 'Write failed.';

  @override
  String get errorWriteFile => 'We couldn\'t save the file. Please try again.';

  @override
  String get errorReadFileTitle => 'Read failed.';

  @override
  String get errorReadFile => 'We couldn\'t read the file. Please try again.';

  @override
  String get errorFileNotFoundTitle => 'File not found.';

  @override
  String get errorFileNotFound =>
      'We couldn\'t find the file you\'re looking for.';

  @override
  String get errorInsufficientStorageTitle => 'Not enough storage.';

  @override
  String get errorInsufficientStorage => 'Free up space and try again.';

  @override
  String get errorDatabaseReadTitle => 'Database read error.';

  @override
  String get errorDatabaseRead => 'We couldn\'t read from the database.';

  @override
  String get errorDatabaseWriteTitle => 'Database write error.';

  @override
  String get errorDatabaseWrite => 'We couldn\'t save to the database.';

  @override
  String get errorDatabaseConnectionTitle => 'Database connection error.';

  @override
  String get errorDatabaseConnection => 'We couldn\'t connect to the database.';

  @override
  String get errorAuthTitle => 'Authentication error.';

  @override
  String get errorAuth => 'Please sign in and try again.';

  @override
  String get errorInvalidCredentialsTitle => 'Invalid credentials.';

  @override
  String get errorInvalidCredentials =>
      'The username or password is incorrect.';

  @override
  String get errorSecureStorageReadTitle => 'Secure storage read error.';

  @override
  String get errorSecureStorageRead => 'We couldn\'t read from secure storage.';

  @override
  String get errorSecureStorageWriteTitle => 'Secure storage write error.';

  @override
  String get errorSecureStorageWrite => 'We couldn\'t write to secure storage.';

  @override
  String get errorSecureStorageClearTitle => 'Secure storage clear error.';

  @override
  String get errorSecureStorageClear => 'We couldn\'t clear secure storage.';

  @override
  String get errorTokenExpiredTitle => 'Session expired.';

  @override
  String get errorTokenExpired => 'Please sign in again.';

  @override
  String get errorUserNotFoundTitle => 'User not found.';

  @override
  String get errorUserNotFound => 'We couldn\'t find that user.';

  @override
  String get errorPermissionDeniedTitle => 'Permission denied.';

  @override
  String get errorPermissionDenied =>
      'You don\'t have permission to perform this action.';

  @override
  String get errorEmptyResultTitle => 'No results.';

  @override
  String get errorEmptyResult => 'We couldn\'t find any results.';

  @override
  String get errorInvalidInputTitle => 'Invalid input.';

  @override
  String get errorInvalidInput => 'Please check your input and try again.';

  @override
  String get errorEmptyTopicsTitle => 'No topics selected.';

  @override
  String get errorEmptyTopics => 'Please select at least one topic.';

  @override
  String get errorParsingTitle => 'Parsing error.';

  @override
  String get errorParsing => 'We couldn\'t process the data.';

  @override
  String get errorUnknownTitle => 'Unknown error.';

  @override
  String get errorUnknown => 'An unexpected error occurred.';
}
