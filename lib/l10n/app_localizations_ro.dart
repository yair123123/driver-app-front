// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get back => 'înapoi';

  @override
  String get saveChangesTitle => 'Salvați modificările';

  @override
  String get channels_section_title => 'Nou în aplicație';

  @override
  String get go_to_groups_page => 'Accesați pagina de grupuri';

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
      'O nouă zonă pentru canalele WhatsApp și Telegram cu videoclipuri, imagini și actualizări – tot cel mai interesant conținut într-un singur loc.';

  @override
  String get newMessages => 'Mesaje noi';

  @override
  String get addArea => 'Adăugați zonă';

  @override
  String get removeArea => 'Eliminați zona';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Sigur doriți să eliminați $area din zonele selectate?';
  }

  @override
  String get channels => 'Canale';

  @override
  String get contactUsSuccessTitle => 'Trimis cu succes ✅';

  @override
  String get contactUsSuccessMessage =>
      'Multumesc! Am primit mesajul dvs. și vă vom contacta cât mai curând posibil.';

  @override
  String get selectCountry => 'Selectați Țara';

  @override
  String get areaManagmentTitle => 'Zona Consum de Știri';

  @override
  String get areaManagmentSubtitle => 'Țările Mele';

  @override
  String get sharedFromApp => 'Distribuit de la';

  @override
  String get textCopied => 'Text copiat';

  @override
  String get queryIsEmpty => 'Interogarea este goală';

  @override
  String get queryIsEmptyTitle => 'Căutarea este goală.';

  @override
  String get areaWereRemoved => 'Zona au fost eliminate cu succes';

  @override
  String get areaWereAdded => 'Zona au fost adăugate cu succes';

  @override
  String get saveChangesMessage =>
      'Doriți să salvați modificările pe care le-ați făcut?';

  @override
  String get busyLandingTitle => 'Aproape aterizam...';

  @override
  String get busyLandingSubtitle => 'Vă pregătim știrile';

  @override
  String get changeCountryTitle => 'În ce țară ar trebui să trecem?';

  @override
  String get changeCountrySubtitle =>
      'Când alegeți o țară, tot conținutul din aplicație se va actualiza în funcție de selecția dvs.';

  @override
  String get dailySummary => 'Rezumat zilnic';

  @override
  String get lastUpdated => 'Ultima actualizare';

  @override
  String get saveChangesSubtitle =>
      'Doriți să salvați modificările pe care le-ați făcut?';

  @override
  String get readMore => 'Citiți mai multe';

  @override
  String get searchPageNoResultsPrefix => 'Nu s-au găsit rezultate pentru ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Nu s-au găsit rezultate pentru \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix =>
      ' în această categorie';

  @override
  String get toPowerOn => 'a porni';

  @override
  String get notificationsOffTitle => 'Notificări dezactivate';

  @override
  String get notificationsOffSubtitle =>
      'Se pare că accesul la notificări nu a fost încă activat.';

  @override
  String get newArticles => 'Articole noi';

  @override
  String get home => 'acasă';

  @override
  String get changesApplyOnNextLaunch =>
      'Modificările vor fi aplicate la următoarea lansare a aplicației.';

  @override
  String get enable => 'Activați';

  @override
  String get stayUpdatedWithLatestNews =>
      'Rămâneți la curent cu cele mai recente știri';

  @override
  String get enableNotifications => 'Activați notificările';

  @override
  String get error_details => 'Detalii despre eroare';

  @override
  String get error_title => 'Hopa, ceva în neregulă';

  @override
  String get freeSearch => 'Căutare gratuită';

  @override
  String get aiPageSubtitle =>
      'Această caracteristică este încă în dezvoltare \n merită verificat în curând.';

  @override
  String get topicsSelectionTitle => 'Selecția subiectelor de știri';

  @override
  String get groups => 'Grupuri';

  @override
  String get aiPageTitle =>
      'În curând: veți putea discuta cu AI-ul nostru despre noutăți!';

  @override
  String get topicsSelectionSubtitle =>
      'Alegeți subiecte sau subsubiecte pe care doriți să le vedeți în feed. Le poți schimba oricând aici.';

  @override
  String get failedToLoadTopics => 'Nu s-au încărcat subiectele';

  @override
  String get settingsNote => 'Puteți edita oricând setările';

  @override
  String get lang => 'Limba';

  @override
  String get failed_to_load_data =>
      'Nu am putut încărca datele. Vă rugăm să vă verificați conexiunea la internet și să încercați din nou.';

  @override
  String get changeLang => 'Schimbați limba';

  @override
  String get notNow => 'Nu acum';

  @override
  String get notificationsPermissionRationale =>
      'Activarea notificărilor vă permite să fiți la curent cu știri importante, actualizări urgente și conținut personalizat, astfel încât să nu ratați niciodată nimic care contează pentru dvs.';

  @override
  String get skipToSuggestedContent =>
      'Treci la conținutul pe care l-am ales pentru tine';

  @override
  String get lets_go => 'Să mergem';

  @override
  String get keepGoing => 'Continuă!';

  @override
  String get skip => 'Sari peste';

  @override
  String get save => 'Salvați';

  @override
  String get next => 'În continuare';

  @override
  String get pleaseSelectLanguage => 'Vă rugăm să selectați o limbă';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Selectați cel puțin un subiect';

  @override
  String get notificationTitle => 'Vrei să fii la curent?';

  @override
  String get search => 'Caută';

  @override
  String get searchPageEmptySubtitle => 'Ce ai vrea să cauți?';

  @override
  String get searchPageEmptyTitle =>
      'Introduceți un cuvânt cheie sau un subiect de căutat';

  @override
  String get notificationSubTitle =>
      'Puteți activa notificările pop-up pentru orice subiect care vă interesează.';

  @override
  String get whatIsInteresting => 'Ce te interesează';

  @override
  String get subTextWhatIsInteresting =>
      'Pentru a trimite doar ceea ce este cu adevărat relevant, să marchem mai întâi ceea ce te interesează.';

  @override
  String get getStarted => 'Începeți';

  @override
  String get try_again => 'Încercați din nou';

  @override
  String get allow => 'Permite';

  @override
  String get noPermissions => 'Fără permisiuni';

  @override
  String get solution_suggestions => 'Sugestii de soluții';

  @override
  String get allowNotifications => 'Permite notificări';

  @override
  String get notifications => 'Notificări';

  @override
  String get notificationsEnabled => 'Notificări activate';

  @override
  String get notificationsDenied => 'Notificări refuzate';

  @override
  String get pleaseWait => 'Vă rugăm să așteptați';

  @override
  String get all => 'toate';

  @override
  String get cancel => 'Anulează';

  @override
  String get openSettings => 'Deschide Setări';

  @override
  String get subTextNotifications =>
      'Puteți activa notificările pop-up pentru fiecare subiect care vă interesează.';

  @override
  String get troubleshooting_tips => 'Sfaturi de depanare';

  @override
  String get welcome =>
      'Bun venit la aplicația de știri, personalizată doar pentru tine!';

  @override
  String get continueReading => 'Continuă să citești';

  @override
  String get share => 'Distribuie';

  @override
  String get area => 'Zona';

  @override
  String get chooseYourAreaHint =>
      'Alegeți zona dvs. pentru a primi actualizări de știri localizate';

  @override
  String get chooseYourAreaHintUnused =>
      'Alegeți regiunea de știri dorită.\nÎn cadrul aplicației, puteți selecta și alte țări.';

  @override
  String get chooseYourLangHint =>
      'Alegeți limba dvs., o puteți schimba oricând ulterior.';

  @override
  String get topics => 'Subiecte';

  @override
  String get chooseTopicsHint =>
      'Alege subiectele care te interesează, le poți schimba oricând în setări.';

  @override
  String get categories => 'Categorii';

  @override
  String get manageNotifications => 'Gestionați notificările';

  @override
  String get languageAndRegion => 'Limbă și regiune';

  @override
  String get about => 'Despre';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get contactUs => 'Contactați-ne';

  @override
  String get networkStatusPartialTitle => 'Problema cu serverul';

  @override
  String get networkStatusOfflineTitle => 'Fără conexiune la internet';

  @override
  String get networkStatusPartialMessage =>
      'Putem accesa internetul, dar nu și serverul.\\nÎncercați din nou peste un moment.';

  @override
  String get networkStatusOfflineMessage =>
      'Fără conexiune la internet. Afișăm articole mai vechi; conectați-vă la internet pentru a vedea cele mai recente povești.';

  @override
  String get networkStatusInternetLabel => 'conexiune la internet';

  @override
  String get networkStatusServerLabel => 'Conexiune la server';

  @override
  String get networkStatusDismiss => 'Am înțeles';

  @override
  String get networkStatusConnected => 'Conectat';

  @override
  String get networkStatusDisconnected => 'Nu este conectat';

  @override
  String get offlineMode => 'Modul offline';

  @override
  String get changesSavedSuccessfully =>
      'Modificările au fost salvate cu succes';

  @override
  String get unableToSaveChanges => 'Nu se pot salva modificările';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Notificări pop-up';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Personalizați-vă alertele cu ușurință. Activați sau dezactivați notificările push pentru orice subiect care vă interesează.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Actualizare pe drum!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'În curând, veți putea alege din ce regiuni ale lumii doriți să primiți știri și actualizări.';

  @override
  String get info => 'Info';

  @override
  String get success => 'Succes';

  @override
  String get saveChanges => 'Salvați modificările';

  @override
  String get saveChangesConfirmation => 'Doriți să salvați modificările?';

  @override
  String get confirm => 'Confirmați';

  @override
  String get unableToOpenReference => 'Nu se poate deschide această referință';

  @override
  String searchPageNoResults(String query) {
    return 'Nu s-au găsit rezultate pentru „$query”';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Nu s-au găsit rezultate pentru „$query” în această categorie';
  }

  @override
  String get newsTopics => 'Subiecte de știri';

  @override
  String get errorNoInternet =>
      'Vă rugăm să vă verificați conexiunea și să încercați din nou.';

  @override
  String get errorNoInternetTitle => 'Fără conexiune la internet.';

  @override
  String get errorTimeout =>
      'Solicitarea a expirat. Vă rugăm să încercați din nou mai târziu.';

  @override
  String get errorTimeoutTitle => 'Solicitarea a expirat.';

  @override
  String get errorServer =>
      'A apărut o eroare de server. Vă rugăm să încercați din nou.';

  @override
  String get errorServerTitle => 'Eroare de server.';

  @override
  String get errorUnauthorized =>
      'Nu esti autorizat. Conectați-vă și încercați din nou.';

  @override
  String get errorUnauthorizedTitle => 'Neautorizat.';

  @override
  String get errorForbidden =>
      'Nu aveți permisiunea de a efectua această acțiune.';

  @override
  String get errorForbiddenTitle => 'Acces refuzat.';

  @override
  String get errorNotFound => 'Nu am putut găsi ceea ce căutați.';

  @override
  String get errorNotFoundTitle => 'Nu a fost găsit.';

  @override
  String get updateArticle => 'Mai multe detalii au fost actualizate';

  @override
  String get errorValidation =>
      'Unele informații par nevalide. Vă rugăm să examinați și să încercați din nou.';

  @override
  String get agreeMail =>
      'Sunt de acord să primesc actualizări și buletine informative prin e-mail.';

  @override
  String get sendUsEmail => 'Trimite-ne un e-mail';

  @override
  String get discardChangesTitle => 'Renunțați la modificări?';

  @override
  String get discardChangesMessage =>
      'Aveți modificări nesalvate. Dacă continuați, se vor pierde.';

  @override
  String get discardButton => 'Aruncă';

  @override
  String get stayButton => 'Stai';

  @override
  String get changeCountryConfirm => 'Schimbați destinația știrilor';

  @override
  String get otherWaysToContact => 'Alte moduri de contact';

  @override
  String get agreePrivacy => 'Am citit și sunt de acord cu ';

  @override
  String get contactUsSubtitle =>
      'Nu ezitați să ne contactați folosind formularul de mai jos.';

  @override
  String get fullName => 'Nume complet';

  @override
  String get mail => 'Adresă de e-mail';

  @override
  String get message => 'Mesaj';

  @override
  String get errorValidationTitle => 'Intrare nevalidă.';

  @override
  String get similarSources => 'Surse similare';

  @override
  String get send => 'Trimite';

  @override
  String get errorGeneric =>
      'Ceva a mers prost. Vă rugăm să încercați din nou.';

  @override
  String get errorGenericTitle => 'Ceva a mers prost.';

  @override
  String get emptyResults_title => 'Niciun rezultat potrivit';

  @override
  String get emptyResults_noResults => 'Nu s-au găsit rezultate.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Încercați să vă schimbați cuvintele cheie sau alegeți un alt subiect.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'Încercați să vă schimbați cuvintele cheie.';

  @override
  String get emptyResults_inThisTopic => 'in acest subiect';

  @override
  String get errorBadRequestTitle => 'Cerere proastă.';

  @override
  String get errorBadRequest =>
      'Solicitarea a fost nevalidă. Vă rugăm să încercați din nou.';

  @override
  String get errorNotModifiedTitle => 'Nemodificat.';

  @override
  String get errorNotModified =>
      'Nu s-a schimbat nimic de la ultima ta cerere.';

  @override
  String get errorNetworkTitle => 'Eroare de rețea.';

  @override
  String get errorNetwork =>
      'Nu am putut ajunge la rețea. Verificați conexiunea și încercați din nou.';

  @override
  String get errorDataIsEmptyTitle => 'Nu există date disponibile.';

  @override
  String get errorDataIsEmpty => 'Nu am putut găsi date de afișat.';

  @override
  String get errorConflictTitle => 'Conflict.';

  @override
  String get errorConflict =>
      'Solicitarea a intrat în conflict cu datele existente. Vă rugăm să încercați din nou.';

  @override
  String get errorServerValidationTitle => 'Eroare de validare.';

  @override
  String get errorServerValidation =>
      'Serverul a respins unele date. Vă rugăm să examinați și să încercați din nou.';

  @override
  String get errorWriteFileTitle => 'Scrierea a eșuat.';

  @override
  String get errorWriteFile =>
      'Nu am putut salva fișierul. Vă rugăm să încercați din nou.';

  @override
  String get errorReadFileTitle => 'Citirea eșuată.';

  @override
  String get errorReadFile =>
      'Nu am putut citi fișierul. Vă rugăm să încercați din nou.';

  @override
  String get errorFileNotFoundTitle => 'Fișierul nu a fost găsit.';

  @override
  String get errorFileNotFound =>
      'Nu am putut găsi fișierul pe care îl căutați.';

  @override
  String get errorInsufficientStorageTitle =>
      'Nu este suficient spațiu de stocare.';

  @override
  String get errorInsufficientStorage =>
      'Eliberați spațiu și încercați din nou.';

  @override
  String get errorDatabaseReadTitle => 'Eroare de citire a bazei de date.';

  @override
  String get errorDatabaseRead => 'Nu am putut citi din baza de date.';

  @override
  String get errorDatabaseWriteTitle => 'Eroare la scrierea bazei de date.';

  @override
  String get errorDatabaseWrite => 'Nu am putut salva în baza de date.';

  @override
  String get errorDatabaseConnectionTitle =>
      'Eroare de conectare la baza de date.';

  @override
  String get errorDatabaseConnection =>
      'Nu ne-am putut conecta la baza de date.';

  @override
  String get errorAuthTitle => 'Eroare de autentificare.';

  @override
  String get errorAuth => 'Conectați-vă și încercați din nou.';

  @override
  String get errorInvalidCredentialsTitle => 'Acreditări nevalide.';

  @override
  String get errorInvalidCredentials =>
      'Numele de utilizator sau parola sunt incorecte.';

  @override
  String get errorSecureStorageReadTitle =>
      'Eroare de citire a stocării securizate.';

  @override
  String get errorSecureStorageRead =>
      'Nu am putut citi din stocarea securizată.';

  @override
  String get errorSecureStorageWriteTitle =>
      'Eroare de scriere în stocare securizată.';

  @override
  String get errorSecureStorageWrite =>
      'Nu am putut scrie în stocarea securizată.';

  @override
  String get errorSecureStorageClearTitle =>
      'Eroare de eliminare a stocării securizate.';

  @override
  String get errorSecureStorageClear =>
      'Nu am putut șterge spațiul de stocare securizat.';

  @override
  String get errorTokenExpiredTitle => 'Sesiunea a expirat.';

  @override
  String get errorTokenExpired => 'Vă rugăm să vă conectați din nou.';

  @override
  String get errorUserNotFoundTitle => 'Utilizatorul nu a fost găsit.';

  @override
  String get errorUserNotFound => 'Nu am putut găsi acel utilizator.';

  @override
  String get errorPermissionDeniedTitle => 'Permisiune refuzată.';

  @override
  String get errorPermissionDenied =>
      'Nu aveți permisiunea de a efectua această acțiune.';

  @override
  String get errorEmptyResultTitle => 'Niciun rezultat.';

  @override
  String get errorEmptyResult => 'Nu am putut găsi niciun rezultat.';

  @override
  String get errorInvalidInputTitle => 'Intrare nevalidă.';

  @override
  String get errorInvalidInput =>
      'Vă rugăm să verificați datele introduse și să încercați din nou.';

  @override
  String get errorEmptyTopicsTitle => 'Nu au fost selectate subiecte.';

  @override
  String get errorEmptyTopics => 'Vă rugăm să selectați cel puțin un subiect.';

  @override
  String get errorParsingTitle => 'Eroare de analiză.';

  @override
  String get errorParsing => 'Nu am putut procesa datele.';

  @override
  String get errorUnknownTitle => 'Eroare necunoscută.';

  @override
  String get errorUnknown => 'A apărut o eroare neașteptată.';
}
