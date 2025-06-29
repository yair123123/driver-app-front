
import 'package:driver_app/features/bootstrap/domain/repositories/app_initial_repository.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/get_user.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/features/bootstrap/data/datasources/auth_class_datasource.dart';
import 'package:driver_app/features/bootstrap/data/datasources/auth_local_datasource_mobile.dart';
import 'package:driver_app/features/bootstrap/data/datasources/auth_local_datasource_web.dart';
import 'package:driver_app/features/bootstrap/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/bootstrap/data/datasources/user_data_source.dart';
import 'package:driver_app/features/bootstrap/data/repositories/auth_repository_impl.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/clear_token.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/validate_token.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


final authRemoteDatasourceProvider = Provider<AuthRemoteDatasource>((ref) {
  return AuthRemoteDatasource(Env.authUrl);
});
final userDatasourceProvider = Provider<UserDataSource>((ref) {
  return UserDataSource(Env.authUrl);
});
final authLocalDatasourceWProvider = Provider<AuthLocalDatasource>((ref) {
  return kIsWeb
      ? AuthLocalDatasourceWeb()
      : AuthLocalDatasourceMobile(const FlutterSecureStorage());
});
final authRepositoryProvider = Provider<AppInitialRepository>((ref) {
  return AppInitialRepositoryImpl(
    ref.watch(authRemoteDatasourceProvider),
    ref.watch(authLocalDatasourceWProvider),
    ref.watch(userDatasourceProvider)
    );
});
final getUserProvider = Provider<GetUser>((ref) {
  return GetUser(ref.watch(authRepositoryProvider));
});
final loginUsecaseProvider = Provider<Login>((ref) {
  return Login(ref.watch(authRepositoryProvider));
});
final validateTokenProvider = Provider<ValidateToken>((ref) {
  return ValidateToken(ref.watch(authRepositoryProvider));
});
final getSavedTokenProvider = Provider<GetSavedToken>((ref) {
  return GetSavedToken(ref.watch(authRepositoryProvider));
});
final clearTokenProvider = Provider<ClearToken>((ref) {
  return ClearToken(ref.watch(authRepositoryProvider));
});
