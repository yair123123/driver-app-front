// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get back => 'volver';

  @override
  String get saveChangesTitle => 'Guardar cambios';

  @override
  String get channels_section_title => 'Nuevo en la aplicación';

  @override
  String get go_to_groups_page => 'Ir a la página de grupos';

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
  String get shareMessageOptionLinkSubtitle => 'Send a direct link to the message';

  @override
  String get shareMessageOptionContentTitle => 'Share text and media';

  @override
  String get shareMessageOptionContentSubtitle => 'Send the message text and media';

  @override
  String get channels_section_description => 'Una nueva área para los canales de WhatsApp y Telegram con vídeos, imágenes y actualizaciones: todo el contenido más interesante en un solo lugar.';

  @override
  String get newMessages => 'Nuevos mensajes';

  @override
  String get addArea => 'Agregar área';

  @override
  String get removeArea => 'Eliminar área';

  @override
  String removeAreaConfirmContent(String area) {
    return '¿Está seguro de que desea eliminar $area de las áreas seleccionadas?';
  }

  @override
  String get channels => 'Canales';

  @override
  String get contactUsSuccessTitle => 'Enviado exitosamente ✅';

  @override
  String get contactUsSuccessMessage => '¡Gracias! Recibimos su mensaje y nos comunicaremos con usted lo antes posible.';

  @override
  String get selectCountry => 'Seleccionar país';

  @override
  String get areaManagmentTitle => 'Área de consumo de noticias';

  @override
  String get areaManagmentSubtitle => 'Mis paises';

  @override
  String get sharedFromApp => 'Compartido desde';

  @override
  String get textCopied => 'Texto copiado';

  @override
  String get queryIsEmpty => 'La consulta está vacía.';

  @override
  String get queryIsEmptyTitle => 'La búsqueda está vacía.';

  @override
  String get areaWereRemoved => 'El área se eliminó correctamente';

  @override
  String get areaWereAdded => 'El área se agregó exitosamente';

  @override
  String get saveChangesMessage => '¿Quieres guardar los cambios que hiciste?';

  @override
  String get busyLandingTitle => 'Ya casi estamos aterrizando...';

  @override
  String get busyLandingSubtitle => 'Estamos preparando tus novedades';

  @override
  String get changeCountryTitle => '¿A qué país deberíamos cambiarnos?';

  @override
  String get changeCountrySubtitle => 'Cuando eliges un país, todo el contenido de la aplicación se actualizará según tu selección.';

  @override
  String get dailySummary => 'Resumen diario';

  @override
  String get lastUpdated => 'Última actualización';

  @override
  String get saveChangesSubtitle => '¿Quieres guardar los cambios que hiciste?';

  @override
  String get readMore => 'Leer más';

  @override
  String get searchPageNoResultsPrefix => 'No se encontraron resultados para ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix => 'No se encontraron resultados para \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' en esta categoría';

  @override
  String get toPowerOn => 'para encender';

  @override
  String get notificationsOffTitle => 'Notificaciones desactivadas';

  @override
  String get notificationsOffSubtitle => 'Parece que el acceso a las notificaciones aún no se ha habilitado.';

  @override
  String get newArticles => 'Nuevos artículos';

  @override
  String get home => 'casa';

  @override
  String get changesApplyOnNextLaunch => 'Los cambios se aplicarán en el próximo lanzamiento de la aplicación.';

  @override
  String get enable => 'Habilitar';

  @override
  String get stayUpdatedWithLatestNews => 'Manténgase actualizado con las últimas noticias';

  @override
  String get enableNotifications => 'Habilitar notificaciones';

  @override
  String get error_details => 'Detalles del error';

  @override
  String get error_title => 'Ups algo anda mal';

  @override
  String get freeSearch => 'Búsqueda gratuita';

  @override
  String get aiPageSubtitle => 'Esta característica aún está en desarrollo. \n Vale la pena volver pronto.';

  @override
  String get topicsSelectionTitle => 'Selección de temas de noticias';

  @override
  String get groups => 'Grupos';

  @override
  String get aiPageTitle => 'Próximamente: ¡podrás chatear con nuestra IA sobre las novedades!';

  @override
  String get topicsSelectionSubtitle => 'Elija temas o subtemas que le gustaría ver en su feed. Siempre puedes cambiarlos aquí.';

  @override
  String get failedToLoadTopics => 'No se pudieron cargar los temas';

  @override
  String get settingsNote => 'Puedes editar la configuración en cualquier momento.';

  @override
  String get lang => 'Idioma';

  @override
  String get failed_to_load_data => 'No pudimos cargar los datos. Por favor verifique su conexión a Internet e inténtelo nuevamente.';

  @override
  String get changeLang => 'Cambiar idioma';

  @override
  String get notNow => 'Ahora no';

  @override
  String get notificationsPermissionRationale => 'Habilitar notificaciones te permite mantenerte actualizado con noticias importantes, actualizaciones urgentes y contenido personalizado, para que nunca te pierdas nada que te importe.';

  @override
  String get skipToSuggestedContent => 'Saltar al contenido que seleccionamos para usted';

  @override
  String get lets_go => 'vamos';

  @override
  String get keepGoing => '¡Sigue adelante!';

  @override
  String get skip => 'Saltar';

  @override
  String get save => 'Guardar';

  @override
  String get next => 'Siguiente';

  @override
  String get pleaseSelectLanguage => 'por favor seleccione un idioma';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Seleccione al menos un tema';

  @override
  String get notificationTitle => '¿Quieres mantenerte actualizado?';

  @override
  String get search => 'Buscar';

  @override
  String get searchPageEmptySubtitle => '¿Qué te gustaría buscar?';

  @override
  String get searchPageEmptyTitle => 'Escriba una palabra clave o tema para buscar';

  @override
  String get notificationSubTitle => 'Puedes activar las notificaciones emergentes para cualquier tema que te interese.';

  @override
  String get whatIsInteresting => 'que te interesa';

  @override
  String get subTextWhatIsInteresting => 'Para enviar sólo lo que es verdaderamente relevante, marquemos primero lo que te interesa.';

  @override
  String get getStarted => 'Empezar';

  @override
  String get try_again => 'Inténtalo de nuevo';

  @override
  String get allow => 'Permitir';

  @override
  String get noPermissions => 'Sin permisos';

  @override
  String get solution_suggestions => 'Sugerencias de solución';

  @override
  String get allowNotifications => 'Permitir notificaciones';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get notificationsEnabled => 'Notificaciones habilitadas';

  @override
  String get notificationsDenied => 'Notificaciones denegadas';

  @override
  String get pleaseWait => 'Por favor espera';

  @override
  String get all => 'todos';

  @override
  String get cancel => 'Cancelar';

  @override
  String get openSettings => 'Abrir configuración';

  @override
  String get subTextNotifications => 'Puede habilitar notificaciones emergentes para cada tema que le interese.';

  @override
  String get troubleshooting_tips => 'Consejos para solucionar problemas';

  @override
  String get welcome => '¡Bienvenido a la aplicación de noticias, personalizada solo para ti!';

  @override
  String get continueReading => 'Continuar leyendo';

  @override
  String get share => 'Compartir';

  @override
  String get area => 'Área';

  @override
  String get chooseYourAreaHint => 'Elija su área para recibir actualizaciones de noticias localizadas';

  @override
  String get chooseYourAreaHintUnused => 'Elija la región de noticias que desee.\nDentro de la aplicación, también puedes seleccionar países adicionales.';

  @override
  String get chooseYourLangHint => 'Elige tu idioma, siempre podrás cambiarlo más tarde.';

  @override
  String get topics => 'Temas';

  @override
  String get chooseTopicsHint => 'Elige los temas que te interesen, siempre podrás cambiarlos en la configuración.';

  @override
  String get categories => 'Categorías';

  @override
  String get manageNotifications => 'Administrar notificaciones';

  @override
  String get languageAndRegion => 'Idioma y región';

  @override
  String get about => 'Acerca de';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get contactUs => 'Contáctenos';

  @override
  String get networkStatusPartialTitle => 'Problema del servidor';

  @override
  String get networkStatusOfflineTitle => 'Sin conexión a internet';

  @override
  String get networkStatusPartialMessage => 'Podemos acceder a Internet pero no al servidor.\\nInténtalo de nuevo en un momento.';

  @override
  String get networkStatusOfflineMessage => 'Sin conexión a Internet. Mostramos artículos más antiguos; Conéctese a Internet para ver las últimas historias.';

  @override
  String get networkStatusInternetLabel => 'conexión a internet';

  @override
  String get networkStatusServerLabel => 'Conexión del servidor';

  @override
  String get networkStatusDismiss => 'Lo tengo';

  @override
  String get networkStatusConnected => 'Conectado';

  @override
  String get networkStatusDisconnected => 'No conectado';

  @override
  String get offlineMode => 'Modo sin conexión';

  @override
  String get changesSavedSuccessfully => 'Los cambios se guardaron correctamente';

  @override
  String get unableToSaveChanges => 'No se pueden guardar los cambios';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Notificaciones emergentes';

  @override
  String get dismissibleNoticeNotificationsSubtitle => 'Personaliza tus alertas fácilmente. Activa o desactiva las notificaciones push para cualquier tema que te interese.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => '¡Actualización en camino!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle => 'Pronto podrás elegir de qué regiones del mundo deseas recibir noticias y actualizaciones.';

  @override
  String get info => 'Información';

  @override
  String get success => 'Éxito';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get saveChangesConfirmation => '¿Quieres guardar tus cambios?';

  @override
  String get confirm => 'Confirmar';

  @override
  String get unableToOpenReference => 'No se puede abrir esta referencia';

  @override
  String searchPageNoResults(String query) {
    return 'No se han encontrado resultados para \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'No se encontraron resultados para \"$query\" en esta categoría';
  }

  @override
  String get newsTopics => 'Temas de noticias';

  @override
  String get errorNoInternet => 'Por favor verifique su conexión e inténtelo nuevamente.';

  @override
  String get errorNoInternetTitle => 'Sin conexión a Internet.';

  @override
  String get errorTimeout => 'La solicitud expiró. Inténtelo de nuevo más tarde.';

  @override
  String get errorTimeoutTitle => 'Se agotó el tiempo de espera de la solicitud.';

  @override
  String get errorServer => 'Se produjo un error en el servidor. Por favor inténtalo de nuevo.';

  @override
  String get errorServerTitle => 'Error del servidor.';

  @override
  String get errorUnauthorized => 'No estás autorizado. Por favor inicia sesión y vuelve a intentarlo.';

  @override
  String get errorUnauthorizedTitle => 'No autorizado.';

  @override
  String get errorForbidden => 'No tienes permiso para realizar esta acción.';

  @override
  String get errorForbiddenTitle => 'Acceso denegado.';

  @override
  String get errorNotFound => 'No pudimos encontrar lo que estabas buscando.';

  @override
  String get errorNotFoundTitle => 'No encontrado.';

  @override
  String get updateArticle => 'Se han actualizado más detalles.';

  @override
  String get errorValidation => 'Alguna información parece no válida. Por favor revíselo e inténtelo nuevamente.';

  @override
  String get agreeMail => 'Acepto recibir actualizaciones y boletines por correo electrónico.';

  @override
  String get sendUsEmail => 'Envíanos un correo electrónico';

  @override
  String get discardChangesTitle => '¿Descartar cambios?';

  @override
  String get discardChangesMessage => 'Tienes cambios sin guardar. Si continúas, se perderán.';

  @override
  String get discardButton => 'Descartar';

  @override
  String get stayButton => 'quedarse';

  @override
  String get changeCountryConfirm => 'Cambiar destino de noticias';

  @override
  String get otherWaysToContact => 'Otras formas de contactar';

  @override
  String get agreePrivacy => 'He leído y acepto las ';

  @override
  String get contactUsSubtitle => 'No dude en contactarnos utilizando el siguiente formulario.';

  @override
  String get fullName => 'nombre completo';

  @override
  String get mail => 'Dirección de correo electrónico';

  @override
  String get message => 'Mensaje';

  @override
  String get errorValidationTitle => 'Entrada no válida.';

  @override
  String get similarSources => 'Fuentes similares';

  @override
  String get send => 'enviar';

  @override
  String get errorGeneric => 'Algo salió mal. Por favor inténtalo de nuevo.';

  @override
  String get errorGenericTitle => 'Algo salió mal.';

  @override
  String get emptyResults_title => 'No hay resultados coincidentes';

  @override
  String get emptyResults_noResults => 'No se encontraron resultados.';

  @override
  String get emptyResults_bottomWithTopic => 'Intente cambiar sus palabras clave o elija otro tema.';

  @override
  String get emptyResults_bottomWithoutTopic => 'Intente cambiar sus palabras clave.';

  @override
  String get emptyResults_inThisTopic => 'en este tema';

  @override
  String get errorBadRequestTitle => 'Mala petición.';

  @override
  String get errorBadRequest => 'La solicitud no fue válida. Por favor inténtalo de nuevo.';

  @override
  String get errorNotModifiedTitle => 'No modificado.';

  @override
  String get errorNotModified => 'Nada ha cambiado desde su última solicitud.';

  @override
  String get errorNetworkTitle => 'Error de red.';

  @override
  String get errorNetwork => 'No pudimos alcanzar la red. Comprueba tu conexión y vuelve a intentarlo.';

  @override
  String get errorDataIsEmptyTitle => 'No hay datos disponibles.';

  @override
  String get errorDataIsEmpty => 'No pudimos encontrar ningún dato para mostrar.';

  @override
  String get errorConflictTitle => 'Conflicto.';

  @override
  String get errorConflict => 'La solicitud entraba en conflicto con los datos existentes. Por favor inténtalo de nuevo.';

  @override
  String get errorServerValidationTitle => 'Error de validación.';

  @override
  String get errorServerValidation => 'El servidor rechazó algunos datos. Por favor revíselo e inténtelo nuevamente.';

  @override
  String get errorWriteFileTitle => 'Error de escritura.';

  @override
  String get errorWriteFile => 'No pudimos guardar el archivo. Por favor inténtalo de nuevo.';

  @override
  String get errorReadFileTitle => 'Error de lectura.';

  @override
  String get errorReadFile => 'No pudimos leer el archivo. Por favor inténtalo de nuevo.';

  @override
  String get errorFileNotFoundTitle => 'Archivo no encontrado.';

  @override
  String get errorFileNotFound => 'No pudimos encontrar el archivo que estás buscando.';

  @override
  String get errorInsufficientStorageTitle => 'Almacenamiento insuficiente.';

  @override
  String get errorInsufficientStorage => 'Libera espacio y vuelve a intentarlo.';

  @override
  String get errorDatabaseReadTitle => 'Error de lectura de base de datos.';

  @override
  String get errorDatabaseRead => 'No pudimos leer de la base de datos.';

  @override
  String get errorDatabaseWriteTitle => 'Error de escritura en la base de datos.';

  @override
  String get errorDatabaseWrite => 'No pudimos guardar en la base de datos.';

  @override
  String get errorDatabaseConnectionTitle => 'Error de conexión a la base de datos.';

  @override
  String get errorDatabaseConnection => 'No pudimos conectarnos a la base de datos.';

  @override
  String get errorAuthTitle => 'Error de autenticación.';

  @override
  String get errorAuth => 'Por favor inicia sesión y vuelve a intentarlo.';

  @override
  String get errorInvalidCredentialsTitle => 'Credenciales no válidas.';

  @override
  String get errorInvalidCredentials => 'El nombre de usuario o contraseña es incorrecto.';

  @override
  String get errorSecureStorageReadTitle => 'Error de lectura de almacenamiento seguro.';

  @override
  String get errorSecureStorageRead => 'No pudimos leer desde el almacenamiento seguro.';

  @override
  String get errorSecureStorageWriteTitle => 'Error de escritura en almacenamiento seguro.';

  @override
  String get errorSecureStorageWrite => 'No pudimos escribir en un almacenamiento seguro.';

  @override
  String get errorSecureStorageClearTitle => 'Error de borrado de almacenamiento seguro.';

  @override
  String get errorSecureStorageClear => 'No pudimos borrar el almacenamiento seguro.';

  @override
  String get errorTokenExpiredTitle => 'La sesión expiró.';

  @override
  String get errorTokenExpired => 'Por favor inicia sesión nuevamente.';

  @override
  String get errorUserNotFoundTitle => 'Usuario no encontrado.';

  @override
  String get errorUserNotFound => 'No pudimos encontrar ese usuario.';

  @override
  String get errorPermissionDeniedTitle => 'Permiso denegado.';

  @override
  String get errorPermissionDenied => 'No tienes permiso para realizar esta acción.';

  @override
  String get errorEmptyResultTitle => 'Sin resultados.';

  @override
  String get errorEmptyResult => 'No pudimos encontrar ningún resultado.';

  @override
  String get errorInvalidInputTitle => 'Entrada no válida.';

  @override
  String get errorInvalidInput => 'Por favor verifique su entrada e inténtelo nuevamente.';

  @override
  String get errorEmptyTopicsTitle => 'No hay temas seleccionados.';

  @override
  String get errorEmptyTopics => 'Por favor seleccione al menos un tema.';

  @override
  String get errorParsingTitle => 'Error de análisis.';

  @override
  String get errorParsing => 'No pudimos procesar los datos.';

  @override
  String get errorUnknownTitle => 'Error desconocido.';

  @override
  String get errorUnknown => 'Se produjo un error inesperado.';
}
