import 'package:driver_app/core/services/firebase/firebase_datasource.dart';
import 'package:driver_app/core/services/firebase/firebase_repository.dart';

class FirebaseRepositoryImpl implements FirebaseRepository {
  final FirebaseDatasource firebaseDatasource;
  FirebaseRepositoryImpl({required this.firebaseDatasource});

  @override
  Future<String?> getFcmToken() async {
    return await firebaseDatasource.getFCMtoken();
  }

  @override
  Future<bool> checkPermission() async {
    return await firebaseDatasource.hasNotificationPermission();
  }

  @override
  Future<void> subscribeToTopic(String topic) async {
    await firebaseDatasource.subscribeToTopic(topic);
  }

  @override
  Future<void> unsubscribeFromTopic(String topic) async {
    await firebaseDatasource.unsubscribeFromTopic(topic);
  }
}
