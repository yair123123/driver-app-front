import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app/features/permission/services/notification_permission_service.dart';

class NotificationPermissionState {
  final NotificationAuth status;
  final bool isRequesting;
  const NotificationPermissionState({
    required this.status,
    required this.isRequesting,
  });
  bool get isGranted => status == NotificationAuth.granted;
  NotificationPermissionState copyWith({
    NotificationAuth? status,
    bool? isRequesting,
  }) => NotificationPermissionState(
    status: status ?? this.status,
    isRequesting: isRequesting ?? this.isRequesting,
  );
}

final notificationPermissionProvider =
    AsyncNotifierProvider<
      NotificationPermissionController,
      NotificationPermissionState
    >(NotificationPermissionController.new);

class NotificationPermissionController
    extends AsyncNotifier<NotificationPermissionState> {
  @override
  Future<NotificationPermissionState> build() async {
    final notifPerms = ref.read(notificationPermissionServiceProvider);
    final s = await notifPerms.getStatus();
    return NotificationPermissionState(status: s, isRequesting: false);
  }
  
  Future<void> refresh() async {
    final current = state.valueOrNull;
    if (current == null) return;
    final notifPerms = ref.read(notificationPermissionServiceProvider);
    final s = await notifPerms.getStatus();
    state = AsyncData(current.copyWith(status: s));
  }

  Future<void> request() async {
    final current = state.valueOrNull;
    if (current == null || current.isRequesting || current.isGranted) return;
    if (current.status == NotificationAuth.permanentlyDenied) {
      openSettings();
      return;
    }

    state = AsyncData(current.copyWith(isRequesting: true));
    final notifPerms = ref.read(notificationPermissionServiceProvider);
    final res = await notifPerms.request();
    state = AsyncData(current.copyWith(status: res, isRequesting: false));
  }

  Future<void> openSettings() {
    final notifPerms = ref.read(notificationPermissionServiceProvider);
    return notifPerms.openSettings();
  }
}
