// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get back => 'retour';

  @override
  String get saveChangesTitle => 'Enregistrer les modifications';

  @override
  String get channels_section_title => 'Nouveau dans l\'application';

  @override
  String get go_to_groups_page => 'Accédez à la page des groupes';

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
      'Une nouvelle zone pour les chaînes WhatsApp et Telegram avec des vidéos, des images et des mises à jour – tout le contenu le plus intéressant en un seul endroit.';

  @override
  String get newMessages => 'Nouveaux messages';

  @override
  String get addArea => 'Ajouter une zone';

  @override
  String get removeArea => 'Supprimer la zone';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Êtes-vous sûr de vouloir supprimer $area de vos zones sélectionnées ?';
  }

  @override
  String get channels => 'Canaux';

  @override
  String get contactUsSuccessTitle => 'Envoyé avec succès ✅';

  @override
  String get contactUsSuccessMessage =>
      'Merci! Nous avons reçu votre message et vous répondrons dans les plus brefs délais.';

  @override
  String get selectCountry => 'Sélectionnez un pays';

  @override
  String get areaManagmentTitle => 'Zone de consommation d\'actualités';

  @override
  String get areaManagmentSubtitle => 'Mes pays';

  @override
  String get sharedFromApp => 'Partagé depuis';

  @override
  String get textCopied => 'Texte copié';

  @override
  String get queryIsEmpty => 'La requête est vide';

  @override
  String get queryIsEmptyTitle => 'La recherche est vide.';

  @override
  String get areaWereRemoved => 'La zone a été supprimée avec succès';

  @override
  String get areaWereAdded => 'La zone a été ajoutée avec succès';

  @override
  String get saveChangesMessage =>
      'Voulez-vous enregistrer les modifications que vous avez apportées ?';

  @override
  String get busyLandingTitle => 'Nous sommes presque en train d’atterrir…';

  @override
  String get busyLandingSubtitle => 'Nous préparons votre actualité';

  @override
  String get changeCountryTitle => 'Vers quel pays devrions-nous migrer ?';

  @override
  String get changeCountrySubtitle =>
      'Lorsque vous choisissez un pays, tout le contenu de l\'application sera mis à jour en fonction de votre sélection.';

  @override
  String get dailySummary => 'Résumé quotidien';

  @override
  String get lastUpdated => 'Dernière mise à jour';

  @override
  String get saveChangesSubtitle =>
      'Voulez-vous enregistrer les modifications que vous avez apportées ?';

  @override
  String get readMore => 'Lire la suite';

  @override
  String get searchPageNoResultsPrefix => 'Aucun résultat trouvé pour ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix =>
      'Aucun résultat trouvé pour \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix =>
      ' dans cette catégorie';

  @override
  String get toPowerOn => 'allumer';

  @override
  String get notificationsOffTitle => 'Notifications désactivées';

  @override
  String get notificationsOffSubtitle =>
      'Il semble que l\'accès aux notifications n\'ait pas encore été activé.';

  @override
  String get newArticles => 'Nouveaux articles';

  @override
  String get home => 'maison';

  @override
  String get changesApplyOnNextLaunch =>
      'Les modifications seront appliquées lors du prochain lancement de l’application.';

  @override
  String get enable => 'Activer';

  @override
  String get stayUpdatedWithLatestNews =>
      'Restez informé des dernières nouvelles';

  @override
  String get enableNotifications => 'Activer les notifications';

  @override
  String get error_details => 'Détails de l\'erreur';

  @override
  String get error_title => 'Oups, quelque chose ne va pas';

  @override
  String get freeSearch => 'Recherche gratuite';

  @override
  String get aiPageSubtitle =>
      'Cette fonctionnalité est encore en développement \n ça vaut le coup de revenir bientôt.';

  @override
  String get topicsSelectionTitle => 'Sélection de sujets d\'actualité';

  @override
  String get groups => 'Groupes';

  @override
  String get aiPageTitle =>
      'Bientôt disponible : vous pourrez discuter de l\'actualité avec notre IA !';

  @override
  String get topicsSelectionSubtitle =>
      'Choisissez les sujets ou sous-thèmes que vous aimeriez voir dans votre flux. Vous pouvez toujours les modifier ici.';

  @override
  String get failedToLoadTopics => 'Échec du chargement des sujets';

  @override
  String get settingsNote =>
      'Vous pouvez modifier les paramètres à tout moment';

  @override
  String get lang => 'Langue';

  @override
  String get failed_to_load_data =>
      'Nous n\'avons pas pu charger les données. Veuillez vérifier votre connexion Internet et réessayer.';

  @override
  String get changeLang => 'Changer de langue';

  @override
  String get notNow => 'Pas maintenant';

  @override
  String get notificationsPermissionRationale =>
      'L\'activation des notifications vous permet de rester informé des actualités importantes, des mises à jour urgentes et du contenu personnalisé, afin de ne rien manquer de ce qui compte pour vous.';

  @override
  String get skipToSuggestedContent =>
      'Passer au contenu que nous avons sélectionné pour vous';

  @override
  String get lets_go => 'Allons-y';

  @override
  String get keepGoing => 'Continue!';

  @override
  String get skip => 'Sauter';

  @override
  String get save => 'Enregistrer';

  @override
  String get next => 'Suivant';

  @override
  String get pleaseSelectLanguage => 'veuillez sélectionner une langue';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Sélectionnez au moins un sujet';

  @override
  String get notificationTitle => 'Vous voulez rester informé ?';

  @override
  String get search => 'Rechercher';

  @override
  String get searchPageEmptySubtitle => 'Que souhaiteriez-vous rechercher ?';

  @override
  String get searchPageEmptyTitle =>
      'Tapez un mot-clé ou un sujet à rechercher';

  @override
  String get notificationSubTitle =>
      'Vous pouvez activer les notifications contextuelles pour tout sujet qui vous intéresse.';

  @override
  String get whatIsInteresting => 'Ce qui t\'intéresse';

  @override
  String get subTextWhatIsInteresting =>
      'Pour envoyer uniquement ce qui est vraiment pertinent, marquons d’abord ce qui vous intéresse.';

  @override
  String get getStarted => 'Commencer';

  @override
  String get try_again => 'Réessayez';

  @override
  String get allow => 'Autoriser';

  @override
  String get noPermissions => 'Aucune autorisation';

  @override
  String get solution_suggestions => 'Suggestions de solutions';

  @override
  String get allowNotifications => 'Autoriser les notifications';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsEnabled => 'Notifications activées';

  @override
  String get notificationsDenied => 'Notifications refusées';

  @override
  String get pleaseWait => 'Veuillez patienter';

  @override
  String get all => 'tout';

  @override
  String get cancel => 'Annuler';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get subTextNotifications =>
      'Vous pouvez activer les notifications contextuelles pour chaque sujet qui vous intéresse.';

  @override
  String get troubleshooting_tips => 'Conseils de dépannage';

  @override
  String get welcome =>
      'Bienvenue sur l\'application d\'actualités, personnalisée rien que pour vous !';

  @override
  String get continueReading => 'Continuer la lecture';

  @override
  String get share => 'Partager';

  @override
  String get area => 'Zone';

  @override
  String get chooseYourAreaHint =>
      'Choisissez votre région pour recevoir des mises à jour localisées';

  @override
  String get chooseYourAreaHintUnused =>
      'Choisissez la région d\'actualités souhaitée.\nDans l\'application, vous pouvez également sélectionner des pays supplémentaires.';

  @override
  String get chooseYourLangHint =>
      'Choisissez votre langue, vous pourrez toujours la changer plus tard.';

  @override
  String get topics => 'Sujets';

  @override
  String get chooseTopicsHint =>
      'Choisissez les sujets qui vous intéressent, vous pouvez toujours les modifier dans les paramètres.';

  @override
  String get categories => 'Catégories';

  @override
  String get manageNotifications => 'Gérer les notifications';

  @override
  String get languageAndRegion => 'Langue et région';

  @override
  String get about => 'À propos';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get contactUs => 'Contactez-nous';

  @override
  String get networkStatusPartialTitle => 'Problème de serveur';

  @override
  String get networkStatusOfflineTitle => 'Pas de connexion Internet';

  @override
  String get networkStatusPartialMessage =>
      'Nous pouvons accéder à Internet, mais pas au serveur.\\nRéessayez dans quelques instants.';

  @override
  String get networkStatusOfflineMessage =>
      'Pas de connexion Internet. Nous montrons des articles plus anciens ; connectez-vous à Internet pour voir les dernières histoires.';

  @override
  String get networkStatusInternetLabel => 'Connexion Internet';

  @override
  String get networkStatusServerLabel => 'Connexion au serveur';

  @override
  String get networkStatusDismiss => 'Je l\'ai compris';

  @override
  String get networkStatusConnected => 'Connecté';

  @override
  String get networkStatusDisconnected => 'Non connecté';

  @override
  String get offlineMode => 'Mode hors ligne';

  @override
  String get changesSavedSuccessfully =>
      'Modifications enregistrées avec succès';

  @override
  String get unableToSaveChanges =>
      'Impossible d\'enregistrer les modifications';

  @override
  String get dismissibleNoticeNotificationsTitle =>
      'Notifications contextuelles';

  @override
  String get dismissibleNoticeNotificationsSubtitle =>
      'Personnalisez facilement vos alertes. Activez ou désactivez les notifications push pour tout sujet qui vous intéresse.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Mise à jour en route !';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle =>
      'Bientôt, vous pourrez choisir les régions du monde dont vous souhaitez recevoir des nouvelles et des mises à jour.';

  @override
  String get info => 'Informations';

  @override
  String get success => 'Succès';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get saveChangesConfirmation =>
      'Voulez-vous enregistrer vos modifications ?';

  @override
  String get confirm => 'Confirmer';

  @override
  String get unableToOpenReference => 'Impossible d\'ouvrir cette référence';

  @override
  String searchPageNoResults(String query) {
    return 'Aucun résultat trouvé pour \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Aucun résultat trouvé pour « $query » dans cette catégorie';
  }

  @override
  String get newsTopics => 'Sujets d\'actualité';

  @override
  String get errorNoInternet =>
      'Veuillez vérifier votre connexion et réessayer.';

  @override
  String get errorNoInternetTitle => 'Pas de connexion Internet.';

  @override
  String get errorTimeout =>
      'La demande a expiré. Veuillez réessayer plus tard.';

  @override
  String get errorTimeoutTitle => 'La demande a expiré.';

  @override
  String get errorServer =>
      'Une erreur de serveur s\'est produite. Veuillez réessayer.';

  @override
  String get errorServerTitle => 'Erreur de serveur.';

  @override
  String get errorUnauthorized =>
      'Vous n\'êtes pas autorisé. Veuillez vous connecter et réessayer.';

  @override
  String get errorUnauthorizedTitle => 'Non autorisé.';

  @override
  String get errorForbidden =>
      'Vous n\'êtes pas autorisé à effectuer cette action.';

  @override
  String get errorForbiddenTitle => 'Accès refusé.';

  @override
  String get errorNotFound => 'Nous n\'avons pas trouvé ce que vous cherchiez.';

  @override
  String get errorNotFoundTitle => 'Pas trouvé.';

  @override
  String get updateArticle => 'Plus de détails ont été mis à jour';

  @override
  String get errorValidation =>
      'Certaines informations semblent invalides. Veuillez vérifier et réessayer.';

  @override
  String get agreeMail =>
      'J\'accepte de recevoir des mises à jour et des newsletters par e-mail.';

  @override
  String get sendUsEmail => 'Envoyez-nous un email';

  @override
  String get discardChangesTitle => 'Supprimer les modifications ?';

  @override
  String get discardChangesMessage =>
      'Vous avez des modifications non enregistrées. Si vous continuez, ils seront perdus.';

  @override
  String get discardButton => 'Jeter';

  @override
  String get stayButton => 'Rester';

  @override
  String get changeCountryConfirm => 'Changer de destination d\'actualités';

  @override
  String get otherWaysToContact => 'Autres moyens de contacter';

  @override
  String get agreePrivacy => 'J\'ai lu et j\'accepte le ';

  @override
  String get contactUsSubtitle =>
      'N\'hésitez pas à nous contacter en utilisant le formulaire ci-dessous.';

  @override
  String get fullName => 'Nom complet';

  @override
  String get mail => 'Adresse e-mail';

  @override
  String get message => 'Message';

  @override
  String get errorValidationTitle => 'Entrée invalide.';

  @override
  String get similarSources => 'Sources similaires';

  @override
  String get send => 'Envoyer';

  @override
  String get errorGeneric =>
      'Quelque chose s\'est mal passé. Veuillez réessayer.';

  @override
  String get errorGenericTitle => 'Quelque chose s\'est mal passé.';

  @override
  String get emptyResults_title => 'Aucun résultat correspondant';

  @override
  String get emptyResults_noResults => 'Aucun résultat trouvé.';

  @override
  String get emptyResults_bottomWithTopic =>
      'Essayez de modifier vos mots-clés ou choisissez un autre sujet.';

  @override
  String get emptyResults_bottomWithoutTopic =>
      'Essayez de modifier vos mots-clés.';

  @override
  String get emptyResults_inThisTopic => 'dans ce sujet';

  @override
  String get errorBadRequestTitle => 'Mauvaise demande.';

  @override
  String get errorBadRequest =>
      'La demande n\'était pas valide. Veuillez réessayer.';

  @override
  String get errorNotModifiedTitle => 'Non modifié.';

  @override
  String get errorNotModified =>
      'Rien n\'a changé depuis votre dernière demande.';

  @override
  String get errorNetworkTitle => 'Erreur réseau.';

  @override
  String get errorNetwork =>
      'Nous n\'avons pas pu accéder au réseau. Vérifiez votre connexion et réessayez.';

  @override
  String get errorDataIsEmptyTitle => 'Aucune donnée disponible.';

  @override
  String get errorDataIsEmpty =>
      'Nous n\'avons trouvé aucune donnée à afficher.';

  @override
  String get errorConflictTitle => 'Conflit.';

  @override
  String get errorConflict =>
      'La demande est en conflit avec les données existantes. Veuillez réessayer.';

  @override
  String get errorServerValidationTitle => 'Erreur de validation.';

  @override
  String get errorServerValidation =>
      'Le serveur a rejeté certaines données. Veuillez vérifier et réessayer.';

  @override
  String get errorWriteFileTitle => 'Échec de l\'écriture.';

  @override
  String get errorWriteFile =>
      'Nous n\'avons pas pu enregistrer le fichier. Veuillez réessayer.';

  @override
  String get errorReadFileTitle => 'Échec de la lecture.';

  @override
  String get errorReadFile =>
      'Nous n\'avons pas pu lire le fichier. Veuillez réessayer.';

  @override
  String get errorFileNotFoundTitle => 'Fichier introuvable.';

  @override
  String get errorFileNotFound =>
      'Nous n\'avons pas trouvé le fichier que vous recherchez.';

  @override
  String get errorInsufficientStorageTitle => 'Pas assez de stockage.';

  @override
  String get errorInsufficientStorage => 'Libérez de l\'espace et réessayez.';

  @override
  String get errorDatabaseReadTitle =>
      'Erreur de lecture de la base de données.';

  @override
  String get errorDatabaseRead =>
      'Nous n\'avons pas pu lire la base de données.';

  @override
  String get errorDatabaseWriteTitle =>
      'Erreur d\'écriture dans la base de données.';

  @override
  String get errorDatabaseWrite =>
      'Nous n\'avons pas pu enregistrer dans la base de données.';

  @override
  String get errorDatabaseConnectionTitle =>
      'Erreur de connexion à la base de données.';

  @override
  String get errorDatabaseConnection =>
      'Nous n\'avons pas pu nous connecter à la base de données.';

  @override
  String get errorAuthTitle => 'Erreur d\'authentification.';

  @override
  String get errorAuth => 'Veuillez vous connecter et réessayer.';

  @override
  String get errorInvalidCredentialsTitle => 'Identifiants invalides.';

  @override
  String get errorInvalidCredentials =>
      'Le nom d\'utilisateur ou le mot de passe est incorrect.';

  @override
  String get errorSecureStorageReadTitle =>
      'Erreur de lecture du stockage sécurisé.';

  @override
  String get errorSecureStorageRead =>
      'Nous ne pouvions pas lire à partir du stockage sécurisé.';

  @override
  String get errorSecureStorageWriteTitle =>
      'Erreur d\'écriture du stockage sécurisé.';

  @override
  String get errorSecureStorageWrite =>
      'Nous ne pouvions pas écrire sur un stockage sécurisé.';

  @override
  String get errorSecureStorageClearTitle =>
      'Erreur d\'effacement du stockage sécurisé.';

  @override
  String get errorSecureStorageClear =>
      'Nous n\'avons pas pu libérer le stockage sécurisé.';

  @override
  String get errorTokenExpiredTitle => 'Session expirée.';

  @override
  String get errorTokenExpired => 'Veuillez vous reconnecter.';

  @override
  String get errorUserNotFoundTitle => 'Utilisateur introuvable.';

  @override
  String get errorUserNotFound =>
      'Nous n\'avons pas pu trouver cet utilisateur.';

  @override
  String get errorPermissionDeniedTitle => 'Autorisation refusée.';

  @override
  String get errorPermissionDenied =>
      'Vous n\'êtes pas autorisé à effectuer cette action.';

  @override
  String get errorEmptyResultTitle => 'Aucun résultat.';

  @override
  String get errorEmptyResult => 'Nous n\'avons trouvé aucun résultat.';

  @override
  String get errorInvalidInputTitle => 'Entrée invalide.';

  @override
  String get errorInvalidInput =>
      'Veuillez vérifier votre saisie et réessayer.';

  @override
  String get errorEmptyTopicsTitle => 'Aucun sujet sélectionné.';

  @override
  String get errorEmptyTopics => 'Veuillez sélectionner au moins un sujet.';

  @override
  String get errorParsingTitle => 'Erreur d\'analyse.';

  @override
  String get errorParsing => 'Nous n\'avons pas pu traiter les données.';

  @override
  String get errorUnknownTitle => 'Erreur inconnue.';

  @override
  String get errorUnknown => 'Une erreur inattendue s\'est produite.';
}
