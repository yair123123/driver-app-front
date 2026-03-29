import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

typedef FcmMessageListener = void Function(RemoteMessage message);

class FcmTapSource {
  StreamSubscription<RemoteMessage>? _onMessageSub;
  StreamSubscription<RemoteMessage>? _onOpenedSub;
  final FlutterLocalNotificationsPlugin flnp;

  FcmTapSource(this.flnp);

  Future<void> start({required FcmMessageListener onTap}) async {
    final initial = await FirebaseMessaging.instance.getInitialMessage();
    if (initial != null) {
      onTap(initial);
    }
    await _onMessageSub?.cancel();
    _onMessageSub = FirebaseMessaging.onMessage.listen(_onMessage);

    await _onOpenedSub?.cancel();
    _onOpenedSub = FirebaseMessaging.onMessageOpenedApp.listen(onTap);
  }

  Future<void> stop() async {
    await _onMessageSub?.cancel();
    await _onOpenedSub?.cancel();
    _onMessageSub = null;
    _onOpenedSub = null;
  }

  Future<void> _onMessage(RemoteMessage msg) async {
    final n = msg.notification;
    final title = n?.title ?? msg.data['title'] ?? '';
    final body = n?.body ?? msg.data['body'] ?? '';

    if (title.trim().isEmpty && body.trim().isEmpty) return;

    const androidDetails = AndroidNotificationDetails(
      'general',
      'General',
      channelDescription: 'General notifications',
      importance: Importance.high,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentSound: true,
      presentBadge: true,
    );

    final articleId = msg.data['articleId'] ?? msg.data['id'];

    final payload = 'article:$articleId';
    await flnp.show(
      msg.hashCode,
      title,
      body,
      const NotificationDetails(android: androidDetails, iOS: iosDetails),
      payload: payload.isEmpty ? null : payload,
    );
  }
}
