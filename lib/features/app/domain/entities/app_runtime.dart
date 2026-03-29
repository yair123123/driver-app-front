
import 'package:driver_app/features/permission/services/notification_permission_service.dart';

enum AppBusyReason { changeArea }

class AppBusy {
  final AppBusyReason? reason;

  const AppBusy._(this.reason);

  static const idle = AppBusy._(null);
  static const changeArea = AppBusy._(AppBusyReason.changeArea);
}

class AppRuntime {
  static const _u = Object();
  final bool forceUpdate;
  final NotificationAuth? notificationAuth;
  final bool? isAuth;
  final bool? isActiveRide;

  AppRuntime({
    this.forceUpdate = false,
    this.notificationAuth,
    this.isAuth,
    this.isActiveRide ,
  });

  AppRuntime copyWith({
    bool? forceUpdate,
    Object? isAuth = _u,
    bool? articlesLoaded,
    AppBusy? appBusy,
    NotificationAuth? notificationAuth,
    bool? isActiveRide,
  }) {
    return AppRuntime(
      forceUpdate: forceUpdate ?? this.forceUpdate,
      isAuth: isAuth == _u ? this.isAuth : isAuth as bool?,
      notificationAuth: notificationAuth ?? this.notificationAuth,
      isActiveRide: isActiveRide ?? this.isActiveRide,
    );
  }
}
