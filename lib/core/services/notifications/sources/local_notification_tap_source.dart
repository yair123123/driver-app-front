import 'package:flutter_local_notifications/flutter_local_notifications.dart';

typedef PayloadListener = void Function(String payload);

class LocalNotificationTapSource {
  final FlutterLocalNotificationsPlugin flnp;

  LocalNotificationTapSource(this.flnp);

  bool _started = false;
  String? _lastHandledPayload;

  void _handleOnce(PayloadListener onTap, String? payload) {
    final p = payload?.trim();
    if (p == null || p.isEmpty) return;

    if (_lastHandledPayload == p) return;
    _lastHandledPayload = p;

    onTap(p);
  }

  Future<void> start({required PayloadListener onTap}) async {
    if (!_started) {
      _started = true;

      final initSettings = InitializationSettings(
        android: const AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: const DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        ),
      );

      await flnp.initialize(
        initSettings,
        onDidReceiveNotificationResponse: (response) {
          _handleOnce(onTap, response.payload);
        },
      );
    }

    final launchDetails = await flnp.getNotificationAppLaunchDetails();
    final payload = launchDetails?.notificationResponse?.payload;
    _handleOnce(onTap, payload);
  }
}
