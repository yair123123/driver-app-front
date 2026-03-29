import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/core/services/firebase/firebase_providers.dart';
import 'package:news_app/core/services/hive/hive_bootstrap_service.dart';
import 'package:news_app/features/home/constants/app_constants.dart';
import 'package:news_app/features/settings/presentation/notifiers/area_settings_notifier.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:news_app/core/env/config_service.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/services/crash_reporting/crash_reporting_provider.dart';
import 'package:news_app/core/services/notifications/sources/app_links_source.dart';
import 'package:news_app/core/services/notifications/sources/fcm_tap_source.dart';
import 'package:news_app/core/services/notifications/sources/local_notification_tap_source.dart';
import 'package:news_app/core/services/notifications/parser/navigation_intent_parser.dart';
import 'package:news_app/core/services/notifications/push_notifications_manager.dart';
import 'package:news_app/features/app/data/datasources/app_state_local_data_source.dart';
import 'package:news_app/features/app/data/models/app_prefs_model.dart';
import 'package:news_app/features/app/domain/entities/app_runtime.dart';
import 'package:news_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:news_app/features/articles/data/data_sources/article_hive_datasource.dart';
import 'package:news_app/features/articles/data/models/article_model.dart';
import 'package:news_app/features/articles/data/models/reference_model.dart';
import 'package:news_app/features/auth/data/datasources/user_hive_data_source.dart';
import 'package:news_app/features/auth/data/models/user_model.dart';
import 'package:news_app/features/auth/domain/entities/user.dart';
import 'package:news_app/core/env/rc_defaults.dart';
import 'package:news_app/core/logger/firebase_logger.dart';
import 'package:news_app/features/auth/presentation/riverpod/notifiers/creds_notifier.dart';
import 'package:news_app/features/auth/presentation/riverpod/providers/di_providers.dart';
import 'package:news_app/features/home/presentation/riverpod/providers/feed_providers.dart';
import 'package:news_app/features/lang_and_area/domain/area_entity.dart';
import 'package:news_app/features/permission/services/notification_permission_service.dart';
import 'package:news_app/features/topics/data/data_source/topics_hive_ds.dart';
import 'package:news_app/features/topics/domain/entities/subtopic.dart';
import 'package:news_app/features/topics/domain/entities/topic.dart';
import 'package:news_app/features/topics/presentation/providers/topics_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:news_app/features/articles/controllers/articles_controller.dart';

class AppBootstrapController extends ChangeNotifier {
  static const String _installationIdKey = 'installation_id';
  static const Uuid _uuid = Uuid();

  AppLinksSource? _appLinksSource;
  FcmTapSource? _fcmTapSource;
  LocalNotificationTapSource? _localTapSource;
  PushNotificationsManager? _pushManager;
  bool haveAllAreas = false;

  AppBootstrapController(this.ref, {bool autoStart = true}) {
    if (!autoStart) {
      initializing = false;
      return;
    }
    Future.microtask(() async {
      try {
        await _bootstrap();
      } catch (_) {}
    });
  }

  final Ref ref;
  bool initializing = true;
  Object? lastError;
  StackTrace? lastStackTrace;

  Future<void>? _inFlight;

  Future<void> restartBootstrap() async {
    final current = _inFlight;
    if (current != null) {
      try {
        await current;
      } catch (_) {}
    }
    return _bootstrap();
  }

  Future<void> onLoginSuccess() async {
    await restartBootstrap();
  }

  Future<void> _bootstrap() async {
    if (_inFlight != null) {
      return _inFlight!;
    }

    final future = _runBootstrap();
    _inFlight = future;
    future.whenComplete(() {
      _inFlight = null;
    });
    return future;
  }

  Future<void> _runBootstrap() async {
    initializing = true;
    lastError = null;
    lastStackTrace = null;
    notifyListeners();
    final crash = ref.read(crashReportingServiceProvider);

    try {
      crash.log('bootstrap_start');

      await _runBootstrapStage(
        stageName: 'initial_hive',
        action: _bootstrapHive,
      );
      await _runBootstrapStage(
        stageName: 'crash_reporting',
        action: _bootstrapCrashReportingContext,
      );

      await _runBootstrapStage(
        stageName: 'remote_config',
        action: _bootstrapRemoteConfig,
      );
      crash.log('bootstrap_rc_ready');
      await _runBootstrapStage(
        stageName: 'check_force_update',
        action: _bootstrapCheckForceUpdate,
      );
      await _runBootstrapStage(
        stageName: 'auth_and_state',
        action: _bootstrapAuthAndApplyAppState,
      );
      await _runBootstrapStage(
        stageName: 'notifications',
        action: _bootstrapNotifications,
      );
      // TODO: remove after fix
      await _runBootstrapStage(
        stageName: 'add iran and israel to areas',
        action: _addIranAndIsraelToAreas,
      );

      crash.log('bootstrap_done');
    } catch (error, stack) {
      lastError = error;
      lastStackTrace = stack;
      FirebaseLogger.e('Bootstrap failed', error: error, stack: stack);
      rethrow;
    } finally {
      initializing = false;
      notifyListeners();
    }
  }

  Future<void> _runBootstrapStage({
    required String stageName,
    required Future<void> Function() action,
  }) async {
    try {
      await action();
    } catch (error, stack) {
      await _reportBootstrapStageFailure(
        stageName: stageName,
        error: error,
        stack: stack,
      );
      rethrow;
    }
  }

  Future<void> _reportBootstrapStageFailure({
    required String stageName,
    required Object error,
    required StackTrace stack,
  }) async {
    final crash = ref.read(crashReportingServiceProvider);
    crash.setFlow('bootstrap');
    crash.setStep(stageName);
    await crash.recordNonFatal(
      error,
      stack: stack,
      reason: 'bootstrap_failed',
      keys: {'stage': stageName},
    );
  }

  Future<void> _bootstrapCrashReportingContext() async {
    final crash = ref.read(crashReportingServiceProvider);
    await crash.init();
    crash.log('bootstrap_firebase_ready');

    final installationId = await _readOrCreateInstallationId();
    final packageInfo = await PackageInfo.fromPlatform();
    final appState = ref.read(appProvider);
    final apiBaseUrl = _safeApiBaseUrl();

    final keys = <String, Object?>{
      'app_version': packageInfo.version,
      'build_number': packageInfo.buildNumber,
      'platform': _platformName(),
      'os_version': _osVersion(),
      'device_model': 'unknown',
      'is_release': kReleaseMode,
      'lang': appState.appPrefs.selectedLangCode,
      'area': appState.appPrefs.selectedAreaCode,
      if (apiBaseUrl != null) 'api_base_url': apiBaseUrl,
    };

    crash.setGlobalKeys(keys);
    crash.setUserIdentifier(installationId);
    crash.log('bootstrap_prefs_ready');
  }

  Future<String> _readOrCreateInstallationId() async {
    try {
      final box = Hive.box(AppPrefsLocalDataSource.boxName);
      final existing = box.get(_installationIdKey);
      if (existing is String && existing.trim().isNotEmpty) {
        return existing;
      }

      final generated = _uuid.v4();
      await box.put(_installationIdKey, generated);
      return generated;
    } catch (error, stack) {
      FirebaseLogger.e(
        'Installation ID resolve failed',
        error: error,
        stack: stack,
      );
      return _uuid.v4();
    }
  }

  String? _safeApiBaseUrl() {
    try {
      final url = ref.read(configServiceProvider).current().publicApiUrl.trim();
      return url.isEmpty ? null : url;
    } catch (_) {
      return null;
    }
  }

  String _platformName() {
    if (kIsWeb) return 'web';

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return 'android';
      case TargetPlatform.iOS:
        return 'ios';
      case TargetPlatform.macOS:
        return 'macos';
      case TargetPlatform.windows:
        return 'windows';
      case TargetPlatform.linux:
        return 'linux';
      case TargetPlatform.fuchsia:
        return 'fuchsia';
    }
  }

  String _osVersion() {
    if (kIsWeb) return 'web';
    return defaultTargetPlatform.name;
  }

  Future<void> _bootstrapAuthAndApplyAppState() async {
    final authState = await _resolveAuth();
    final appStateController = ref.read(appProvider.notifier);
    final user = authState.user;
    var articlesLoaded = false;

    if (authState.isAuth && user != null) {
      final maybeAppPrefs = await ref.read(getLocalAppPrefsUseCaseProvider)();
      if (maybeAppPrefs != null) {
        appStateController.loadFromCache(maybeAppPrefs);
      }
      final appState = ref.read(appProvider);
      final userTopics = user
          .areaPrefsByArea[appState.appPrefs.selectedAreaCode]
          ?.selectedTopicValues;
      // TODO: remove after fix
      if (user.areaCodes.length == 2) haveAllAreas = true;
      if (userTopics == null) {
        throw UnauthorizedFailure();
      }

      articlesLoaded = await _prefetchArticles();
    }
    final permissionSvc = ref.read(notificationPermissionServiceProvider);
    final notificationAuth = await permissionSvc.getStatus();

    _applyAppState(articlesLoaded, authState.isAuth, notificationAuth);
  }

  Future<void> _bootstrapCheckForceUpdate() async {
    final serverVersion = await ref.read(currentVersionProvider.future);
    if (serverVersion > AppConstants.currentServerVersion) {
      ref.read(appProvider.notifier).setForceUpdate(true);
    }
  }

  Future<void> _bootstrapRemoteConfig() async {
    try {
      final rc = ref.read(configServiceProvider);
      await rc.init(defaults: remoteConfigDefaults, isDebug: kDebugMode);
    } catch (error, stack) {
      FirebaseLogger.e(
        'RemoteConfig bootstrap failed',
        error: error,
        stack: stack,
      );
      rethrow;
    }
  }

  Future<void> _bootstrapNotifications() async {
    await _disposeNotifications();

    FirebaseLogger.i('Bootstrap: notifications start');
    final flnp = FlutterLocalNotificationsPlugin();

    const generalChannel = AndroidNotificationChannel(
      'general',
      'General',
      description: 'General notifications',
      importance: Importance.high,
    );

    final androidPlugin = flnp
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    await androidPlugin?.createNotificationChannel(generalChannel);

    final parser = ref.read(navigationIntentParserProvider);
    final dispatcher = ref.read(navigationIntentProvider.notifier);

    _localTapSource = LocalNotificationTapSource(flnp);
    await _localTapSource!.start(
      onTap: (payload) {
        FirebaseLogger.i('Local notification tapped payload=$payload');
        final intent = parser.fromPayload(payload);
        if (intent != null) dispatcher.setIntent(intent);
      },
    );

    _appLinksSource = AppLinksSource();
    FirebaseLogger.i('Bootstrap:  app links source wired');
    await _appLinksSource!.start(
      onUri: (uri) {
        FirebaseLogger.i('Incoming URI: $uri');
        final intent = parser.fromUri(uri);
        if (intent != null) dispatcher.setIntent(intent);
      },
    );
    final appState = ref.read(appProvider);
    if (appState.appRuntime.notificationAuth == NotificationAuth.granted) {
      _fcmTapSource = FcmTapSource(flnp);
      await _fcmTapSource!.start(
        onTap: (data) {
          FirebaseLogger.i('FCM tapped id=${data.messageId} data=${data.data}');
          final intent = parser.fromFcm(data);
          if (intent != null) dispatcher.setIntent(intent);
        },
      );
    }
  }

  Future<void> _bootstrapHive() async {
    await ref.read(hiveBootstrapServiceProvider).ensureReady();
  }

  Future<({bool isAuth, User? user})> _resolveAuth() async {
    try {
      final res = await ref.read(credsProvider.notifier).loadFromStorage();

      res.fold((failure) {
        if (failure is SecureStorageReadFailure) {
          FirebaseLogger.w('Secure storage broken - continuing as logged out');
        } else {
          FirebaseLogger.e('Creds load failed', error: failure.message);
        }
      }, (_) {});

      final user = await ref.read(userProvider.future);
      final creds = ref.read(credsProvider);

      final isAuth =
          user != null && user.jwtToken != null && creds!.hasValidAccess;

      return (isAuth: isAuth, user: user);
    } catch (error, stack) {
      FirebaseLogger.e('Auth resolve failed', error: error, stack: stack);
      rethrow;
    }
  }

  Future<bool> _prefetchArticles() async {
    try {
      await ref.read(globalArticlesPageProvider.future);
      await ref.read(topicsProvider.future);
      return true;
    } catch (error, stack) {
      FirebaseLogger.e('Prefetch articles failed', error: error, stack: stack);
      return false;
    }
  }

  void _applyAppState(
    bool articlesLoaded,
    bool isAuth,
    NotificationAuth notificationAuth,
  ) {
    try {
      final app = ref.read(appProvider.notifier);
      app.setArticlesLoaded(articlesLoaded);
      app.setIsAuth(isAuth);
      app.setNotificationAuth(notificationAuth);
    } catch (error, stack) {
      FirebaseLogger.e('Apply AppState failed', error: error, stack: stack);
      rethrow;
    }
  }

  Future<void> _disposeNotifications() async {
    await _appLinksSource?.stop();
    _appLinksSource = null;

    await _pushManager?.dispose();
    _pushManager = null;

    await _fcmTapSource?.stop();
    _fcmTapSource = null;

    _localTapSource = null;
  }

  // TODO: remove after fix
  Future<void> _addIranAndIsraelToAreas() async {
    if (haveAllAreas) return;
    final state = await ref.read(areaSettingsProvider.future);
    final controller = ref.read(areaSettingsProvider.notifier);
    await controller.addAllAreas();
  }

  Future<void> changeArea(String areaCode) async {
    final previousArea = ref.read(appProvider).appPrefs.selectedAreaCode;

    try {
      ref.read(appProvider.notifier).setAppBusy(AppBusy.changeArea);
      ref.read(appProvider.notifier).setSelectedArea(areaCode);

      await ref.refresh(topicsProvider.future);
      await ref.refresh(carouselItemsProvider.future);
      await ref.refresh(globalArticlesPageProvider.future);
    } catch (e, st) {
      FirebaseLogger.e('Change area failed', error: e, stack: st);

      ref.read(appProvider.notifier).setSelectedArea(previousArea);
    } finally {
      ref.read(appProvider.notifier).setAppBusy(AppBusy.idle);
    }
  }
}
