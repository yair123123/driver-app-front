import 'package:driver_app/features/permission/services/notification_permission_service.dart';

/// Ephemeral runtime-only flags. These should not be persisted.
enum AppBusyReason { changeArea }

class AppBusy {
  final AppBusyReason? reason;

  const AppBusy._(this.reason);

  static const idle = AppBusy._(null);
  static const changeArea = AppBusy._(AppBusyReason.changeArea);
}

class AppRuntime {
  static const _unset = Object();

  final bool forceUpdate;
  final NotificationAuth? notificationAuth;
  final bool? isAuth;
  final bool isArticlesLoaded;
  final AppBusy appBusy;
  final bool? isActiveRide;

  const AppRuntime({
    this.forceUpdate = false,
    this.notificationAuth,
    this.isAuth,
    this.isArticlesLoaded = false,
    this.appBusy = AppBusy.idle,
    this.isActiveRide,
  });

  AppRuntime copyWith({
    bool? forceUpdate,
    Object? isAuth = _unset,
    bool? articlesLoaded,
    AppBusy? appBusy,
    NotificationAuth? notificationAuth,
    bool? isActiveRide,
  }) {
    return AppRuntime(
      forceUpdate: forceUpdate ?? this.forceUpdate,
      isAuth: isAuth == _unset ? this.isAuth : isAuth as bool?,
      isArticlesLoaded: articlesLoaded ?? this.isArticlesLoaded,
      appBusy: appBusy ?? this.appBusy,
      notificationAuth: notificationAuth ?? this.notificationAuth,
      isActiveRide: isActiveRide ?? this.isActiveRide,
    );
  }
}
