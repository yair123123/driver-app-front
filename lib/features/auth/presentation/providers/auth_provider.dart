import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/features/auth/data/datasources/auth_class_datasource.dart';
import 'package:driver_app/features/auth/data/datasources/auth_local_datasource_mobile.dart';
import 'package:driver_app/features/auth/data/datasources/auth_local_datasource_web.dart';
import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:driver_app/features/auth/domain/repositories/app_initial_repository.dart';
import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:driver_app/features/auth/presentation/notifiers/app_initial_notifier.dart';
import 'package:driver_app/features/auth/presentation/states/app_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final authRemoteDatasourceProvider = Provider<AuthRemoteDatasource>((ref) {
  return AuthRemoteDatasource(Env.authUrl);
});
final authLocalDatasourceWProvider = Provider<AuthLocalDatasource>((ref) {
  return kIsWeb
      ? AuthLocalDatasourceWeb()
      : AuthLocalDatasourceMobile(const FlutterSecureStorage());
});
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    ref.watch(authRemoteDatasourceProvider),
    ref.watch(authLocalDatasourceWProvider),
  );
});

final loginUsecase = Provider<Login>((ref) {
  return Login(ref.watch(authRepositoryProvider));
});
final validateToken = Provider<ValidateToken>((ref) {
  return ValidateToken(ref.watch(authRepositoryProvider));
});
final getSavedToken = Provider<GetSavedToken>((ref) {
  return GetSavedToken(ref.watch(authRepositoryProvider));
});
final clearToken = Provider<ClearToken>((ref) {
  return ClearToken(ref.watch(authRepositoryProvider));
});

final appInitialProvider = StateNotifierProvider<AppInitialNotifier, AppState>((ref) {
  return AppInitialNotifier(
    ref.watch(getSavedToken),
    ref.watch(validateToken),
    ref.watch(clearToken),
    ref.watch(loginUsecase),
  );
});
