import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:news_app/core/logger/firebase_logger.dart';

class FirebaseDatasource {
  late final FirebaseMessaging messaging;

  FirebaseDatasource({required this.messaging});

  Future<String?> getFCMtoken() async {
    try {
      String? fcmToken = await messaging.getToken();
      return fcmToken ?? "";
    } catch (e) {
      FirebaseLogger.e("can't get fcm token $e");
      return null;
    }
  }

  Future<bool> hasNotificationPermission() async {
    final settings = await messaging.getNotificationSettings();

    return settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
  }

  Future<void> subscribeToTopic(String topic) async {
    await messaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await messaging.unsubscribeFromTopic(topic);
  }
}
