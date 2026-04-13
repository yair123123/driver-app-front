import 'package:driver_app/features/permission/services/notification_permission_service.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';

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
  final AppBusy appBusy;
  final Ride? isActiveRide;

  const AppRuntime({
    this.forceUpdate = false,
    this.notificationAuth,
    this.isAuth,
    this.appBusy = AppBusy.idle,
    this.isActiveRide,
  });

  AppRuntime copyWith({
    bool? forceUpdate,
    Object? isAuth = _unset,
    AppBusy? appBusy,
    NotificationAuth? notificationAuth,
    Ride? isActiveRide,
  }) {
    return AppRuntime(
      forceUpdate: forceUpdate ?? this.forceUpdate,
      isAuth: isAuth == _unset ? this.isAuth : isAuth as bool?,
      appBusy: appBusy ?? this.appBusy,
      notificationAuth: notificationAuth ?? this.notificationAuth,
      isActiveRide: isActiveRide ?? this.isActiveRide,
    );
  }
}
