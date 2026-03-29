// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get back => 'terug';

  @override
  String get saveChangesTitle => 'Wijzigingen opslaan';

  @override
  String get channels_section_title => 'Nieuw in de app';

  @override
  String get go_to_groups_page => 'Ga naar de groepenpagina';

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
      'Een nieuw gebied voor WhatsApp- en Telegram-kanalen met video\'s, afbeeldingen en updates – alle interessante inhoud op één plek.';

  @override
  String get newMessages => 'Nieuwe berichten';

  @override
  String get addArea => 'Gebied toevoegen';

  @override
  String get removeArea => 'Gebied verwijderen';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Weet u zeker dat u $area uit de door u geselecteerde gebieden wilt verwijderen?';
  }

  @override
  String get channels => 'Kanalen';

  @override
  String get contactUsSuccessTitle => 'Succesvol verzonden ✅';

  @override
  String get contactUsSuccessMessage =>
      'Dank je! Wij hebben uw bericht ontvangen en nemen zo snel mogelijk contact met u op.';

  @override
  String get selectCountry => 'Selecteer Land';

  @override
  String get areaManagmentTitle => 'Nieuwsconsumptiegebied';

  @override
  String get areaManagmentSubtitle => 'Mijn landen';

  @override
  String get sharedFromApp => 'Gedeeld van';

  @override
  String get textCopied => 'Tekst gekopieerd';

  @override
  String get queryIsEmpty => 'Zoekopdracht is leeg';

  @override
  String get queryIsEmptyTitle => 'Zoeken is leeg.';

  @override
  String get areaWereRemoved => 'Gebied is succesvol verwijderd';

  @override
  String get areaWereAdded => 'Gebied is succesvol toegevoegd';

  @override
  String get saveChangesMessage =>
      'Wilt u de aangebrachte wijzigingen opslaan?';

  @override
  String get busyLandingTitle => 'We landen bijna...';

  @override
  String get busyLandingSubtitle => 'Wij bereiden uw nieuws voor';

  @override
  String get changeCountryTitle => 'Naar welk land moeten we overstappen?';

  @override
  String get changeCountrySubtitle =>
      'Wanneer u een land kiest, wordt alle inhoud in de app bijgewerkt op basis van uw selectie.';

  @override
  String get dailySummary => 'Dagelijkse samenvatting';

  @override
  String get lastUpdated => 'Laatst bijgewerkt';

  @override
  String get saveChangesSubtitle =>
      'Wilt u de aangebrachte wijzigingen opslaan?';

  @override
  String get readMore => 'Lees meer';

  @override
  String get searchPageNoResultsPrefix =>
      'Er zijn geen resultaten gevonden voor ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Er zijn geen resultaten gevonden voor \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' in deze categorie';

  @override
  String get toPowerOn => 'aan te zetten';

  @override
  String get notificationsOffTitle => 'Meldingen uitgeschakeld';

  @override
  String get notificationsOffSubtitle =>
      'Het lijkt erop dat toegang tot meldingen nog niet is ingeschakeld.';

  @override
  String get newArticles => 'Nieuwe artikelen';

  @override
  String get home => 'thuis';

  @override
  String get changesApplyOnNextLaunch =>
      'Wijzigingen worden toegepast bij de volgende lancering van de app.';

  @override
  String get enable => 'Inschakelen';

  @override
  String get stayUpdatedWithLatestNews =>
      'Blijf op de hoogte van het laatste nieuws';

  @override
  String get enableNotifications => 'Meldingen inschakelen';

  @override
  String get error_details => 'Foutdetails';

  @override
  String get error_title => 'Oeps, er is iets mis';

  @override
  String get freeSearch => 'Gratis zoeken';

  @override
  String get aiPageSubtitle =>
      'Deze functie is nog in ontwikkeling \n de moeite waard om binnenkort nog eens terug te komen.';

  @override
  String get topicsSelectionTitle => 'Selectie van nieuwsonderwerpen';

  @override
  String get groups => 'Groepen';

  @override
  String get aiPageTitle =>
      'Binnenkort beschikbaar: je kunt met onze AI chatten over het nieuws!';

  @override
  String get topicsSelectionSubtitle =>
      'Kies onderwerpen of subonderwerpen die u graag in uw feed wilt zien. Je kunt ze hier altijd wijzigen.';

  @override
  String get failedToLoadTopics => 'Kan onderwerpen niet laden';

  @override
  String get settingsNote =>
      'U kunt de instellingen op elk gewenst moment bewerken';

  @override
  String get lang => 'Taal';

  @override
  String get failed_to_load_data =>
      'We konden de gegevens niet laden. Controleer uw internetverbinding en probeer het opnieuw.';

  @override
  String get changeLang => 'Taal wijzigen';

  @override
  String get notNow => 'Niet nu';

  @override
  String get notificationsPermissionRationale =>
      'Door meldingen in te schakelen, blijft u op de hoogte van belangrijk nieuws, urgente updates en gepersonaliseerde inhoud, zodat u nooit meer iets mist dat voor u belangrijk is.';

  @override
  String get skipToSuggestedContent =>
      'Ga naar de inhoud die we voor u hebben uitgekozen';

  @override
  String get lets_go => 'Laten we gaan';

  @override
  String get keepGoing => 'Blijf doorgaan!';

  @override
  String get skip => 'Overslaan';

  @override
  String get save => 'Opslaan';

  @override
  String get next => 'Volgende';

  @override
  String get pleaseSelectLanguage => 'Selecteer een taal';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Selecteer minimaal één onderwerp';

  @override
  String get notificationTitle => 'Wil je op de hoogte blijven?';

  @override
  String get search => 'Zoeken';

  @override
  String get searchPageEmptySubtitle => 'Wat zou je willen zoeken?';

  @override
  String get searchPageEmptyTitle =>
      'Typ een trefwoord of onderwerp om te zoeken';

  @override
  String get notificationSubTitle =>
      'U kunt pop-upmeldingen inschakelen voor elk onderwerp dat u interesseert.';

  @override
  String get whatIsInteresting => 'Wat interesseert jou';

  @override
  String get subTextWhatIsInteresting =>
      'Om alleen te sturen wat echt relevant is, moeten we eerst markeren wat u interesseert.';

  @override
  String get getStarted => 'Aan de slag';

  @override
  String get try_again => 'Probeer het opnieuw';

  @override
  String get allow => 'Toestaan';

  @override
  String get noPermissions => 'Geen machtigingen';

  @override
  String get solution_suggestions => 'Suggesties voor oplossingen';

  @override
  String get allowNotifications => 'Meldingen toestaan';

  @override
  String get notifications => 'Meldingen';

  @override
  String get notificationsEnabled => 'Meldingen ingeschakeld';

  @override
  String get notificationsDenied => 'Meldingen geweigerd';

  @override
  String get pleaseWait => 'Wacht alstublieft';

  @override
  String get all => 'allemaal';

  @override
  String get cancel => 'Annuleer';

  @override
  String get openSettings => 'Instellingen openen';

  @override
  String get subTextNotifications =>
      'U kunt pop-upmeldingen inschakelen voor elk onderwerp dat u interesseert.';

  @override
  String get troubleshooting_tips => 'Tips voor het oplossen van problemen';

  @override
  String get welcome =>
      'Welkom bij de nieuws-app, speciaal voor jou gepersonaliseerd!';

  @override
  String get continueReading => 'Lees verder';

  @override
  String get share => 'Deel';

  @override
  String get area => 'Gebied';

  @override
  String get chooseYourAreaHint =>
      'Kies uw regio om gelokaliseerde nieuwsupdates te ontvangen';

  @override
  String get chooseYourAreaHintUnused =>
      'Kies de gewenste nieuwsregio.\nBinnen de app kun je ook extra landen selecteren.';

  @override
  String get chooseYourLangHint =>
      'Kies uw taal, u kunt deze later altijd wijzigen.';

  @override
  String get topics => 'Onderwerpen';

  @override
  String get chooseTopicsHint =>
      'Kies de onderwerpen die u interesseren, u kunt deze altijd wijzigen in de instellingen.';

  @override
  String get categories => 'Categorieën';

  @override
  String get manageNotifications => 'Beheer meldingen';

  @override
  String get languageAndRegion => 'Taal & regio';

  @override
  String get about => 'Over';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get contactUs => 'Neem contact met ons op';

  @override
  String get networkStatusPartialTitle => 'Serverprobleem';

  @override
  String get networkStatusOfflineTitle => 'Geen internetverbinding';

  @override
  String get networkStatusPartialMessage =>
      'We kunnen het internet bereiken, maar niet de server.\\nProbeer het zo opnieuw.';

  @override
  String get networkStatusOfflineMessage =>
      'Geen internetverbinding. We tonen oudere artikelen; maak verbinding met internet om de nieuwste verhalen te zien.';

  @override
  String get networkStatusInternetLabel => 'Internetverbinding';

  @override
  String get networkStatusServerLabel => 'Serververbinding';

  @override
  String get networkStatusDismiss => 'Ik heb het';

  @override
  String get networkStatusConnected => 'Verbonden';

  @override
  String get networkStatusDisconnected => 'Niet verbonden';

  @override
  String get offlineMode => 'Offline-modus';

  @override
  String get changesSavedSuccessfully =>
      'Wijzigingen zijn succesvol opgeslagen';

  @override
  String get unableToSaveChanges => 'Kan wijzigingen niet opslaan';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Pop-upmeldingen';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Pas uw waarschuwingen eenvoudig aan. Schakel pushmeldingen in of uit voor elk onderwerp dat u interesseert.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Update onderweg!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Binnenkort kun je kiezen uit welke regio\'s van de wereld je nieuws en updates wilt ontvangen.';

  @override
  String get info => 'Info';

  @override
  String get success => 'Succes';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get saveChangesConfirmation => 'Wilt u uw wijzigingen opslaan?';

  @override
  String get confirm => 'Bevestig';

  @override
  String get unableToOpenReference => 'Kan deze referentie niet openen';

  @override
  String searchPageNoResults(String query) {
    return 'Er zijn geen resultaten gevonden voor \'$query\'';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Er zijn geen resultaten gevonden voor \"$query\" in deze categorie';
  }

  @override
  String get newsTopics => 'Nieuws onderwerpen';

  @override
  String get errorNoInternet =>
      'Controleer uw verbinding en probeer het opnieuw.';

  @override
  String get errorNoInternetTitle => 'Geen internetverbinding.';

  @override
  String get errorTimeout =>
      'Er is een time-out opgetreden voor het verzoek. Probeer het later opnieuw.';

  @override
  String get errorTimeoutTitle => 'Verzoek is verlopen.';

  @override
  String get errorServer =>
      'Er is een serverfout opgetreden. Probeer het opnieuw.';

  @override
  String get errorServerTitle => 'Serverfout.';

  @override
  String get errorUnauthorized =>
      'U bent niet bevoegd. Meld u aan en probeer het opnieuw.';

  @override
  String get errorUnauthorizedTitle => 'Ongeautoriseerd.';

  @override
  String get errorForbidden =>
      'U heeft geen toestemming om deze actie uit te voeren.';

  @override
  String get errorForbiddenTitle => 'Toegang geweigerd.';

  @override
  String get errorNotFound => 'Wij konden niet vinden wat u zocht.';

  @override
  String get errorNotFoundTitle => 'Niet gevonden.';

  @override
  String get updateArticle => 'Er zijn meer details bijgewerkt';

  @override
  String get errorValidation =>
      'Sommige informatie lijkt ongeldig. Controleer het en probeer het opnieuw.';

  @override
  String get agreeMail =>
      'Ik ga ermee akkoord om updates en nieuwsbrieven per e-mail te ontvangen.';

  @override
  String get sendUsEmail => 'Stuur ons een e-mail';

  @override
  String get discardChangesTitle => 'Wijzigingen weggooien?';

  @override
  String get discardChangesMessage =>
      'U heeft niet-opgeslagen wijzigingen. Als je doorgaat, gaan ze verloren.';

  @override
  String get discardButton => 'Gooi weg';

  @override
  String get stayButton => 'Blijf';

  @override
  String get changeCountryConfirm => 'Nieuwsbestemming wijzigen';

  @override
  String get otherWaysToContact => 'Andere manieren om contact op te nemen';

  @override
  String get agreePrivacy => 'Ik heb de gelezen en ga ermee akkoord ';

  @override
  String get contactUsSubtitle =>
      'Neem gerust contact met ons op via onderstaand formulier.';

  @override
  String get fullName => 'Volledige naam';

  @override
  String get mail => 'E-mailadres';

  @override
  String get message => 'Bericht';

  @override
  String get errorValidationTitle => 'Ongeldige invoer.';

  @override
  String get similarSources => 'Soortgelijke bronnen';

  @override
  String get send => 'Verzenden';

  @override
  String get errorGeneric => 'Er is iets misgegaan. Probeer het opnieuw.';

  @override
  String get errorGenericTitle => 'Er is iets misgegaan.';

  @override
  String get emptyResults_title => 'Geen overeenkomende resultaten';

  @override
  String get emptyResults_noResults => 'Geen resultaten gevonden.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Probeer uw zoekwoorden te wijzigen of kies een ander onderwerp.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'Probeer uw zoekwoorden te wijzigen.';

  @override
  String get emptyResults_inThisTopic => 'in dit onderwerp';

  @override
  String get errorBadRequestTitle => 'Slecht verzoek.';

  @override
  String get errorBadRequest =>
      'Het verzoek was ongeldig. Probeer het opnieuw.';

  @override
  String get errorNotModifiedTitle => 'Niet gewijzigd.';

  @override
  String get errorNotModified =>
      'Er is niets veranderd sinds uw laatste verzoek.';

  @override
  String get errorNetworkTitle => 'Netwerkfout.';

  @override
  String get errorNetwork =>
      'We konden het netwerk niet bereiken. Controleer uw verbinding en probeer het opnieuw.';

  @override
  String get errorDataIsEmptyTitle => 'Geen gegevens beschikbaar.';

  @override
  String get errorDataIsEmpty =>
      'We konden geen gegevens vinden om weer te geven.';

  @override
  String get errorConflictTitle => 'Conflicten.';

  @override
  String get errorConflict =>
      'Het verzoek was in strijd met bestaande gegevens. Probeer het opnieuw.';

  @override
  String get errorServerValidationTitle => 'Validatiefout.';

  @override
  String get errorServerValidation =>
      'De server heeft bepaalde gegevens afgewezen. Controleer het en probeer het opnieuw.';

  @override
  String get errorWriteFileTitle => 'Schrijven is mislukt.';

  @override
  String get errorWriteFile =>
      'We konden het bestand niet opslaan. Probeer het opnieuw.';

  @override
  String get errorReadFileTitle => 'Lezen mislukt.';

  @override
  String get errorReadFile =>
      'We konden het bestand niet lezen. Probeer het opnieuw.';

  @override
  String get errorFileNotFoundTitle => 'Bestand niet gevonden.';

  @override
  String get errorFileNotFound =>
      'We kunnen het bestand dat u zoekt niet vinden.';

  @override
  String get errorInsufficientStorageTitle => 'Niet genoeg opslagruimte.';

  @override
  String get errorInsufficientStorage =>
      'Maak ruimte vrij en probeer het opnieuw.';

  @override
  String get errorDatabaseReadTitle => 'Leesfout database.';

  @override
  String get errorDatabaseRead => 'We konden niet uit de database lezen.';

  @override
  String get errorDatabaseWriteTitle => 'Schrijffout in database.';

  @override
  String get errorDatabaseWrite => 'We konden niet opslaan in de database.';

  @override
  String get errorDatabaseConnectionTitle => 'Databaseverbindingsfout.';

  @override
  String get errorDatabaseConnection =>
      'We konden geen verbinding maken met de database.';

  @override
  String get errorAuthTitle => 'Authenticatiefout.';

  @override
  String get errorAuth => 'Meld u aan en probeer het opnieuw.';

  @override
  String get errorInvalidCredentialsTitle => 'Ongeldige inloggegevens.';

  @override
  String get errorInvalidCredentials =>
      'De gebruikersnaam of het wachtwoord is onjuist.';

  @override
  String get errorSecureStorageReadTitle => 'Leesfout bij beveiligde opslag.';

  @override
  String get errorSecureStorageRead =>
      'We konden niet lezen vanuit de beveiligde opslag.';

  @override
  String get errorSecureStorageWriteTitle =>
      'Schrijffout bij beveiligde opslag.';

  @override
  String get errorSecureStorageWrite =>
      'We konden niet naar de beveiligde opslag schrijven.';

  @override
  String get errorSecureStorageClearTitle => 'Veilige opslag duidelijke fout.';

  @override
  String get errorSecureStorageClear =>
      'We kunnen de beveiligde opslag niet vrijmaken.';

  @override
  String get errorTokenExpiredTitle => 'Sessie verlopen.';

  @override
  String get errorTokenExpired => 'Meld u opnieuw aan.';

  @override
  String get errorUserNotFoundTitle => 'Gebruiker niet gevonden.';

  @override
  String get errorUserNotFound => 'We konden die gebruiker niet vinden.';

  @override
  String get errorPermissionDeniedTitle => 'Toestemming geweigerd.';

  @override
  String get errorPermissionDenied =>
      'U heeft geen toestemming om deze actie uit te voeren.';

  @override
  String get errorEmptyResultTitle => 'Geen resultaten.';

  @override
  String get errorEmptyResult => 'We konden geen resultaten vinden.';

  @override
  String get errorInvalidInputTitle => 'Ongeldige invoer.';

  @override
  String get errorInvalidInput =>
      'Controleer uw invoer en probeer het opnieuw.';

  @override
  String get errorEmptyTopicsTitle => 'Geen onderwerpen geselecteerd.';

  @override
  String get errorEmptyTopics => 'Selecteer minimaal één onderwerp.';

  @override
  String get errorParsingTitle => 'Parseringsfout.';

  @override
  String get errorParsing => 'We konden de gegevens niet verwerken.';

  @override
  String get errorUnknownTitle => 'Onbekende fout.';

  @override
  String get errorUnknown => 'Er is een onverwachte fout opgetreden.';
}
