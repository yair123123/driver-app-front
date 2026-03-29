// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get back => 'zurück';

  @override
  String get saveChangesTitle => 'Änderungen speichern';

  @override
  String get channels_section_title => 'Neu in der App';

  @override
  String get go_to_groups_page => 'Gehen Sie zur Gruppenseite';

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
      'Ein neuer Bereich für WhatsApp- und Telegram-Kanäle mit Videos, Bildern und Updates – alle interessantesten Inhalte an einem Ort.';

  @override
  String get newMessages => 'Neue Nachrichten';

  @override
  String get addArea => 'Bereich hinzufügen';

  @override
  String get removeArea => 'Bereich entfernen';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Sind Sie sicher, dass Sie $area aus den ausgewählten Bereichen entfernen möchten?';
  }

  @override
  String get channels => 'Kanäle';

  @override
  String get contactUsSuccessTitle => 'Erfolgreich gesendet ✅';

  @override
  String get contactUsSuccessMessage =>
      'Vielen Dank! Wir haben Ihre Nachricht erhalten und werden uns schnellstmöglich bei Ihnen melden.';

  @override
  String get selectCountry => 'Wählen Sie Land aus';

  @override
  String get areaManagmentTitle => 'Nachrichtenkonsumbereich';

  @override
  String get areaManagmentSubtitle => 'Meine Länder';

  @override
  String get sharedFromApp => 'Geteilt von';

  @override
  String get textCopied => 'Text kopiert';

  @override
  String get queryIsEmpty => 'Die Abfrage ist leer';

  @override
  String get queryIsEmptyTitle => 'Die Suche ist leer.';

  @override
  String get areaWereRemoved => 'Bereiche wurden erfolgreich entfernt';

  @override
  String get areaWereAdded => 'Bereich wurde erfolgreich hinzugefügt';

  @override
  String get saveChangesMessage =>
      'Möchten Sie die vorgenommenen Änderungen speichern?';

  @override
  String get busyLandingTitle => 'Wir landen fast ...';

  @override
  String get busyLandingSubtitle => 'Wir bereiten Ihre Nachrichten vor';

  @override
  String get changeCountryTitle => 'In welches Land sollen wir wechseln?';

  @override
  String get changeCountrySubtitle =>
      'Wenn Sie ein Land auswählen, werden alle Inhalte in der App entsprechend Ihrer Auswahl aktualisiert.';

  @override
  String get dailySummary => 'Tägliche Zusammenfassung';

  @override
  String get lastUpdated => 'Zuletzt aktualisiert';

  @override
  String get saveChangesSubtitle =>
      'Möchten Sie die vorgenommenen Änderungen speichern?';

  @override
  String get readMore => 'Lesen Sie mehr';

  @override
  String get searchPageNoResultsPrefix => 'Keine Ergebnisse gefunden für ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Keine Ergebnisse gefunden für \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' in dieser Kategorie';

  @override
  String get toPowerOn => 'zum Einschalten';

  @override
  String get notificationsOffTitle => 'Benachrichtigungen deaktiviert';

  @override
  String get notificationsOffSubtitle =>
      'Es sieht so aus, als ob der Benachrichtigungszugriff noch nicht aktiviert wurde.';

  @override
  String get newArticles => 'Neue Artikel';

  @override
  String get home => 'Zuhause';

  @override
  String get changesApplyOnNextLaunch =>
      'Änderungen werden beim nächsten App-Start übernommen.';

  @override
  String get enable => 'Aktivieren';

  @override
  String get stayUpdatedWithLatestNews =>
      'Bleiben Sie mit den neuesten Nachrichten auf dem Laufenden';

  @override
  String get enableNotifications => 'Benachrichtigungen aktivieren';

  @override
  String get error_details => 'Fehlerdetails';

  @override
  String get error_title => 'Ups, da stimmt etwas nicht';

  @override
  String get freeSearch => 'Kostenlose Suche';

  @override
  String get aiPageSubtitle =>
      'Diese Funktion befindet sich noch in der Entwicklung \n Es lohnt sich, bald noch einmal vorbeizuschauen.';

  @override
  String get topicsSelectionTitle => 'Auswahl der Nachrichtenthemen';

  @override
  String get groups => 'Gruppen';

  @override
  String get aiPageTitle =>
      'Bald verfügbar: Sie können mit unserer KI über Neuigkeiten chatten!';

  @override
  String get topicsSelectionSubtitle =>
      'Wählen Sie Themen oder Unterthemen aus, die Sie in Ihrem Feed sehen möchten. Sie können sie hier jederzeit ändern.';

  @override
  String get failedToLoadTopics => 'Die Themen konnten nicht geladen werden';

  @override
  String get settingsNote =>
      'Sie können die Einstellungen jederzeit bearbeiten';

  @override
  String get lang => 'Sprache';

  @override
  String get failed_to_load_data =>
      'Wir konnten die Daten nicht laden. Bitte überprüfen Sie Ihre Internetverbindung und versuchen Sie es erneut.';

  @override
  String get changeLang => 'Sprache ändern';

  @override
  String get notNow => 'Nicht jetzt';

  @override
  String get notificationsPermissionRationale =>
      'Durch die Aktivierung von Benachrichtigungen bleiben Sie über wichtige Neuigkeiten, dringende Updates und personalisierte Inhalte auf dem Laufenden – so verpassen Sie nichts, was Ihnen wichtig ist.';

  @override
  String get skipToSuggestedContent =>
      'Springen Sie zu den Inhalten, die wir für Sie ausgewählt haben';

  @override
  String get lets_go => 'Lass uns gehen';

  @override
  String get keepGoing => 'Weitermachen!';

  @override
  String get skip => 'Überspringen';

  @override
  String get save => 'Speichern';

  @override
  String get next => 'Als nächstes';

  @override
  String get pleaseSelectLanguage => 'Bitte wählen Sie eine Sprache aus';

  @override
  String get pleaseSelectAtLeastOneTopic =>
      'Wählen Sie mindestens ein Thema aus';

  @override
  String get notificationTitle => 'Möchten Sie auf dem Laufenden bleiben?';

  @override
  String get search => 'Suchen';

  @override
  String get searchPageEmptySubtitle => 'Was möchten Sie suchen?';

  @override
  String get searchPageEmptyTitle =>
      'Geben Sie ein Schlüsselwort oder Thema für die Suche ein';

  @override
  String get notificationSubTitle =>
      'Sie können Popup-Benachrichtigungen für jedes Thema aktivieren, das Sie interessiert.';

  @override
  String get whatIsInteresting => 'Was Sie interessiert';

  @override
  String get subTextWhatIsInteresting =>
      'Um nur das zu senden, was wirklich relevant ist, markieren wir zunächst, was Sie interessiert.';

  @override
  String get getStarted => 'Legen Sie los';

  @override
  String get try_again => 'Versuchen Sie es erneut';

  @override
  String get allow => 'Erlauben';

  @override
  String get noPermissions => 'Keine Berechtigungen';

  @override
  String get solution_suggestions => 'Lösungsvorschläge';

  @override
  String get allowNotifications => 'Benachrichtigungen zulassen';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get notificationsEnabled => 'Benachrichtigungen aktiviert';

  @override
  String get notificationsDenied => 'Benachrichtigungen abgelehnt';

  @override
  String get pleaseWait => 'Bitte warten';

  @override
  String get all => 'alle';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get openSettings => 'Öffnen Sie Einstellungen';

  @override
  String get subTextNotifications =>
      'Sie können Popup-Benachrichtigungen für jedes Thema aktivieren, das Sie interessiert.';

  @override
  String get troubleshooting_tips => 'Tipps zur Fehlerbehebung';

  @override
  String get welcome =>
      'Willkommen in der Nachrichten-App, speziell für Sie personalisiert!';

  @override
  String get continueReading => 'Lesen Sie weiter';

  @override
  String get share => 'Teilen';

  @override
  String get area => 'Bereich';

  @override
  String get chooseYourAreaHint =>
      'Wählen Sie Ihre Region aus, um lokalisierte Nachrichtenaktualisierungen zu erhalten';

  @override
  String get chooseYourAreaHintUnused =>
      'Wählen Sie die gewünschte Nachrichtenregion.\nInnerhalb der App können Sie auch weitere Länder auswählen.';

  @override
  String get chooseYourLangHint =>
      'Wählen Sie Ihre Sprache, Sie können sie später jederzeit ändern.';

  @override
  String get topics => 'Themen';

  @override
  String get chooseTopicsHint =>
      'Wählen Sie die Themen aus, die Sie interessieren. Sie können sie jederzeit in den Einstellungen ändern.';

  @override
  String get categories => 'Kategorien';

  @override
  String get manageNotifications => 'Benachrichtigungen verwalten';

  @override
  String get languageAndRegion => 'Sprache & Region';

  @override
  String get about => 'Über';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get contactUs => 'Kontaktieren Sie uns';

  @override
  String get networkStatusPartialTitle => 'Serverproblem';

  @override
  String get networkStatusOfflineTitle => 'Keine Internetverbindung';

  @override
  String get networkStatusPartialMessage =>
      'Wir können das Internet erreichen, aber nicht den Server.\\nVersuchen Sie es gleich noch einmal.';

  @override
  String get networkStatusOfflineMessage =>
      'Keine Internetverbindung. Wir zeigen ältere Artikel; Stellen Sie eine Verbindung zum Internet her, um die neuesten Geschichten zu sehen.';

  @override
  String get networkStatusInternetLabel => 'Internetverbindung';

  @override
  String get networkStatusServerLabel => 'Serververbindung';

  @override
  String get networkStatusDismiss => 'Verstanden';

  @override
  String get networkStatusConnected => 'Verbunden';

  @override
  String get networkStatusDisconnected => 'Nicht verbunden';

  @override
  String get offlineMode => 'Offline-Modus';

  @override
  String get changesSavedSuccessfully => 'Änderungen erfolgreich gespeichert';

  @override
  String get unableToSaveChanges =>
      'Änderungen können nicht gespeichert werden';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Popup-Benachrichtigungen';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Passen Sie Ihre Benachrichtigungen ganz einfach an. Aktivieren oder deaktivieren Sie Push-Benachrichtigungen für jedes Thema, das Sie interessiert.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Update unterwegs!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Bald können Sie auswählen, aus welchen Regionen der Welt Sie Neuigkeiten und Updates erhalten möchten.';

  @override
  String get info => 'Infos';

  @override
  String get success => 'Erfolg';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get saveChangesConfirmation =>
      'Möchten Sie Ihre Änderungen speichern?';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get unableToOpenReference =>
      'Diese Referenz kann nicht geöffnet werden';

  @override
  String searchPageNoResults(String query) {
    return 'Keine Ergebnisse für „$query“ gefunden';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Für „$query“ wurden in dieser Kategorie keine Ergebnisse gefunden';
  }

  @override
  String get newsTopics => 'Nachrichtenthemen';

  @override
  String get errorNoInternet =>
      'Bitte überprüfen Sie Ihre Verbindung und versuchen Sie es erneut.';

  @override
  String get errorNoInternetTitle => 'Keine Internetverbindung.';

  @override
  String get errorTimeout =>
      'Bei der Anfrage ist eine Zeitüberschreitung aufgetreten. Bitte versuchen Sie es später noch einmal.';

  @override
  String get errorTimeoutTitle => 'Zeitüberschreitung bei der Anfrage.';

  @override
  String get errorServer =>
      'Es ist ein Serverfehler aufgetreten. Bitte versuchen Sie es erneut.';

  @override
  String get errorServerTitle => 'Serverfehler.';

  @override
  String get errorUnauthorized =>
      'Sie sind nicht autorisiert. Bitte melden Sie sich an und versuchen Sie es erneut.';

  @override
  String get errorUnauthorizedTitle => 'Nicht autorisiert.';

  @override
  String get errorForbidden =>
      'Sie haben keine Berechtigung, diese Aktion auszuführen.';

  @override
  String get errorForbiddenTitle => 'Zugriff verweigert.';

  @override
  String get errorNotFound =>
      'Wir konnten nicht finden, was Sie gesucht haben.';

  @override
  String get errorNotFoundTitle => 'Nicht gefunden.';

  @override
  String get updateArticle => 'Weitere Details wurden aktualisiert';

  @override
  String get errorValidation =>
      'Einige Informationen scheinen ungültig zu sein. Bitte überprüfen Sie es und versuchen Sie es erneut.';

  @override
  String get agreeMail =>
      'Ich bin damit einverstanden, Updates und Newsletter per E-Mail zu erhalten.';

  @override
  String get sendUsEmail => 'Schicken Sie uns eine E-Mail';

  @override
  String get discardChangesTitle => 'Änderungen verwerfen?';

  @override
  String get discardChangesMessage =>
      'Sie haben nicht gespeicherte Änderungen. Wenn Sie fortfahren, gehen sie verloren.';

  @override
  String get discardButton => 'Verwerfen';

  @override
  String get stayButton => 'Bleib';

  @override
  String get changeCountryConfirm => 'Nachrichtenziel wechseln';

  @override
  String get otherWaysToContact => 'Weitere Kontaktmöglichkeiten';

  @override
  String get agreePrivacy =>
      'Ich habe die gelesen und bin damit einverstanden ';

  @override
  String get contactUsSubtitle =>
      'Kontaktieren Sie uns gerne über das untenstehende Formular.';

  @override
  String get fullName => 'Vollständiger Name';

  @override
  String get mail => 'E-Mail-Adresse';

  @override
  String get message => 'Nachricht';

  @override
  String get errorValidationTitle => 'Ungültige Eingabe.';

  @override
  String get similarSources => 'Ähnliche Quellen';

  @override
  String get send => 'Senden';

  @override
  String get errorGeneric =>
      'Etwas ist schief gelaufen. Bitte versuchen Sie es erneut.';

  @override
  String get errorGenericTitle => 'Etwas ist schief gelaufen.';

  @override
  String get emptyResults_title => 'Keine passenden Ergebnisse';

  @override
  String get emptyResults_noResults => 'Keine Ergebnisse gefunden.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Versuchen Sie, Ihre Schlüsselwörter zu ändern oder ein anderes Thema zu wählen.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'Versuchen Sie, Ihre Schlüsselwörter zu ändern.';

  @override
  String get emptyResults_inThisTopic => 'in diesem Thema';

  @override
  String get errorBadRequestTitle => 'Schlechte Anfrage.';

  @override
  String get errorBadRequest =>
      'Die Anfrage war ungültig. Bitte versuchen Sie es erneut.';

  @override
  String get errorNotModifiedTitle => 'Nicht geändert.';

  @override
  String get errorNotModified =>
      'Seit Ihrer letzten Anfrage hat sich nichts geändert.';

  @override
  String get errorNetworkTitle => 'Netzwerkfehler.';

  @override
  String get errorNetwork =>
      'Wir konnten das Netzwerk nicht erreichen. Überprüfen Sie Ihre Verbindung und versuchen Sie es erneut.';

  @override
  String get errorDataIsEmptyTitle => 'Keine Daten verfügbar.';

  @override
  String get errorDataIsEmpty =>
      'Wir konnten keine anzuzeigenden Daten finden.';

  @override
  String get errorConflictTitle => 'Konflikt.';

  @override
  String get errorConflict =>
      'Die Anfrage widersprach den vorhandenen Daten. Bitte versuchen Sie es erneut.';

  @override
  String get errorServerValidationTitle => 'Validierungsfehler.';

  @override
  String get errorServerValidation =>
      'Der Server hat einige Daten abgelehnt. Bitte überprüfen Sie es und versuchen Sie es erneut.';

  @override
  String get errorWriteFileTitle => 'Schreiben fehlgeschlagen.';

  @override
  String get errorWriteFile =>
      'Wir konnten die Datei nicht speichern. Bitte versuchen Sie es erneut.';

  @override
  String get errorReadFileTitle => 'Das Lesen ist fehlgeschlagen.';

  @override
  String get errorReadFile =>
      'Wir konnten die Datei nicht lesen. Bitte versuchen Sie es erneut.';

  @override
  String get errorFileNotFoundTitle => 'Datei nicht gefunden.';

  @override
  String get errorFileNotFound =>
      'Wir konnten die gesuchte Datei nicht finden.';

  @override
  String get errorInsufficientStorageTitle => 'Nicht genügend Speicherplatz.';

  @override
  String get errorInsufficientStorage =>
      'Geben Sie Speicherplatz frei und versuchen Sie es erneut.';

  @override
  String get errorDatabaseReadTitle => 'Fehler beim Lesen der Datenbank.';

  @override
  String get errorDatabaseRead => 'Wir konnten nicht aus der Datenbank lesen.';

  @override
  String get errorDatabaseWriteTitle => 'Fehler beim Schreiben der Datenbank.';

  @override
  String get errorDatabaseWrite =>
      'Wir konnten nicht in der Datenbank speichern.';

  @override
  String get errorDatabaseConnectionTitle =>
      'Fehler bei der Datenbankverbindung.';

  @override
  String get errorDatabaseConnection =>
      'Wir konnten keine Verbindung zur Datenbank herstellen.';

  @override
  String get errorAuthTitle => 'Authentifizierungsfehler.';

  @override
  String get errorAuth =>
      'Bitte melden Sie sich an und versuchen Sie es erneut.';

  @override
  String get errorInvalidCredentialsTitle => 'Ungültige Anmeldeinformationen.';

  @override
  String get errorInvalidCredentials =>
      'Der Benutzername oder das Passwort ist falsch.';

  @override
  String get errorSecureStorageReadTitle =>
      'Fehler beim Lesen des sicheren Speichers.';

  @override
  String get errorSecureStorageRead =>
      'Wir konnten nicht aus dem sicheren Speicher lesen.';

  @override
  String get errorSecureStorageWriteTitle =>
      'Fehler beim Schreiben des sicheren Speichers.';

  @override
  String get errorSecureStorageWrite =>
      'Wir konnten nicht in den sicheren Speicher schreiben.';

  @override
  String get errorSecureStorageClearTitle =>
      'Fehler beim Löschen des sicheren Speichers.';

  @override
  String get errorSecureStorageClear =>
      'Wir konnten den sicheren Speicher nicht löschen.';

  @override
  String get errorTokenExpiredTitle => 'Sitzung abgelaufen.';

  @override
  String get errorTokenExpired => 'Bitte melden Sie sich erneut an.';

  @override
  String get errorUserNotFoundTitle => 'Benutzer nicht gefunden.';

  @override
  String get errorUserNotFound => 'Wir konnten diesen Benutzer nicht finden.';

  @override
  String get errorPermissionDeniedTitle => 'Erlaubnis verweigert.';

  @override
  String get errorPermissionDenied =>
      'Sie haben keine Berechtigung, diese Aktion auszuführen.';

  @override
  String get errorEmptyResultTitle => 'Keine Ergebnisse.';

  @override
  String get errorEmptyResult => 'Wir konnten keine Ergebnisse finden.';

  @override
  String get errorInvalidInputTitle => 'Ungültige Eingabe.';

  @override
  String get errorInvalidInput =>
      'Bitte überprüfen Sie Ihre Eingabe und versuchen Sie es erneut.';

  @override
  String get errorEmptyTopicsTitle => 'Keine Themen ausgewählt.';

  @override
  String get errorEmptyTopics => 'Bitte wählen Sie mindestens ein Thema aus.';

  @override
  String get errorParsingTitle => 'Parsing-Fehler.';

  @override
  String get errorParsing => 'Wir konnten die Daten nicht verarbeiten.';

  @override
  String get errorUnknownTitle => 'Unbekannter Fehler.';

  @override
  String get errorUnknown => 'Es ist ein unerwarteter Fehler aufgetreten.';
}
