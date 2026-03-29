// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get back => 'vissza';

  @override
  String get saveChangesTitle => 'Módosítások mentése';

  @override
  String get channels_section_title => 'Új az alkalmazásban';

  @override
  String get go_to_groups_page => 'Menjen a csoportok oldalára';

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
      'A WhatsApp és a Telegram csatornák új területe videókkal, képekkel és frissítésekkel – a legérdekesebb tartalom egy helyen.';

  @override
  String get newMessages => 'Új üzenetek';

  @override
  String get addArea => 'Terület hozzáadása';

  @override
  String get removeArea => 'Terület eltávolítása';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Biztosan eltávolítja a $area-t a kiválasztott területekről?';
  }

  @override
  String get channels => 'Csatornák';

  @override
  String get contactUsSuccessTitle => 'Sikeresen elküldve ✅';

  @override
  String get contactUsSuccessMessage =>
      'Köszönöm! Megkaptuk üzenetét, és a lehető leghamarabb felvesszük Önnel a kapcsolatot.';

  @override
  String get selectCountry => 'Válassza az Ország lehetőséget';

  @override
  String get areaManagmentTitle => 'Hírek Fogyasztási Terület';

  @override
  String get areaManagmentSubtitle => 'Országaim';

  @override
  String get sharedFromApp => 'Megosztva innen';

  @override
  String get textCopied => 'Szöveg másolva';

  @override
  String get queryIsEmpty => 'A lekérdezés üres';

  @override
  String get queryIsEmptyTitle => 'A keresés üres.';

  @override
  String get areaWereRemoved => 'A terület sikeresen eltávolításra került';

  @override
  String get areaWereAdded => 'A terület sikeresen hozzáadva';

  @override
  String get saveChangesMessage => 'Menteni szeretné a változtatásokat?';

  @override
  String get busyLandingTitle => 'Már majdnem leszállunk…';

  @override
  String get busyLandingSubtitle => 'Készítjük híreit';

  @override
  String get changeCountryTitle => 'Melyik országba váltsunk?';

  @override
  String get changeCountrySubtitle =>
      'Ha országot választ, az alkalmazásban lévő összes tartalom az Ön választásának megfelelően frissül.';

  @override
  String get dailySummary => 'Napi összefoglaló';

  @override
  String get lastUpdated => 'Utoljára frissítve';

  @override
  String get saveChangesSubtitle => 'Menteni szeretné a változtatásokat?';

  @override
  String get readMore => 'Olvass tovább';

  @override
  String get searchPageNoResultsPrefix => 'Nincs találat a következőre: ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Nincs találat a következőre: \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix =>
      ' ebben a kategóriában';

  @override
  String get toPowerOn => 'bekapcsolásához';

  @override
  String get notificationsOffTitle => 'Értesítések kikapcsolva';

  @override
  String get notificationsOffSubtitle =>
      'Úgy tűnik, hogy az értesítésekhez való hozzáférés még nincs engedélyezve.';

  @override
  String get newArticles => 'Új cikkek';

  @override
  String get home => 'haza';

  @override
  String get changesApplyOnNextLaunch =>
      'A módosítások az alkalmazás következő indításakor lépnek életbe.';

  @override
  String get enable => 'Engedélyezés';

  @override
  String get stayUpdatedWithLatestNews =>
      'Legyen naprakész a legfrissebb hírekkel';

  @override
  String get enableNotifications => 'Értesítések engedélyezése';

  @override
  String get error_details => 'Hiba részletei';

  @override
  String get error_title => 'Hoppá, valami baj van';

  @override
  String get freeSearch => 'Ingyenes keresés';

  @override
  String get aiPageSubtitle =>
      'Ez a funkció még fejlesztés alatt áll \n érdemes hamarosan visszanézni.';

  @override
  String get topicsSelectionTitle => 'Hírek témaválasztás';

  @override
  String get groups => 'Csoportok';

  @override
  String get aiPageTitle =>
      'Hamarosan: cseveghetsz mesterséges intelligenciánkkal a hírekről!';

  @override
  String get topicsSelectionSubtitle =>
      'Válassza ki azokat a témákat vagy altémákat, amelyeket látni szeretne a hírcsatornájában. Itt bármikor megváltoztathatja őket.';

  @override
  String get failedToLoadTopics => 'Nem sikerült betölteni a témákat';

  @override
  String get settingsNote => 'A beállításokat bármikor módosíthatja';

  @override
  String get lang => 'Nyelv';

  @override
  String get failed_to_load_data =>
      'Nem tudtuk betölteni az adatokat. Kérjük, ellenőrizze internetkapcsolatát, és próbálja újra.';

  @override
  String get changeLang => 'Nyelv módosítása';

  @override
  String get notNow => 'Most nem';

  @override
  String get notificationsPermissionRationale =>
      'Az értesítések engedélyezésével naprakész maradhat a fontos hírekről, a sürgős frissítésekről és a személyre szabott tartalmakról – így soha nem marad le semmiről, ami számít Önnek.';

  @override
  String get skipToSuggestedContent =>
      'Ugrás az általunk kiválasztott tartalomhoz';

  @override
  String get lets_go => 'gyerünk';

  @override
  String get keepGoing => 'Folytasd!';

  @override
  String get skip => 'Kihagyás';

  @override
  String get save => 'Mentés';

  @override
  String get next => 'Következő';

  @override
  String get pleaseSelectLanguage => 'Kérjük, válasszon nyelvet';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Válasszon ki legalább egy témát';

  @override
  String get notificationTitle => 'Szeretnél naprakész maradni?';

  @override
  String get search => 'Keresés';

  @override
  String get searchPageEmptySubtitle => 'Mit szeretne keresni?';

  @override
  String get searchPageEmptyTitle =>
      'Írjon be egy kulcsszót vagy témát a kereséshez';

  @override
  String get notificationSubTitle =>
      'Bármelyik témakörben bekapcsolhatja az előugró értesítéseket.';

  @override
  String get whatIsInteresting => 'Mi érdekli';

  @override
  String get subTextWhatIsInteresting =>
      'Ahhoz, hogy csak azt küldje el, ami valóban releváns, először jelölje meg, mi érdekli Önt.';

  @override
  String get getStarted => 'Kezdje el';

  @override
  String get try_again => 'Próbáld újra';

  @override
  String get allow => 'Engedélyezze';

  @override
  String get noPermissions => 'Nincs engedély';

  @override
  String get solution_suggestions => 'Megoldási javaslatok';

  @override
  String get allowNotifications => 'Értesítések engedélyezése';

  @override
  String get notifications => 'Értesítések';

  @override
  String get notificationsEnabled => 'Értesítések engedélyezve';

  @override
  String get notificationsDenied => 'Értesítések elutasítva';

  @override
  String get pleaseWait => 'Kérem, várjon';

  @override
  String get all => 'minden';

  @override
  String get cancel => 'Mégse';

  @override
  String get openSettings => 'Nyissa meg a Beállítások lehetőséget';

  @override
  String get subTextNotifications =>
      'Minden Önt érdeklő témához engedélyezheti az előugró értesítéseket.';

  @override
  String get troubleshooting_tips => 'Hibaelhárítási tippek';

  @override
  String get welcome =>
      'Üdvözöljük a híralkalmazásban, amely csak az Ön számára személyre szabott!';

  @override
  String get continueReading => 'Folytassa az olvasást';

  @override
  String get share => 'Megosztás';

  @override
  String get area => 'Terület';

  @override
  String get chooseYourAreaHint =>
      'Válassza ki a területet, hogy honosított híreket kapjon';

  @override
  String get chooseYourAreaHintUnused =>
      'Válassza ki a kívánt hírrégiót.\nAz alkalmazáson belül további országokat is kiválaszthat.';

  @override
  String get chooseYourLangHint =>
      'Válassza ki a nyelvet, később bármikor módosíthatja.';

  @override
  String get topics => 'Témák';

  @override
  String get chooseTopicsHint =>
      'Válassza ki az Önt érdeklő témákat, ezeket bármikor módosíthatja a beállításokban.';

  @override
  String get categories => 'Kategóriák';

  @override
  String get manageNotifications => 'Értesítések kezelése';

  @override
  String get languageAndRegion => 'Nyelv és régió';

  @override
  String get about => 'Körülbelül';

  @override
  String get privacyPolicy => 'Adatvédelmi szabályzat';

  @override
  String get contactUs => 'Vegye fel velünk a kapcsolatot';

  @override
  String get networkStatusPartialTitle => 'Szerver probléma';

  @override
  String get networkStatusOfflineTitle => 'Nincs internet kapcsolat';

  @override
  String get networkStatusPartialMessage =>
      'El tudjuk érni az internetet, de a szervert nem.\\nPróbálkozzon újra egy pillanat múlva.';

  @override
  String get networkStatusOfflineMessage =>
      'Nincs internet kapcsolat. Régebbi cikkeket mutatunk; csatlakozzon az internethez a legújabb történetek megtekintéséhez.';

  @override
  String get networkStatusInternetLabel => 'Internet kapcsolat';

  @override
  String get networkStatusServerLabel => 'Szerver kapcsolat';

  @override
  String get networkStatusDismiss => 'Értem';

  @override
  String get networkStatusConnected => 'Csatlakozva';

  @override
  String get networkStatusDisconnected => 'Nincs csatlakoztatva';

  @override
  String get offlineMode => 'Offline mód';

  @override
  String get changesSavedSuccessfully => 'Changes saved successfully';

  @override
  String get unableToSaveChanges => 'Nem sikerült menteni a változtatásokat';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Előugró értesítések';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Customize your alerts easily. Kapcsolja be vagy ki a push értesítéseket az Önt érdeklő témákhoz.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Frissítés útközben!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Hamarosan kiválaszthatja, hogy a világ mely régióiról szeretne híreket és frissítéseket kapni.';

  @override
  String get info => 'Info';

  @override
  String get success => 'Siker';

  @override
  String get saveChanges => 'Módosítások mentése';

  @override
  String get saveChangesConfirmation => 'Szeretné menteni a változtatásokat?';

  @override
  String get confirm => 'Erősítse meg';

  @override
  String get unableToOpenReference => 'Ezt a hivatkozást nem lehet megnyitni';

  @override
  String searchPageNoResults(String query) {
    return 'Nincs találat a következőre: \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Nincs találat a \"$query\" kifejezésre ebben a kategóriában';
  }

  @override
  String get newsTopics => 'Hírek témák';

  @override
  String get errorNoInternet =>
      'Kérjük, ellenőrizze a kapcsolatot, és próbálja újra.';

  @override
  String get errorNoInternetTitle => 'Nincs internet kapcsolat.';

  @override
  String get errorTimeout => 'A kérés lejárt. Kérjük, próbálja újra később.';

  @override
  String get errorTimeoutTitle => 'A kérelem lejárt.';

  @override
  String get errorServer => 'Szerverhiba történt. Kérjük, próbálja újra.';

  @override
  String get errorServerTitle => 'Szerver hiba.';

  @override
  String get errorUnauthorized =>
      'Ön nem jogosult. Kérjük, jelentkezzen be, és próbálja újra.';

  @override
  String get errorUnauthorizedTitle => 'Jogosulatlan.';

  @override
  String get errorForbidden =>
      'Nincs engedélye ennek a műveletnek a végrehajtására.';

  @override
  String get errorForbiddenTitle => 'Hozzáférés megtagadva.';

  @override
  String get errorNotFound => 'Nem találtuk, amit keresett.';

  @override
  String get errorNotFoundTitle => 'Nem található.';

  @override
  String get updateArticle => 'További részletek frissültek';

  @override
  String get errorValidation =>
      'Néhány információ érvénytelennek tűnik. Kérjük, tekintse át, és próbálja újra.';

  @override
  String get agreeMail =>
      'Hozzájárulok ahhoz, hogy e-mailben kapok frissítéseket és hírleveleket.';

  @override
  String get sendUsEmail => 'Küldjön nekünk egy e-mailt';

  @override
  String get discardChangesTitle => 'Elveti a módosításokat?';

  @override
  String get discardChangesMessage =>
      'Nem mentett módosításai vannak. Ha folytatja, elvesznek.';

  @override
  String get discardButton => 'Eldobni';

  @override
  String get stayButton => 'Maradj';

  @override
  String get changeCountryConfirm => 'Hírek célhelyének váltása';

  @override
  String get otherWaysToContact => 'A kapcsolatfelvétel egyéb módjai';

  @override
  String get agreePrivacy => 'Elolvastam és elfogadom a ';

  @override
  String get contactUsSubtitle =>
      'Forduljon hozzánk bizalommal az alábbi űrlap segítségével.';

  @override
  String get fullName => 'Teljes név';

  @override
  String get mail => 'E-mail cím';

  @override
  String get message => 'Üzenet';

  @override
  String get errorValidationTitle => 'Érvénytelen bevitel.';

  @override
  String get similarSources => 'Hasonló források';

  @override
  String get send => 'Küldés';

  @override
  String get errorGeneric => 'Valami elromlott. Kérjük, próbálja újra.';

  @override
  String get errorGenericTitle => 'Valami elromlott.';

  @override
  String get emptyResults_title => 'Nincsenek megfelelő eredmények';

  @override
  String get emptyResults_noResults => 'Nincs találat.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Próbálja megváltoztatni a kulcsszavakat, vagy válasszon másik témát.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'Próbálja megváltoztatni a kulcsszavakat.';

  @override
  String get emptyResults_inThisTopic => 'ebben a témában';

  @override
  String get errorBadRequestTitle => 'Rossz kérés.';

  @override
  String get errorBadRequest =>
      'A kérelem érvénytelen volt. Kérjük, próbálja újra.';

  @override
  String get errorNotModifiedTitle => 'Nincs módosítva.';

  @override
  String get errorNotModified => 'Semmi sem változott legutóbbi kérése óta.';

  @override
  String get errorNetworkTitle => 'Hálózati hiba.';

  @override
  String get errorNetwork =>
      'Nem tudtuk elérni a hálózatot. Ellenőrizze a kapcsolatot, és próbálja újra.';

  @override
  String get errorDataIsEmptyTitle => 'Nincs adat.';

  @override
  String get errorDataIsEmpty => 'Nem találtunk megjeleníthető adatokat.';

  @override
  String get errorConflictTitle => 'Konfliktus.';

  @override
  String get errorConflict =>
      'A kérelem ütközött a meglévő adatokkal. Kérjük, próbálja újra.';

  @override
  String get errorServerValidationTitle => 'Érvényesítési hiba.';

  @override
  String get errorServerValidation =>
      'A szerver visszautasított néhány adatot. Kérjük, tekintse át, és próbálja újra.';

  @override
  String get errorWriteFileTitle => 'Az írás nem sikerült.';

  @override
  String get errorWriteFile =>
      'Nem tudtuk menteni a fájlt. Kérjük, próbálja újra.';

  @override
  String get errorReadFileTitle => 'Az olvasás nem sikerült.';

  @override
  String get errorReadFile =>
      'Nem tudtuk elolvasni a fájlt. Kérjük, próbálja újra.';

  @override
  String get errorFileNotFoundTitle => 'A fájl nem található.';

  @override
  String get errorFileNotFound => 'Nem találtuk a keresett fájlt.';

  @override
  String get errorInsufficientStorageTitle => 'Nincs elég tárhely.';

  @override
  String get errorInsufficientStorage =>
      'Szabadítson fel helyet, és próbálja újra.';

  @override
  String get errorDatabaseReadTitle => 'Adatbázis olvasási hiba.';

  @override
  String get errorDatabaseRead => 'Nem tudtunk olvasni az adatbázisból.';

  @override
  String get errorDatabaseWriteTitle => 'Adatbázis írási hiba.';

  @override
  String get errorDatabaseWrite => 'Nem tudtuk menteni az adatbázisba.';

  @override
  String get errorDatabaseConnectionTitle => 'Adatbázis csatlakozási hiba.';

  @override
  String get errorDatabaseConnection =>
      'Nem tudtunk csatlakozni az adatbázishoz.';

  @override
  String get errorAuthTitle => 'Hitelesítési hiba.';

  @override
  String get errorAuth => 'Kérjük, jelentkezzen be, és próbálja újra.';

  @override
  String get errorInvalidCredentialsTitle => 'Érvénytelen hitelesítő adatok.';

  @override
  String get errorInvalidCredentials =>
      'A felhasználónév vagy a jelszó helytelen.';

  @override
  String get errorSecureStorageReadTitle =>
      'Biztonságos tárhely olvasási hiba.';

  @override
  String get errorSecureStorageRead =>
      'Nem tudtunk olvasni a biztonságos tárhelyről.';

  @override
  String get errorSecureStorageWriteTitle => 'Biztonságos tárhely írási hiba.';

  @override
  String get errorSecureStorageWrite =>
      'Nem tudtunk biztonságos tárhelyre írni.';

  @override
  String get errorSecureStorageClearTitle =>
      'Biztonságos tárolás egyértelmű hiba.';

  @override
  String get errorSecureStorageClear =>
      'Nem tudtuk törölni a biztonságos tárhelyet.';

  @override
  String get errorTokenExpiredTitle => 'A munkamenet lejárt.';

  @override
  String get errorTokenExpired => 'Kérjük, jelentkezzen be újra.';

  @override
  String get errorUserNotFoundTitle => 'Felhasználó nem található.';

  @override
  String get errorUserNotFound => 'Nem találtuk a felhasználót.';

  @override
  String get errorPermissionDeniedTitle => 'Engedély megtagadva.';

  @override
  String get errorPermissionDenied =>
      'Nincs engedélye ennek a műveletnek a végrehajtására.';

  @override
  String get errorEmptyResultTitle => 'Nincs eredmény.';

  @override
  String get errorEmptyResult => 'Nem találtunk eredményt.';

  @override
  String get errorInvalidInputTitle => 'Érvénytelen bevitel.';

  @override
  String get errorInvalidInput =>
      'Kérjük, ellenőrizze a bevitelt, és próbálja újra.';

  @override
  String get errorEmptyTopicsTitle => 'Nincs kiválasztva téma.';

  @override
  String get errorEmptyTopics => 'Kérjük, válasszon legalább egy témát.';

  @override
  String get errorParsingTitle => 'Elemzési hiba.';

  @override
  String get errorParsing => 'Nem tudtuk feldolgozni az adatokat.';

  @override
  String get errorUnknownTitle => 'Ismeretlen hiba.';

  @override
  String get errorUnknown => 'Váratlan hiba történt.';
}
