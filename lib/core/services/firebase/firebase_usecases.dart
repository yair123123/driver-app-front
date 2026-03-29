import 'package:news_app/core/services/firebase/firebase_repository.dart';
import 'package:news_app/features/lang_and_area/domain/lang_entity.dart';

class GetFcmTokenUseCase {
  final FirebaseRepository repository;
  GetFcmTokenUseCase(this.repository);
  Future<String?> call() async {
    return repository.getFcmToken();
  }
}

class CheckPermissionUseCase {
  final FirebaseRepository repository;
  CheckPermissionUseCase(this.repository);
  Future<bool> call() async {
    return repository.checkPermission();
  }
}

class SubscribeToTopicUseCase {
  final FirebaseRepository repository;
  SubscribeToTopicUseCase(this.repository);
  Future<void> call(String topic) async {
      repository.subscribeToTopic(topic);
    }
  }


class UnsubscribeFromTopicUseCase {
  final FirebaseRepository repository;
  UnsubscribeFromTopicUseCase(this.repository);
  Future<void> call(String topic) async {
    repository.unsubscribeFromTopic(topic);
  }
}

class SubscribeToLangUsecase {
  final FirebaseRepository repository;
  SubscribeToLangUsecase(this.repository);
  Future<void> call(String langCode) async {
    final patternLang = "l.$langCode";
    repository.subscribeToTopic(patternLang);
  }
}

class UnsubscribeFromLangUsecase {
  final FirebaseRepository repository;
  UnsubscribeFromLangUsecase(this.repository);
  Future<void> call(String langCode) async {
    final patternLang = "l.$langCode";
    repository.unsubscribeFromTopic(patternLang);
  }
}
