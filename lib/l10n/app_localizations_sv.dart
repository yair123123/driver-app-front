// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get back => 'tillbaka';

  @override
  String get saveChangesTitle => 'Spara ändringar';

  @override
  String get channels_section_title => 'Nytt i appen';

  @override
  String get go_to_groups_page => 'Gå till gruppsidan';

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
      'Ett nytt område för WhatsApp och Telegram-kanaler med videor, bilder och uppdateringar – allt det mest intressanta innehållet på ett ställe.';

  @override
  String get newMessages => 'Nya meddelanden';

  @override
  String get addArea => 'Lägg till område';

  @override
  String get removeArea => 'Ta bort område';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Är du säker på att du vill ta bort $area från dina valda områden?';
  }

  @override
  String get channels => 'Kanaler';

  @override
  String get contactUsSuccessTitle => 'Skickat framgångsrikt ✅';

  @override
  String get contactUsSuccessMessage =>
      'Tack! Vi har tagit emot ditt meddelande och återkommer till dig så snart som möjligt.';

  @override
  String get selectCountry => 'Välj Land';

  @override
  String get areaManagmentTitle => 'Företagsnyheter Consumption Area';

  @override
  String get areaManagmentSubtitle => 'Mina länder';

  @override
  String get sharedFromApp => 'Delas från';

  @override
  String get textCopied => 'Text kopierad';

  @override
  String get queryIsEmpty => 'Frågan är tom';

  @override
  String get queryIsEmptyTitle => 'Sökningen är tom.';

  @override
  String get areaWereRemoved => 'Området har tagits bort';

  @override
  String get areaWereAdded => 'Område har lagts till';

  @override
  String get saveChangesMessage => 'Vill du spara ändringarna du gjort?';

  @override
  String get busyLandingTitle => 'Vi landar nästan...';

  @override
  String get busyLandingSubtitle => 'Vi förbereder dina nyheter';

  @override
  String get changeCountryTitle => 'Vilket land ska vi byta till?';

  @override
  String get changeCountrySubtitle =>
      'När du väljer ett land kommer allt innehåll i appen att uppdateras enligt ditt val.';

  @override
  String get dailySummary => 'Daglig sammanfattning';

  @override
  String get lastUpdated => 'Senast uppdaterad';

  @override
  String get saveChangesSubtitle => 'Vill du spara ändringarna du gjort?';

  @override
  String get readMore => 'Läs mer';

  @override
  String get searchPageNoResultsPrefix => 'Inga resultat hittades för ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Inga resultat hittades för \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' i denna kategori';

  @override
  String get toPowerOn => 'att slå på';

  @override
  String get notificationsOffTitle => 'Aviseringar av';

  @override
  String get notificationsOffSubtitle =>
      'Det verkar som om aviseringsåtkomst inte har aktiverats ännu.';

  @override
  String get newArticles => 'Nya artiklar';

  @override
  String get home => 'hem';

  @override
  String get changesApplyOnNextLaunch =>
      'Ändringar kommer att tillämpas vid nästa applansering.';

  @override
  String get enable => 'Aktivera';

  @override
  String get stayUpdatedWithLatestNews =>
      'Håll dig uppdaterad med de senaste nyheterna';

  @override
  String get enableNotifications => 'Aktivera aviseringar';

  @override
  String get error_details => 'Feldetaljer';

  @override
  String get error_title => 'Oj, något fel';

  @override
  String get freeSearch => 'Gratis sökning';

  @override
  String get aiPageSubtitle =>
      'Denna funktion är fortfarande under utveckling \n värt att kolla upp snart.';

  @override
  String get topicsSelectionTitle => 'Val av nyheter';

  @override
  String get groups => 'Grupper';

  @override
  String get aiPageTitle =>
      'Kommer snart: du kommer att kunna chatta med vår AI om nyheterna!';

  @override
  String get topicsSelectionSubtitle =>
      'Välj ämnen eller underämnen som du vill se i ditt flöde. Du kan alltid ändra dem här.';

  @override
  String get failedToLoadTopics => 'Det gick inte att läsa in ämnen';

  @override
  String get settingsNote => 'Du kan redigera inställningarna när som helst';

  @override
  String get lang => 'Språk';

  @override
  String get failed_to_load_data =>
      'Vi kunde inte ladda data. Kontrollera din internetanslutning och försök igen.';

  @override
  String get changeLang => 'Byt språk';

  @override
  String get notNow => 'Inte nu';

  @override
  String get notificationsPermissionRationale =>
      'Genom att aktivera aviseringar kan du hålla dig uppdaterad med viktiga nyheter, brådskande uppdateringar och personligt innehåll – så att du aldrig missar något som betyder något för dig.';

  @override
  String get skipToSuggestedContent => 'Hoppa till innehållet vi valde åt dig';

  @override
  String get lets_go => 'Låt oss gå';

  @override
  String get keepGoing => 'Fortsätta!';

  @override
  String get skip => 'Hoppa över';

  @override
  String get save => 'Spara';

  @override
  String get next => 'Nästa';

  @override
  String get pleaseSelectLanguage => 'Välj ett språk';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Välj minst ett ämne';

  @override
  String get notificationTitle => 'Vill du hålla dig uppdaterad?';

  @override
  String get search => 'Sök';

  @override
  String get searchPageEmptySubtitle => 'Vad skulle du vilja söka efter?';

  @override
  String get searchPageEmptyTitle =>
      'Skriv ett nyckelord eller ämne för att söka';

  @override
  String get notificationSubTitle =>
      'Du kan aktivera popup-aviseringar för alla ämnen som intresserar dig.';

  @override
  String get whatIsInteresting => 'Vad intresserar dig';

  @override
  String get subTextWhatIsInteresting =>
      'För att bara skicka det som verkligen är relevant, låt oss först markera det som intresserar dig.';

  @override
  String get getStarted => 'Kom igång';

  @override
  String get try_again => 'Försök igen';

  @override
  String get allow => 'Tillåt';

  @override
  String get noPermissions => 'Inga behörigheter';

  @override
  String get solution_suggestions => 'Lösningsförslag';

  @override
  String get allowNotifications => 'Tillåt aviseringar';

  @override
  String get notifications => 'Aviseringar';

  @override
  String get notificationsEnabled => 'Aviseringar aktiverade';

  @override
  String get notificationsDenied => 'Aviseringar nekade';

  @override
  String get pleaseWait => 'Vänligen vänta';

  @override
  String get all => 'alla';

  @override
  String get cancel => 'Avbryt';

  @override
  String get openSettings => 'Öppna Inställningar';

  @override
  String get subTextNotifications =>
      'Du kan aktivera popup-aviseringar för varje ämne som intresserar dig.';

  @override
  String get troubleshooting_tips => 'Felsökningstips';

  @override
  String get welcome => 'Välkommen till nyhetsappen, anpassad just för dig!';

  @override
  String get continueReading => 'Fortsätt läsa';

  @override
  String get share => 'Dela';

  @override
  String get area => 'Område';

  @override
  String get chooseYourAreaHint =>
      'Välj ditt område för att få lokala nyhetsuppdateringar';

  @override
  String get chooseYourAreaHintUnused =>
      'Välj den nyhetsregion du vill ha.\nInom appen kan du också välja ytterligare länder.';

  @override
  String get chooseYourLangHint =>
      'Välj ditt språk, du kan alltid ändra det senare.';

  @override
  String get topics => 'Ämnen';

  @override
  String get chooseTopicsHint =>
      'Välj de ämnen som intresserar dig, du kan alltid ändra dem i inställningarna.';

  @override
  String get categories => 'Kategorier';

  @override
  String get manageNotifications => 'Hantera aviseringar';

  @override
  String get languageAndRegion => 'Språk & region';

  @override
  String get about => 'Om';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get contactUs => 'Kontakta oss';

  @override
  String get networkStatusPartialTitle => 'Serverproblem';

  @override
  String get networkStatusOfflineTitle => 'Ingen internetuppkoppling';

  @override
  String get networkStatusPartialMessage =>
      'Vi kan nå internet men inte servern.\\nFörsök igen om ett ögonblick.';

  @override
  String get networkStatusOfflineMessage =>
      'Ingen internetuppkoppling. Vi visar äldre artiklar; anslut till internet för att se de senaste berättelserna.';

  @override
  String get networkStatusInternetLabel => 'Internetanslutning';

  @override
  String get networkStatusServerLabel => 'Serveranslutning';

  @override
  String get networkStatusDismiss => 'Jag förstår';

  @override
  String get networkStatusConnected => 'Ansluten';

  @override
  String get networkStatusDisconnected => 'Ej ansluten';

  @override
  String get offlineMode => 'Offlineläge';

  @override
  String get changesSavedSuccessfully => 'Ändringarna har sparats';

  @override
  String get unableToSaveChanges => 'Det gick inte att spara ändringar';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Popup-aviseringar';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Anpassa dina varningar enkelt. Slå på eller av push-meddelanden för alla ämnen som intresserar dig.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Uppdatering på väg!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Snart kommer du att kunna välja vilka regioner i världen du vill få nyheter och uppdateringar från.';

  @override
  String get info => 'Info';

  @override
  String get success => 'Framgång';

  @override
  String get saveChanges => 'Spara ändringar';

  @override
  String get saveChangesConfirmation => 'Vill du spara dina ändringar?';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get unableToOpenReference => 'Det gick inte att öppna denna referens';

  @override
  String searchPageNoResults(String query) {
    return 'Inga resultat hittades för \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Inga resultat hittades för \"$query\" i denna kategori';
  }

  @override
  String get newsTopics => 'Nyhetsämnen';

  @override
  String get errorNoInternet => 'Kontrollera din anslutning och försök igen.';

  @override
  String get errorNoInternetTitle => 'Ingen internetuppkoppling.';

  @override
  String get errorTimeout => 'Förfrågan tog timeout. Försök igen senare.';

  @override
  String get errorTimeoutTitle => 'Begäran tog timeout.';

  @override
  String get errorServer => 'Serverfel uppstod. Försök igen.';

  @override
  String get errorServerTitle => 'Serverfel.';

  @override
  String get errorUnauthorized =>
      'Du är inte auktoriserad. Logga in och försök igen.';

  @override
  String get errorUnauthorizedTitle => 'Obehörig.';

  @override
  String get errorForbidden =>
      'Du har inte behörighet att utföra den här åtgärden.';

  @override
  String get errorForbiddenTitle => 'Åtkomst nekad.';

  @override
  String get errorNotFound => 'Vi kunde inte hitta det du letade efter.';

  @override
  String get errorNotFoundTitle => 'Hittade inte.';

  @override
  String get updateArticle => 'Mer information har uppdaterats';

  @override
  String get errorValidation =>
      'Viss information verkar ogiltig. Granska och försök igen.';

  @override
  String get agreeMail =>
      'Jag samtycker till att få uppdateringar och nyhetsbrev via e-post.';

  @override
  String get sendUsEmail => 'Skicka ett mejl till oss';

  @override
  String get discardChangesTitle => 'Vill du ignorera ändringar?';

  @override
  String get discardChangesMessage =>
      'Du har osparade ändringar. Om du fortsätter kommer de att gå förlorade.';

  @override
  String get discardButton => 'Släng';

  @override
  String get stayButton => 'Stanna';

  @override
  String get changeCountryConfirm => 'Byt nyhetsdestination';

  @override
  String get otherWaysToContact => 'Andra sätt att kontakta';

  @override
  String get agreePrivacy => 'Jag har läst och godkänner ';

  @override
  String get contactUsSubtitle =>
      'Kontakta oss gärna genom att använda formuläret nedan.';

  @override
  String get fullName => 'Fullständigt namn';

  @override
  String get mail => 'E-postadress';

  @override
  String get message => 'Meddelande';

  @override
  String get errorValidationTitle => 'Ogiltig inmatning.';

  @override
  String get similarSources => 'Liknande källor';

  @override
  String get send => 'Skicka';

  @override
  String get errorGeneric => 'Något gick fel. Försök igen.';

  @override
  String get errorGenericTitle => 'Något gick fel.';

  @override
  String get emptyResults_title => 'Inga matchande resultat';

  @override
  String get emptyResults_noResults => 'Inga resultat hittades.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Prova att ändra dina sökord eller välj ett annat ämne.';

  @override
  String get emptyResults_bottomWithoutTopic => 'Prova att ändra dina sökord.';

  @override
  String get emptyResults_inThisTopic => 'i detta ämne';

  @override
  String get errorBadRequestTitle => 'Dålig begäran.';

  @override
  String get errorBadRequest => 'Begäran var ogiltig. Försök igen.';

  @override
  String get errorNotModifiedTitle => 'Ej modifierad.';

  @override
  String get errorNotModified =>
      'Ingenting har förändrats sedan din senaste begäran.';

  @override
  String get errorNetworkTitle => 'Nätverksfel.';

  @override
  String get errorNetwork =>
      'Vi kunde inte nå nätverket. Kontrollera din anslutning och försök igen.';

  @override
  String get errorDataIsEmptyTitle => 'Inga data tillgängliga.';

  @override
  String get errorDataIsEmpty => 'Vi kunde inte hitta någon data att visa.';

  @override
  String get errorConflictTitle => 'Konflikt.';

  @override
  String get errorConflict =>
      'Begäran kom i konflikt med befintliga data. Försök igen.';

  @override
  String get errorServerValidationTitle => 'Valideringsfel.';

  @override
  String get errorServerValidation =>
      'Servern avvisade vissa data. Granska och försök igen.';

  @override
  String get errorWriteFileTitle => 'Skrivningen misslyckades.';

  @override
  String get errorWriteFile => 'Vi kunde inte spara filen. Försök igen.';

  @override
  String get errorReadFileTitle => 'Läsningen misslyckades.';

  @override
  String get errorReadFile => 'Vi kunde inte läsa filen. Försök igen.';

  @override
  String get errorFileNotFoundTitle => 'Filen hittades inte.';

  @override
  String get errorFileNotFound => 'Vi kunde inte hitta filen du letade efter.';

  @override
  String get errorInsufficientStorageTitle =>
      'Inte tillräckligt med lagringsutrymme.';

  @override
  String get errorInsufficientStorage => 'Frigör utrymme och försök igen.';

  @override
  String get errorDatabaseReadTitle => 'Databas läsfel.';

  @override
  String get errorDatabaseRead => 'Vi kunde inte läsa från databasen.';

  @override
  String get errorDatabaseWriteTitle => 'Databasskrivfel.';

  @override
  String get errorDatabaseWrite => 'Vi kunde inte spara till databasen.';

  @override
  String get errorDatabaseConnectionTitle => 'Databasanslutningsfel.';

  @override
  String get errorDatabaseConnection => 'Vi kunde inte ansluta till databasen.';

  @override
  String get errorAuthTitle => 'Autentiseringsfel.';

  @override
  String get errorAuth => 'Logga in och försök igen.';

  @override
  String get errorInvalidCredentialsTitle => 'Ogiltiga användaruppgifter.';

  @override
  String get errorInvalidCredentials =>
      'Användarnamnet eller lösenordet är felaktigt.';

  @override
  String get errorSecureStorageReadTitle => 'Läsfel för säker lagring.';

  @override
  String get errorSecureStorageRead => 'Vi kunde inte läsa från säker lagring.';

  @override
  String get errorSecureStorageWriteTitle => 'Skrivfel för säker lagring.';

  @override
  String get errorSecureStorageWrite =>
      'Vi kunde inte skriva till säker lagring.';

  @override
  String get errorSecureStorageClearTitle => 'Rensa fel för säker lagring.';

  @override
  String get errorSecureStorageClear => 'Vi kunde inte rensa säker lagring.';

  @override
  String get errorTokenExpiredTitle => 'Sessionen har löpt ut.';

  @override
  String get errorTokenExpired => 'Logga in igen.';

  @override
  String get errorUserNotFoundTitle => 'Användaren hittades inte.';

  @override
  String get errorUserNotFound => 'Vi kunde inte hitta den användaren.';

  @override
  String get errorPermissionDeniedTitle => 'Tillstånd nekad.';

  @override
  String get errorPermissionDenied =>
      'Du har inte behörighet att utföra den här åtgärden.';

  @override
  String get errorEmptyResultTitle => 'Inga resultat.';

  @override
  String get errorEmptyResult => 'Vi kunde inte hitta några resultat.';

  @override
  String get errorInvalidInputTitle => 'Ogiltig inmatning.';

  @override
  String get errorInvalidInput => 'Kontrollera din inmatning och försök igen.';

  @override
  String get errorEmptyTopicsTitle => 'Inga ämnen har valts.';

  @override
  String get errorEmptyTopics => 'Välj minst ett ämne.';

  @override
  String get errorParsingTitle => 'Parsningsfel.';

  @override
  String get errorParsing => 'Vi kunde inte bearbeta uppgifterna.';

  @override
  String get errorUnknownTitle => 'Okänt fel.';

  @override
  String get errorUnknown => 'Ett oväntat fel inträffade.';
}
