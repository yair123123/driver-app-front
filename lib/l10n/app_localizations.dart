import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ko'),
    Locale('mr'),
    Locale('nl'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi')
  ];

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'back'**
  String get back;

  /// Dialog title asking the user to confirm saving changes
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChangesTitle;

  /// Title for the new WhatsApp and Telegram channels section
  ///
  /// In en, this message translates to:
  /// **'New in the app'**
  String get channels_section_title;

  /// Button or link text for navigating to the groups page
  ///
  /// In en, this message translates to:
  /// **'Go to the groups page'**
  String get go_to_groups_page;

  /// No description provided for @sharedViaApp.
  ///
  /// In en, this message translates to:
  /// **'*Shared via {appName}*'**
  String sharedViaApp(Object appName);

  /// No description provided for @downloadAndroid.
  ///
  /// In en, this message translates to:
  /// **'Download on Android 👈 {url}'**
  String downloadAndroid(Object url);

  /// No description provided for @downloadIOS.
  ///
  /// In en, this message translates to:
  /// **'Download on iOS 👈 {url}'**
  String downloadIOS(Object url);

  /// No description provided for @shareMessageTitle.
  ///
  /// In en, this message translates to:
  /// **'Share message'**
  String get shareMessageTitle;

  /// No description provided for @shareMessageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how to share this message'**
  String get shareMessageSubtitle;

  /// No description provided for @shareMessageOptionLinkTitle.
  ///
  /// In en, this message translates to:
  /// **'Share link'**
  String get shareMessageOptionLinkTitle;

  /// No description provided for @shareMessageOptionLinkSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Send a direct link to the message'**
  String get shareMessageOptionLinkSubtitle;

  /// No description provided for @shareMessageOptionContentTitle.
  ///
  /// In en, this message translates to:
  /// **'Share text and media'**
  String get shareMessageOptionContentTitle;

  /// No description provided for @shareMessageOptionContentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Send the message text and media'**
  String get shareMessageOptionContentSubtitle;

  /// Description of the WhatsApp and Telegram channels area
  ///
  /// In en, this message translates to:
  /// **'A new area for WhatsApp and Telegram channels with videos, images and updates – all the most interesting content in one place.'**
  String get channels_section_description;

  /// No description provided for @newMessages.
  ///
  /// In en, this message translates to:
  /// **'New Messages'**
  String get newMessages;

  /// No description provided for @addArea.
  ///
  /// In en, this message translates to:
  /// **'Add Area'**
  String get addArea;

  /// No description provided for @removeArea.
  ///
  /// In en, this message translates to:
  /// **'Remove Area'**
  String get removeArea;

  /// Confirmation message for removing an area
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove {area} from your selected areas?'**
  String removeAreaConfirmContent(String area);

  /// No description provided for @channels.
  ///
  /// In en, this message translates to:
  /// **'Channels'**
  String get channels;

  /// Title shown after contact form submitted successfully
  ///
  /// In en, this message translates to:
  /// **'Sent successfully ✅'**
  String get contactUsSuccessTitle;

  /// Message shown after contact form submitted successfully
  ///
  /// In en, this message translates to:
  /// **'Thank you! We received your message and will get back to you as soon as possible.'**
  String get contactUsSuccessMessage;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectCountry;

  /// No description provided for @areaManagmentTitle.
  ///
  /// In en, this message translates to:
  /// **'News Consumption Area'**
  String get areaManagmentTitle;

  /// No description provided for @areaManagmentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'My Countries'**
  String get areaManagmentSubtitle;

  /// No description provided for @sharedFromApp.
  ///
  /// In en, this message translates to:
  /// **'Shared from'**
  String get sharedFromApp;

  /// No description provided for @textCopied.
  ///
  /// In en, this message translates to:
  /// **'Text copied'**
  String get textCopied;

  /// No description provided for @queryIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Query is empty'**
  String get queryIsEmpty;

  ///
  ///
  /// In en, this message translates to:
  /// **'Search is empty.'**
  String get queryIsEmptyTitle;

  /// No description provided for @areaWereRemoved.
  ///
  /// In en, this message translates to:
  /// **'Area were removed successfully'**
  String get areaWereRemoved;

  /// No description provided for @areaWereAdded.
  ///
  /// In en, this message translates to:
  /// **'Area were added successfully'**
  String get areaWereAdded;

  /// Dialog message asking the user to confirm saving changes
  ///
  /// In en, this message translates to:
  /// **'Do you want to save the changes you made?'**
  String get saveChangesMessage;

  /// No description provided for @busyLandingTitle.
  ///
  /// In en, this message translates to:
  /// **'We’re almost landing…'**
  String get busyLandingTitle;

  /// No description provided for @busyLandingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We’re preparing your news'**
  String get busyLandingSubtitle;

  /// No description provided for @changeCountryTitle.
  ///
  /// In en, this message translates to:
  /// **'Which country should we switch to?'**
  String get changeCountryTitle;

  /// No description provided for @changeCountrySubtitle.
  ///
  /// In en, this message translates to:
  /// **'When you choose a country, all content in the app will update according to your selection.'**
  String get changeCountrySubtitle;

  /// No description provided for @dailySummary.
  ///
  /// In en, this message translates to:
  /// **'Daily summary'**
  String get dailySummary;

  /// No description provided for @lastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated'**
  String get lastUpdated;

  /// No description provided for @saveChangesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to save the changes you made?'**
  String get saveChangesSubtitle;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get readMore;

  /// No description provided for @searchPageNoResultsPrefix.
  ///
  /// In en, this message translates to:
  /// **'No results found for '**
  String get searchPageNoResultsPrefix;

  /// No description provided for @searchPageNoResultsSuffix.
  ///
  /// In en, this message translates to:
  /// **''**
  String get searchPageNoResultsSuffix;

  /// No description provided for @searchPageNoResultsForThisCategoryPrefix.
  ///
  /// In en, this message translates to:
  /// **'No results found for \n'**
  String get searchPageNoResultsForThisCategoryPrefix;

  /// No description provided for @searchPageNoResultsForThisCategorySuffix.
  ///
  /// In en, this message translates to:
  /// **' in this category'**
  String get searchPageNoResultsForThisCategorySuffix;

  /// No description provided for @toPowerOn.
  ///
  /// In en, this message translates to:
  /// **'to power on'**
  String get toPowerOn;

  /// No description provided for @notificationsOffTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications off'**
  String get notificationsOffTitle;

  /// No description provided for @notificationsOffSubtitle.
  ///
  /// In en, this message translates to:
  /// **'It looks like notification access hasn\'t been enabled yet.'**
  String get notificationsOffSubtitle;

  /// No description provided for @newArticles.
  ///
  /// In en, this message translates to:
  /// **'New Articles'**
  String get newArticles;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'home'**
  String get home;

  /// No description provided for @changesApplyOnNextLaunch.
  ///
  /// In en, this message translates to:
  /// **'Changes will be applied on the next app launch.'**
  String get changesApplyOnNextLaunch;

  /// No description provided for @enable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// No description provided for @stayUpdatedWithLatestNews.
  ///
  /// In en, this message translates to:
  /// **'Stay updated with the latest news'**
  String get stayUpdatedWithLatestNews;

  /// No description provided for @enableNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  ///
  ///
  /// In en, this message translates to:
  /// **'Error details'**
  String get error_details;

  ///
  ///
  /// In en, this message translates to:
  /// **'Oops something wrong'**
  String get error_title;

  /// No description provided for @freeSearch.
  ///
  /// In en, this message translates to:
  /// **'Free Search'**
  String get freeSearch;

  /// No description provided for @aiPageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'This feature is still in development \n worth checking back soon.'**
  String get aiPageSubtitle;

  /// No description provided for @topicsSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'News Topics Selection'**
  String get topicsSelectionTitle;

  /// No description provided for @groups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groups;

  /// No description provided for @aiPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Coming soon: you\'ll be able to chat with our AI about the news!'**
  String get aiPageTitle;

  /// No description provided for @topicsSelectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose topics or subtopics you\'d like to see in your feed. You can always change them here.'**
  String get topicsSelectionSubtitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Failed to load topics'**
  String get failedToLoadTopics;

  /// Note about settings being editable anytime
  ///
  /// In en, this message translates to:
  /// **'You can edit the settings anytime'**
  String get settingsNote;

  ///
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get lang;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load the data. Please check your internet connection and try again.'**
  String get failed_to_load_data;

  ///
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLang;

  ///
  ///
  /// In en, this message translates to:
  /// **'Not Now'**
  String get notNow;

  ///
  ///
  /// In en, this message translates to:
  /// **'Enabling notifications lets you stay up to date with important news, urgent updates, and personalized content – so you never miss anything that matters to you.'**
  String get notificationsPermissionRationale;

  /// Text for a button that skips to suggested content
  ///
  /// In en, this message translates to:
  /// **'Skip to the content we picked for you'**
  String get skipToSuggestedContent;

  ///
  ///
  /// In en, this message translates to:
  /// **'Let\'s go'**
  String get lets_go;

  ///
  ///
  /// In en, this message translates to:
  /// **'Keep Going!'**
  String get keepGoing;

  ///
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  ///
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  ///
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  ///
  ///
  /// In en, this message translates to:
  /// **'please Select a Language'**
  String get pleaseSelectLanguage;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Select at least one topic'**
  String get pleaseSelectAtLeastOneTopic;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Want to stay updated?'**
  String get notificationTitle;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  ///
  ///
  /// In en, this message translates to:
  /// **'What would you like to search?'**
  String get searchPageEmptySubtitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Type a keyword or topic to search'**
  String get searchPageEmptyTitle;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'You can turn on pop-up notifications for any topic that interests you.'**
  String get notificationSubTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'What interests you'**
  String get whatIsInteresting;

  ///
  ///
  /// In en, this message translates to:
  /// **'To send only what’s truly relevant, let’s first mark what interests you.'**
  String get subTextWhatIsInteresting;

  ///
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  ///
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get try_again;

  ///
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  ///
  ///
  /// In en, this message translates to:
  /// **'No Permissions'**
  String get noPermissions;

  ///
  ///
  /// In en, this message translates to:
  /// **'Solution suggestions'**
  String get solution_suggestions;

  ///
  ///
  /// In en, this message translates to:
  /// **'Allow Notifications'**
  String get allowNotifications;

  ///
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  ///
  ///
  /// In en, this message translates to:
  /// **'Notifications Enabled'**
  String get notificationsEnabled;

  ///
  ///
  /// In en, this message translates to:
  /// **'Notifications Denied'**
  String get notificationsDenied;

  ///
  ///
  /// In en, this message translates to:
  /// **'Please Wait'**
  String get pleaseWait;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'all'**
  String get all;

  ///
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  ///
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  ///
  ///
  /// In en, this message translates to:
  /// **'You can enable pop-up notifications for every topic that interests you.'**
  String get subTextNotifications;

  ///
  ///
  /// In en, this message translates to:
  /// **'Troubleshooting Tips'**
  String get troubleshooting_tips;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Welcome to the news app, personalized just for you!'**
  String get welcome;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Continue reading'**
  String get continueReading;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Area'**
  String get area;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Choose your area to get localized news updates'**
  String get chooseYourAreaHint;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Choose the news region you want.\nWithin the app, you can select additional countries as well.'**
  String get chooseYourAreaHintUnused;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Choose your language, you can always change it later.'**
  String get chooseYourLangHint;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Topics'**
  String get topics;

  /// Welcome message for the user
  ///
  /// In en, this message translates to:
  /// **'Choose the topics that interest you, you can always change them in the settings.'**
  String get chooseTopicsHint;

  /// Drawer item label for viewing categories
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// Drawer item label for managing notification settings
  ///
  /// In en, this message translates to:
  /// **'Manage notifications'**
  String get manageNotifications;

  /// Drawer item label for language and region settings
  ///
  /// In en, this message translates to:
  /// **'Language & region'**
  String get languageAndRegion;

  /// Drawer item label linking to app information
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// Drawer item label linking to the privacy policy
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// Drawer item label linking to contact information
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// Title shown when the device has internet access but cannot reach the server
  ///
  /// In en, this message translates to:
  /// **'Server issue'**
  String get networkStatusPartialTitle;

  /// Title shown when there is no internet connectivity
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get networkStatusOfflineTitle;

  /// Message explaining partial connectivity when the server cannot be reached
  ///
  /// In en, this message translates to:
  /// **'We can reach the internet but not the server.\\nTry again in a moment.'**
  String get networkStatusPartialMessage;

  /// Message explaining there is no internet access
  ///
  /// In en, this message translates to:
  /// **'No internet connection. We\'re showing older articles; connect to the internet to see the latest stories.'**
  String get networkStatusOfflineMessage;

  /// Label for internet connectivity status
  ///
  /// In en, this message translates to:
  /// **'Internet connection'**
  String get networkStatusInternetLabel;

  /// Label for server connectivity status
  ///
  /// In en, this message translates to:
  /// **'Server connection'**
  String get networkStatusServerLabel;

  /// Button text to dismiss the network status dialog
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get networkStatusDismiss;

  /// Label shown when a connection is active
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get networkStatusConnected;

  /// Label shown when a connection is inactive
  ///
  /// In en, this message translates to:
  /// **'Not connected'**
  String get networkStatusDisconnected;

  /// Label showing the app is in offline mode
  ///
  /// In en, this message translates to:
  /// **'Offline mode'**
  String get offlineMode;

  /// Toast shown when changes are saved successfully
  ///
  /// In en, this message translates to:
  /// **'Changes saved successfully'**
  String get changesSavedSuccessfully;

  /// Shown when saving changes fails
  ///
  /// In en, this message translates to:
  /// **'Unable to save changes'**
  String get unableToSaveChanges;

  /// Title for the dismissible notification preferences notice
  ///
  /// In en, this message translates to:
  /// **'Pop-up notifications'**
  String get dismissibleNoticeNotificationsTitle;

  /// Subtitle explaining notification customization options
  ///
  /// In en, this message translates to:
  /// **'Customize your alerts easily. Turn push notifications on or off for any topic that interests you.'**
  String get dismissibleNoticeNotificationsSubtitle;

  /// Title for the language and region dismissible notice
  ///
  /// In en, this message translates to:
  /// **'Update on the way!'**
  String get dismissibleNoticeLangAndAreaTitle;

  /// Subtitle for upcoming language and region selection feature
  ///
  /// In en, this message translates to:
  /// **'Soon you\'ll be able to choose which regions of the world you want to get news and updates from.'**
  String get dismissibleNoticeLangAndAreaSubtitle;

  /// Label for general informational messages
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// Label for successful action feedback
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Action label for saving modifications
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// Confirmation prompt before saving changes
  ///
  /// In en, this message translates to:
  /// **'Do you want to save your changes?'**
  String get saveChangesConfirmation;

  /// Label for confirmation actions
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Shown when opening a reference fails
  ///
  /// In en, this message translates to:
  /// **'Unable to open this reference'**
  String get unableToOpenReference;

  ///
  ///
  /// In en, this message translates to:
  /// **'No results found for \"{query}\"'**
  String searchPageNoResults(String query);

  ///
  ///
  /// In en, this message translates to:
  /// **'No results found for \"{query}\" in this category'**
  String searchPageNoResultsForThisCategory(String query);

  /// No description provided for @newsTopics.
  ///
  /// In en, this message translates to:
  /// **'News topics'**
  String get newsTopics;

  ///
  ///
  /// In en, this message translates to:
  /// **'Please check your connection and try again.'**
  String get errorNoInternet;

  ///
  ///
  /// In en, this message translates to:
  /// **'No internet connection.'**
  String get errorNoInternetTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'The request timed out. Please try again later.'**
  String get errorTimeout;

  ///
  ///
  /// In en, this message translates to:
  /// **'Request timed out.'**
  String get errorTimeoutTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Server error occurred. Please try again.'**
  String get errorServer;

  ///
  ///
  /// In en, this message translates to:
  /// **'Server error.'**
  String get errorServerTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'You are not authorized. Please sign in and try again.'**
  String get errorUnauthorized;

  ///
  ///
  /// In en, this message translates to:
  /// **'Unauthorized.'**
  String get errorUnauthorizedTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'You do not have permission to perform this action.'**
  String get errorForbidden;

  ///
  ///
  /// In en, this message translates to:
  /// **'Access denied.'**
  String get errorForbiddenTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We could not find what you were looking for.'**
  String get errorNotFound;

  ///
  ///
  /// In en, this message translates to:
  /// **'Not found.'**
  String get errorNotFoundTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'More details have been updated'**
  String get updateArticle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Some information looks invalid. Please review and try again.'**
  String get errorValidation;

  /// Checkbox text for agreeing to receive email updates and newsletters
  ///
  /// In en, this message translates to:
  /// **'I agree to receive updates and newsletters by email.'**
  String get agreeMail;

  /// CTA inviting the user to contact support via email
  ///
  /// In en, this message translates to:
  /// **'Send us an email'**
  String get sendUsEmail;

  /// No description provided for @discardChangesTitle.
  ///
  /// In en, this message translates to:
  /// **'Discard changes?'**
  String get discardChangesTitle;

  /// No description provided for @discardChangesMessage.
  ///
  /// In en, this message translates to:
  /// **'You have unsaved changes. If you continue, they will be lost.'**
  String get discardChangesMessage;

  /// No description provided for @discardButton.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discardButton;

  /// No description provided for @stayButton.
  ///
  /// In en, this message translates to:
  /// **'Stay'**
  String get stayButton;

  /// No description provided for @changeCountryConfirm.
  ///
  /// In en, this message translates to:
  /// **'Switch news destination'**
  String get changeCountryConfirm;

  /// No description provided for @otherWaysToContact.
  ///
  /// In en, this message translates to:
  /// **'Other ways to contact'**
  String get otherWaysToContact;

  /// Checkbox text for accepting the privacy policy
  ///
  /// In en, this message translates to:
  /// **'I have read and agree to the '**
  String get agreePrivacy;

  /// Subtitle text on Contact Us screen
  ///
  /// In en, this message translates to:
  /// **'Feel free to contact us using the form below.'**
  String get contactUsSubtitle;

  /// Label for full name input field
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// Label for email input field
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get mail;

  /// Label for message input field
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  ///
  ///
  /// In en, this message translates to:
  /// **'Invalid input.'**
  String get errorValidationTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Similar sources'**
  String get similarSources;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  ///
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get errorGeneric;

  ///
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get errorGenericTitle;

  /// No description provided for @emptyResults_title.
  ///
  /// In en, this message translates to:
  /// **'No matching results'**
  String get emptyResults_title;

  /// No description provided for @emptyResults_noResults.
  ///
  /// In en, this message translates to:
  /// **'No results found.'**
  String get emptyResults_noResults;

  /// No description provided for @emptyResults_bottomWithTopic.
  ///
  /// In en, this message translates to:
  /// **'Try changing your keywords or choose another topic.'**
  String get emptyResults_bottomWithTopic;

  /// No description provided for @emptyResults_bottomWithoutTopic.
  ///
  /// In en, this message translates to:
  /// **'Try changing your keywords.'**
  String get emptyResults_bottomWithoutTopic;

  /// Used as: in this topic
  ///
  /// In en, this message translates to:
  /// **'in this topic'**
  String get emptyResults_inThisTopic;

  ///
  ///
  /// In en, this message translates to:
  /// **'Bad request.'**
  String get errorBadRequestTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'The request was invalid. Please try again.'**
  String get errorBadRequest;

  ///
  ///
  /// In en, this message translates to:
  /// **'Not modified.'**
  String get errorNotModifiedTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Nothing has changed since your last request.'**
  String get errorNotModified;

  ///
  ///
  /// In en, this message translates to:
  /// **'Network error.'**
  String get errorNetworkTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t reach the network. Check your connection and try again.'**
  String get errorNetwork;

  ///
  ///
  /// In en, this message translates to:
  /// **'No data available.'**
  String get errorDataIsEmptyTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any data to display.'**
  String get errorDataIsEmpty;

  ///
  ///
  /// In en, this message translates to:
  /// **'Conflict.'**
  String get errorConflictTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'The request conflicted with existing data. Please try again.'**
  String get errorConflict;

  ///
  ///
  /// In en, this message translates to:
  /// **'Validation error.'**
  String get errorServerValidationTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'The server rejected some data. Please review and try again.'**
  String get errorServerValidation;

  ///
  ///
  /// In en, this message translates to:
  /// **'Write failed.'**
  String get errorWriteFileTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t save the file. Please try again.'**
  String get errorWriteFile;

  ///
  ///
  /// In en, this message translates to:
  /// **'Read failed.'**
  String get errorReadFileTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t read the file. Please try again.'**
  String get errorReadFile;

  ///
  ///
  /// In en, this message translates to:
  /// **'File not found.'**
  String get errorFileNotFoundTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find the file you\'re looking for.'**
  String get errorFileNotFound;

  ///
  ///
  /// In en, this message translates to:
  /// **'Not enough storage.'**
  String get errorInsufficientStorageTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Free up space and try again.'**
  String get errorInsufficientStorage;

  ///
  ///
  /// In en, this message translates to:
  /// **'Database read error.'**
  String get errorDatabaseReadTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t read from the database.'**
  String get errorDatabaseRead;

  ///
  ///
  /// In en, this message translates to:
  /// **'Database write error.'**
  String get errorDatabaseWriteTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t save to the database.'**
  String get errorDatabaseWrite;

  ///
  ///
  /// In en, this message translates to:
  /// **'Database connection error.'**
  String get errorDatabaseConnectionTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t connect to the database.'**
  String get errorDatabaseConnection;

  ///
  ///
  /// In en, this message translates to:
  /// **'Authentication error.'**
  String get errorAuthTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Please sign in and try again.'**
  String get errorAuth;

  ///
  ///
  /// In en, this message translates to:
  /// **'Invalid credentials.'**
  String get errorInvalidCredentialsTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'The username or password is incorrect.'**
  String get errorInvalidCredentials;

  ///
  ///
  /// In en, this message translates to:
  /// **'Secure storage read error.'**
  String get errorSecureStorageReadTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t read from secure storage.'**
  String get errorSecureStorageRead;

  ///
  ///
  /// In en, this message translates to:
  /// **'Secure storage write error.'**
  String get errorSecureStorageWriteTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t write to secure storage.'**
  String get errorSecureStorageWrite;

  ///
  ///
  /// In en, this message translates to:
  /// **'Secure storage clear error.'**
  String get errorSecureStorageClearTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t clear secure storage.'**
  String get errorSecureStorageClear;

  ///
  ///
  /// In en, this message translates to:
  /// **'Session expired.'**
  String get errorTokenExpiredTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Please sign in again.'**
  String get errorTokenExpired;

  ///
  ///
  /// In en, this message translates to:
  /// **'User not found.'**
  String get errorUserNotFoundTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find that user.'**
  String get errorUserNotFound;

  ///
  ///
  /// In en, this message translates to:
  /// **'Permission denied.'**
  String get errorPermissionDeniedTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'You don\'t have permission to perform this action.'**
  String get errorPermissionDenied;

  ///
  ///
  /// In en, this message translates to:
  /// **'No results.'**
  String get errorEmptyResultTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any results.'**
  String get errorEmptyResult;

  ///
  ///
  /// In en, this message translates to:
  /// **'Invalid input.'**
  String get errorInvalidInputTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Please check your input and try again.'**
  String get errorInvalidInput;

  ///
  ///
  /// In en, this message translates to:
  /// **'No topics selected.'**
  String get errorEmptyTopicsTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'Please select at least one topic.'**
  String get errorEmptyTopics;

  ///
  ///
  /// In en, this message translates to:
  /// **'Parsing error.'**
  String get errorParsingTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t process the data.'**
  String get errorParsing;

  ///
  ///
  /// In en, this message translates to:
  /// **'Unknown error.'**
  String get errorUnknownTitle;

  ///
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred.'**
  String get errorUnknown;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'cs', 'da', 'de', 'el', 'en', 'es', 'fa', 'fr', 'gu', 'he', 'hi', 'hu', 'id', 'it', 'ko', 'mr', 'nl', 'pa', 'pl', 'pt', 'ro', 'ru', 'sv', 'sw', 'ta', 'te', 'tr', 'uk', 'ur', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'bn': return AppLocalizationsBn();
    case 'cs': return AppLocalizationsCs();
    case 'da': return AppLocalizationsDa();
    case 'de': return AppLocalizationsDe();
    case 'el': return AppLocalizationsEl();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fa': return AppLocalizationsFa();
    case 'fr': return AppLocalizationsFr();
    case 'gu': return AppLocalizationsGu();
    case 'he': return AppLocalizationsHe();
    case 'hi': return AppLocalizationsHi();
    case 'hu': return AppLocalizationsHu();
    case 'id': return AppLocalizationsId();
    case 'it': return AppLocalizationsIt();
    case 'ko': return AppLocalizationsKo();
    case 'mr': return AppLocalizationsMr();
    case 'nl': return AppLocalizationsNl();
    case 'pa': return AppLocalizationsPa();
    case 'pl': return AppLocalizationsPl();
    case 'pt': return AppLocalizationsPt();
    case 'ro': return AppLocalizationsRo();
    case 'ru': return AppLocalizationsRu();
    case 'sv': return AppLocalizationsSv();
    case 'sw': return AppLocalizationsSw();
    case 'ta': return AppLocalizationsTa();
    case 'te': return AppLocalizationsTe();
    case 'tr': return AppLocalizationsTr();
    case 'uk': return AppLocalizationsUk();
    case 'ur': return AppLocalizationsUr();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
