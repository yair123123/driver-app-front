// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get back => 'zpět';

  @override
  String get saveChangesTitle => 'Uložit změny';

  @override
  String get channels_section_title => 'Novinka v aplikaci';

  @override
  String get go_to_groups_page => 'Přejděte na stránku skupin';

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
      'Nová oblast pro kanály WhatsApp a Telegram s videi, obrázky a aktualizacemi – veškerý nejzajímavější obsah na jednom místě.';

  @override
  String get newMessages => 'Nové zprávy';

  @override
  String get addArea => 'Přidat oblast';

  @override
  String get removeArea => 'Odebrat oblast';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Opravdu chcete odstranit $area z vybraných oblastí?';
  }

  @override
  String get channels => 'Kanály';

  @override
  String get contactUsSuccessTitle => 'Úspěšně odesláno ✅';

  @override
  String get contactUsSuccessMessage =>
      'děkuji! Vaši zprávu jsme obdrželi a co nejdříve se vám ozveme zpět.';

  @override
  String get selectCountry => 'Vyberte zemi';

  @override
  String get areaManagmentTitle => 'Oblast spotřeby zpráv';

  @override
  String get areaManagmentSubtitle => 'Moje země';

  @override
  String get sharedFromApp => 'Sdíleno od';

  @override
  String get textCopied => 'Text zkopírován';

  @override
  String get queryIsEmpty => 'Dotaz je prázdný';

  @override
  String get queryIsEmptyTitle => 'Vyhledávání je prázdné.';

  @override
  String get areaWereRemoved => 'Oblast byla úspěšně odstraněna';

  @override
  String get areaWereAdded => 'Oblast byla úspěšně přidána';

  @override
  String get saveChangesMessage => 'Chcete uložit provedené změny?';

  @override
  String get busyLandingTitle => 'Už skoro přistáváme…';

  @override
  String get busyLandingSubtitle => 'Vaše novinky připravujeme';

  @override
  String get changeCountryTitle => 'Do které země bychom měli přejít?';

  @override
  String get changeCountrySubtitle =>
      'Když vyberete zemi, veškerý obsah v aplikaci se aktualizuje podle vašeho výběru.';

  @override
  String get dailySummary => 'Denní shrnutí';

  @override
  String get lastUpdated => 'Naposledy aktualizováno';

  @override
  String get saveChangesSubtitle => 'Chcete uložit provedené změny?';

  @override
  String get readMore => 'Přečtěte si více';

  @override
  String get searchPageNoResultsPrefix =>
      'Pro dotaz nebyly nalezeny žádné výsledky ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Pro dotaz nebyly nalezeny žádné výsledky \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' v této kategorii';

  @override
  String get toPowerOn => 'zapnout';

  @override
  String get notificationsOffTitle => 'Upozornění vypnuta';

  @override
  String get notificationsOffSubtitle =>
      'Zdá se, že přístup k oznámením ještě nebyl povolen.';

  @override
  String get newArticles => 'Nové články';

  @override
  String get home => 'domů';

  @override
  String get changesApplyOnNextLaunch =>
      'Změny se projeví při příštím spuštění aplikace.';

  @override
  String get enable => 'Povolit';

  @override
  String get stayUpdatedWithLatestNews =>
      'Zůstaňte informováni o nejnovějších zprávách';

  @override
  String get enableNotifications => 'Povolit oznámení';

  @override
  String get error_details => 'Podrobnosti o chybě';

  @override
  String get error_title => 'Jejda, něco je špatně';

  @override
  String get freeSearch => 'Vyhledávání zdarma';

  @override
  String get aiPageSubtitle =>
      'Tato funkce je stále ve vývoji \n stojí za to se brzy vrátit.';

  @override
  String get topicsSelectionTitle => 'Výběr témat zpráv';

  @override
  String get groups => 'Skupiny';

  @override
  String get aiPageTitle =>
      'Již brzy: budete moci chatovat s naší AI o novinkách!';

  @override
  String get topicsSelectionSubtitle =>
      'Vyberte témata nebo podtémata, která chcete ve svém zdroji vidět. Zde je můžete vždy změnit.';

  @override
  String get failedToLoadTopics => 'Témata se nepodařilo načíst';

  @override
  String get settingsNote => 'Nastavení můžete kdykoli upravit';

  @override
  String get lang => 'Jazyk';

  @override
  String get failed_to_load_data =>
      'Nepodařilo se nám načíst data. Zkontrolujte prosím připojení k internetu a zkuste to znovu.';

  @override
  String get changeLang => 'Změnit jazyk';

  @override
  String get notNow => 'Teď ne';

  @override
  String get notificationsPermissionRationale =>
      'Povolení oznámení vám umožní zůstat v obraze o důležitých zprávách, naléhavých aktualizacích a přizpůsobeném obsahu – takže nikdy nezmeškáte nic, na čem vám záleží.';

  @override
  String get skipToSuggestedContent =>
      'Přeskočte na obsah, který jsme pro vás vybrali';

  @override
  String get lets_go => 'Jdeme';

  @override
  String get keepGoing => 'Pokračuj!';

  @override
  String get skip => 'Přeskočit';

  @override
  String get save => 'Uložit';

  @override
  String get next => 'Další';

  @override
  String get pleaseSelectLanguage => 'prosím vyberte jazyk';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Vyberte alespoň jedno téma';

  @override
  String get notificationTitle => 'Chcete zůstat aktuální?';

  @override
  String get search => 'Hledat';

  @override
  String get searchPageEmptySubtitle => 'Co byste chtěli hledat?';

  @override
  String get searchPageEmptyTitle =>
      'Zadejte klíčové slovo nebo téma, které chcete vyhledat';

  @override
  String get notificationSubTitle =>
      'Můžete zapnout vyskakovací oznámení pro jakékoli téma, které vás zajímá.';

  @override
  String get whatIsInteresting => 'Co tě zajímá';

  @override
  String get subTextWhatIsInteresting =>
      'Chcete-li posílat pouze to, co je skutečně relevantní, nejprve označte, co vás zajímá.';

  @override
  String get getStarted => 'Začněte';

  @override
  String get try_again => 'Zkuste to znovu';

  @override
  String get allow => 'Povolit';

  @override
  String get noPermissions => 'Žádná oprávnění';

  @override
  String get solution_suggestions => 'Návrhy řešení';

  @override
  String get allowNotifications => 'Povolit oznámení';

  @override
  String get notifications => 'Oznámení';

  @override
  String get notificationsEnabled => 'Upozornění povolena';

  @override
  String get notificationsDenied => 'Oznámení zamítnuto';

  @override
  String get pleaseWait => 'Čekejte prosím';

  @override
  String get all => 'všechny';

  @override
  String get cancel => 'Zrušit';

  @override
  String get openSettings => 'Otevřete Nastavení';

  @override
  String get subTextNotifications =>
      'Můžete povolit vyskakovací oznámení pro každé téma, které vás zajímá.';

  @override
  String get troubleshooting_tips => 'Tipy pro odstraňování problémů';

  @override
  String get welcome =>
      'Vítejte ve zpravodajské aplikaci, přizpůsobené právě pro vás!';

  @override
  String get continueReading => 'Pokračujte ve čtení';

  @override
  String get share => 'Sdílejte';

  @override
  String get area => 'Oblast';

  @override
  String get chooseYourAreaHint =>
      'Vyberte svou oblast a získejte lokalizované novinky';

  @override
  String get chooseYourAreaHintUnused =>
      'Vyberte požadovanou oblast zpráv.\nV aplikaci si můžete vybrat i další země.';

  @override
  String get chooseYourLangHint =>
      'Vyberte si svůj jazyk, později jej můžete kdykoli změnit.';

  @override
  String get topics => 'Témata';

  @override
  String get chooseTopicsHint =>
      'Vyberte si témata, která vás zajímají, vždy je můžete změnit v nastavení.';

  @override
  String get categories => 'Kategorie';

  @override
  String get manageNotifications => 'Spravujte oznámení';

  @override
  String get languageAndRegion => 'Jazyk a region';

  @override
  String get about => 'O';

  @override
  String get privacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get contactUs => 'Kontaktujte nás';

  @override
  String get networkStatusPartialTitle => 'Problém se serverem';

  @override
  String get networkStatusOfflineTitle => 'Žádné připojení k internetu';

  @override
  String get networkStatusPartialMessage =>
      'Můžeme se připojit k internetu, ale ne k serveru.\\nZkuste to znovu za chvíli.';

  @override
  String get networkStatusOfflineMessage =>
      'Žádné připojení k internetu. Zobrazujeme starší články; připojte se k internetu a podívejte se na nejnovější příběhy.';

  @override
  String get networkStatusInternetLabel => 'Internetové připojení';

  @override
  String get networkStatusServerLabel => 'Připojení k serveru';

  @override
  String get networkStatusDismiss => 'Rozumím';

  @override
  String get networkStatusConnected => 'Připojeno';

  @override
  String get networkStatusDisconnected => 'Nepřipojeno';

  @override
  String get offlineMode => 'Offline režim';

  @override
  String get changesSavedSuccessfully => 'Změny byly úspěšně uloženy';

  @override
  String get unableToSaveChanges => 'Změny nelze uložit';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Vyskakovací oznámení';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Snadno přizpůsobte svá upozornění. Zapněte nebo vypněte oznámení push pro jakékoli téma, které vás zajímá.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Aktualizace na cestě!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Brzy si budete moci vybrat, ze kterých oblastí světa chcete dostávat novinky a aktualizace.';

  @override
  String get info => 'Info';

  @override
  String get success => 'Úspěch';

  @override
  String get saveChanges => 'Uložte změny';

  @override
  String get saveChangesConfirmation => 'Chcete uložit změny?';

  @override
  String get confirm => 'Potvrďte';

  @override
  String get unableToOpenReference => 'Tuto referenci nelze otevřít';

  @override
  String searchPageNoResults(String query) {
    return 'Pro \"$query\" nebyly nalezeny žádné výsledky';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Pro \"$query\" v této kategorii nebyly nalezeny žádné výsledky';
  }

  @override
  String get newsTopics => 'Témata zpráv';

  @override
  String get errorNoInternet => 'Zkontrolujte připojení a zkuste to znovu.';

  @override
  String get errorNoInternetTitle => 'Žádné připojení k internetu.';

  @override
  String get errorTimeout =>
      'Časový limit požadavku vypršel. Zkuste to znovu později.';

  @override
  String get errorTimeoutTitle => 'Časový limit požadavku vypršel.';

  @override
  String get errorServer => 'Došlo k chybě serveru. Zkuste to prosím znovu.';

  @override
  String get errorServerTitle => 'Chyba serveru.';

  @override
  String get errorUnauthorized =>
      'Nemáte oprávnění. Přihlaste se prosím a zkuste to znovu.';

  @override
  String get errorUnauthorizedTitle => 'Neoprávněný.';

  @override
  String get errorForbidden => 'K provedení této akce nemáte oprávnění.';

  @override
  String get errorForbiddenTitle => 'Přístup odepřen.';

  @override
  String get errorNotFound => 'Nenašli jsme, co jste hledali.';

  @override
  String get errorNotFoundTitle => 'Nenalezeno.';

  @override
  String get updateArticle => 'Další podrobnosti byly aktualizovány';

  @override
  String get errorValidation =>
      'Některé informace vypadají neplatné. Zkontrolujte prosím a zkuste to znovu.';

  @override
  String get agreeMail => 'Souhlasím se zasíláním novinek a novinek e-mailem.';

  @override
  String get sendUsEmail => 'Pošlete nám e-mail';

  @override
  String get discardChangesTitle => 'Zahodit změny?';

  @override
  String get discardChangesMessage =>
      'Máte neuložené změny. Pokud budete pokračovat, budou ztraceny.';

  @override
  String get discardButton => 'Zahodit';

  @override
  String get stayButton => 'Zůstaň';

  @override
  String get changeCountryConfirm => 'Přepnout cíl zpráv';

  @override
  String get otherWaysToContact => 'Jiné způsoby kontaktu';

  @override
  String get agreePrivacy => 'Přečetl jsem a souhlasím s ';

  @override
  String get contactUsSubtitle =>
      'Neváhejte nás kontaktovat pomocí formuláře níže.';

  @override
  String get fullName => 'Celé jméno';

  @override
  String get mail => 'Emailová adresa';

  @override
  String get message => 'Zpráva';

  @override
  String get errorValidationTitle => 'Neplatný vstup.';

  @override
  String get similarSources => 'Podobné zdroje';

  @override
  String get send => 'Odeslat';

  @override
  String get errorGeneric => 'Něco se pokazilo. Zkuste to prosím znovu.';

  @override
  String get errorGenericTitle => 'Něco se pokazilo.';

  @override
  String get emptyResults_title => 'Žádné odpovídající výsledky';

  @override
  String get emptyResults_noResults => 'Nebyly nalezeny žádné výsledky.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Zkuste změnit klíčová slova nebo zvolte jiné téma.';

  @override
  String get emptyResults_bottomWithoutTopic => 'Zkuste změnit klíčová slova.';

  @override
  String get emptyResults_inThisTopic => 'v tomto tématu';

  @override
  String get errorBadRequestTitle => 'Špatný požadavek.';

  @override
  String get errorBadRequest => 'Žádost byla neplatná. Zkuste to prosím znovu.';

  @override
  String get errorNotModifiedTitle => 'Neupraveno.';

  @override
  String get errorNotModified => 'Od vaší poslední žádosti se nic nezměnilo.';

  @override
  String get errorNetworkTitle => 'Chyba sítě.';

  @override
  String get errorNetwork =>
      'Nepodařilo se nám připojit k síti. Zkontrolujte připojení a zkuste to znovu.';

  @override
  String get errorDataIsEmptyTitle => 'Nejsou k dispozici žádné údaje.';

  @override
  String get errorDataIsEmpty => 'Nenašli jsme žádná data k zobrazení.';

  @override
  String get errorConflictTitle => 'Konflikt.';

  @override
  String get errorConflict =>
      'Požadavek byl v konfliktu s existujícími daty. Zkuste to prosím znovu.';

  @override
  String get errorServerValidationTitle => 'Chyba ověření.';

  @override
  String get errorServerValidation =>
      'Server odmítl některá data. Zkontrolujte prosím a zkuste to znovu.';

  @override
  String get errorWriteFileTitle => 'Zápis se nezdařil.';

  @override
  String get errorWriteFile =>
      'Soubor se nepodařilo uložit. Zkuste to prosím znovu.';

  @override
  String get errorReadFileTitle => 'Čtení se nezdařilo.';

  @override
  String get errorReadFile =>
      'Soubor se nám nepodařilo přečíst. Zkuste to prosím znovu.';

  @override
  String get errorFileNotFoundTitle => 'Soubor nenalezen.';

  @override
  String get errorFileNotFound => 'Nenašli jsme soubor, který hledáte.';

  @override
  String get errorInsufficientStorageTitle => 'Nedostatek úložiště.';

  @override
  String get errorInsufficientStorage => 'Uvolněte místo a zkuste to znovu.';

  @override
  String get errorDatabaseReadTitle => 'Chyba čtení databáze.';

  @override
  String get errorDatabaseRead => 'Nemohli jsme číst z databáze.';

  @override
  String get errorDatabaseWriteTitle => 'Chyba zápisu do databáze.';

  @override
  String get errorDatabaseWrite => 'Nepodařilo se nám uložit do databáze.';

  @override
  String get errorDatabaseConnectionTitle => 'Chyba připojení k databázi.';

  @override
  String get errorDatabaseConnection =>
      'Nepodařilo se nám připojit k databázi.';

  @override
  String get errorAuthTitle => 'Chyba ověření.';

  @override
  String get errorAuth => 'Přihlaste se prosím a zkuste to znovu.';

  @override
  String get errorInvalidCredentialsTitle => 'Neplatné přihlašovací údaje.';

  @override
  String get errorInvalidCredentials =>
      'Uživatelské jméno nebo heslo je nesprávné.';

  @override
  String get errorSecureStorageReadTitle =>
      'Chyba čtení zabezpečeného úložiště.';

  @override
  String get errorSecureStorageRead =>
      'Nemohli jsme číst ze zabezpečeného úložiště.';

  @override
  String get errorSecureStorageWriteTitle =>
      'Chyba zápisu do zabezpečeného úložiště.';

  @override
  String get errorSecureStorageWrite =>
      'Nemohli jsme zapisovat do zabezpečeného úložiště.';

  @override
  String get errorSecureStorageClearTitle =>
      'Chyba vymazání zabezpečeného úložiště.';

  @override
  String get errorSecureStorageClear =>
      'Nepodařilo se nám vymazat zabezpečené úložiště.';

  @override
  String get errorTokenExpiredTitle => 'Platnost relace vypršela.';

  @override
  String get errorTokenExpired => 'Přihlaste se prosím znovu.';

  @override
  String get errorUserNotFoundTitle => 'Uživatel nenalezen.';

  @override
  String get errorUserNotFound => 'Tohoto uživatele jsme nenašli.';

  @override
  String get errorPermissionDeniedTitle => 'Povolení odepřeno.';

  @override
  String get errorPermissionDenied => 'K provedení této akce nemáte oprávnění.';

  @override
  String get errorEmptyResultTitle => 'Žádné výsledky.';

  @override
  String get errorEmptyResult => 'Nenašli jsme žádné výsledky.';

  @override
  String get errorInvalidInputTitle => 'Neplatný vstup.';

  @override
  String get errorInvalidInput =>
      'Zkontrolujte prosím svůj vstup a zkuste to znovu.';

  @override
  String get errorEmptyTopicsTitle => 'Nebyla vybrána žádná témata.';

  @override
  String get errorEmptyTopics => 'Vyberte prosím alespoň jedno téma.';

  @override
  String get errorParsingTitle => 'Chyba analýzy.';

  @override
  String get errorParsing => 'Údaje se nám nepodařilo zpracovat.';

  @override
  String get errorUnknownTitle => 'Neznámá chyba.';

  @override
  String get errorUnknown => 'Došlo k neočekávané chybě.';
}
