import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/services/firebase/firebase_datasource.dart';
import 'package:driver_app/core/services/firebase/firebase_repository_impl.dart';
import 'package:driver_app/core/services/firebase/firebase_usecases.dart';

final firebaseMessagingProvider = Provider((ref) => FirebaseMessaging.instance);

final firebaseDatasourceProvider = Provider(
  (ref) => FirebaseDatasource(messaging: ref.watch(firebaseMessagingProvider)),
);

final fcmRepositoryProvider = Provider(
  (r) => FirebaseRepositoryImpl(
    firebaseDatasource: r.read(firebaseDatasourceProvider),
  ),
);

final getFcmTokenUseCaseProvider = Provider<GetFcmTokenUseCase>(
  (ref) => GetFcmTokenUseCase(ref.watch(fcmRepositoryProvider)),
);

final checkPermissionUseCaseProvider = Provider<CheckPermissionUseCase>(
  (ref) => CheckPermissionUseCase(ref.watch(fcmRepositoryProvider)),
);

final subscribeToTopicUseCaseProvider = Provider<SubscribeToTopicUseCase>(
  (ref) => SubscribeToTopicUseCase(ref.watch(fcmRepositoryProvider)),
);
final subscribeToLangUseCaseProvider = Provider<SubscribeToLangUsecase>(
  (ref) => SubscribeToLangUsecase(ref.watch(fcmRepositoryProvider)),
);
final unsubscribeFromLangUseCaseProvider = Provider<UnsubscribeFromLangUsecase>(
  (ref) => UnsubscribeFromLangUsecase(ref.watch(fcmRepositoryProvider)),
);

final unsubscribeFromTopicUsecaseProvider =
    Provider<UnsubscribeFromTopicUseCase>(
      (ref) => UnsubscribeFromTopicUseCase(ref.watch(fcmRepositoryProvider)),
    );
