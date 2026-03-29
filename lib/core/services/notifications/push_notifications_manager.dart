import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotificationsManager {
  final FlutterLocalNotificationsPlugin flnp;
  StreamSubscription<RemoteMessage>? _sub;

  PushNotificationsManager(this.flnp);

  Future<void> init() async {
    await _sub?.cancel();
    _sub = FirebaseMessaging.onMessage.listen(_onMessage);
  }

  Future<void> dispose() async {
    await _sub?.cancel();
    _sub = null;
  }

  Future<void> _onMessage(RemoteMessage msg) async {
    final n = msg.notification;
    final title = n?.title ?? msg.data['title'] ?? '';
    final body  = n?.body  ?? msg.data['body']  ?? '';

    const androidDetails = AndroidNotificationDetails(
      'general',
      'General',
      channelDescription: 'General notifications',
      importance: Importance.high,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
    );

    final articleId = msg.data['articleId'] ?? msg.data['id'];
    final link = msg.data['link'] ?? msg.data['deeplink'];

    final payload = (articleId is String && articleId.isNotEmpty)
        ? 'article:$articleId'
        : (link is String ? link : '');

    await flnp.show(
      msg.hashCode,
      title,
      body,
      const NotificationDetails(android: androidDetails),
      payload: payload.isEmpty ? null : payload,
    );
  }
}
