enum TypeMessage { success, error, info }

enum BodyMode { normal, titleOnly }

enum SystemMessageId {
  contactUsSuccess,
  saveSuccess,
  validationError,
  noInternet,
  timeout,
  genericError,
  badRequest,
  notModified,
  network,
  server,
  dataIsEmpty,
  unauthorized,
  forbidden,
  notFound,
  conflict,
  serverValidation,
  writeFile,
  readFile,
  fileNotFound,
  insufficientStorage,
  databaseRead,
  databaseWrite,
  databaseConnection,
  auth,
  invalidCredentials,
  secureStorageRead,
  secureStorageWrite,
  secureStorageClear,
  tokenExpired,
  userNotFound,
  permissionDenied,
  emptyResult,
  invalidInput,
  queryIsEmpty,
  emptyTopics,
  parsing,
  unknown,
}

class SystemMessage {
  final TypeMessage type;
  final SystemMessageId id;
  final String? dedupeKey;
  final BodyMode bodyMode;

  bool get isTitleOnly => bodyMode == BodyMode.titleOnly;

  const SystemMessage({
    required this.type,
    required this.id,
    this.bodyMode = BodyMode.normal,
    this.dedupeKey,
  });

  factory SystemMessage.success(
    SystemMessageId id,
    BodyMode mode, {
    String? dedupeKey,
  }) => SystemMessage(
    type: TypeMessage.success,
    id: id,
    bodyMode: mode,
    dedupeKey: dedupeKey,
  );

  factory SystemMessage.error(SystemMessageId id, {String? dedupeKey}) =>
      SystemMessage(
        type: TypeMessage.error,
        id: id,
        bodyMode: BodyMode.normal,
        dedupeKey: dedupeKey,
      );

  factory SystemMessage.info(SystemMessageId id, {String? dedupeKey}) =>
      SystemMessage(
        type: TypeMessage.info,
        id: id,
        bodyMode: BodyMode.normal,
        dedupeKey: dedupeKey,
      );
}
