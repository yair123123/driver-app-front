abstract class FirebaseRepository {
    Future<String?> getFcmToken();
    Future<void> subscribeToTopic(String topics);
    Future<void> unsubscribeFromTopic(String topic);
    Future<bool> checkPermission() ; 
}