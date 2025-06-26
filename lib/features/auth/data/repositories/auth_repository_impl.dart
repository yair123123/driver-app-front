import 'package:driver_app/features/auth/data/datasources/auth_class_datasource.dart';
import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/auth/data/datasources/user_data_source.dart';
import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/repositories/app_initial_repository.dart';

class AuthRepositoryImpl  implements AppInitialRepository{
  final AuthRemoteDatasource remote;
  final AuthLocalDatasource local;
  final UserDataSource userDataSource;
  AuthRepositoryImpl(this.remote,this.local,this.userDataSource);
  @override
  Future<User> getUser(String token) async {
    return await userDataSource.getUser(token);
  }
  @override
  Future<AuthUser> login(String username, String id) async {

    AuthUser user =  await remote.login(username, id);
    local.saveToken(user.jwt_token);
    return user;
  }
  @override
  Future<bool> validateSavedToken(String token) async {
    return await remote.validateToken(token);
  }
  @override
  Future<String?> getSavedToken() async {
    return await local.getToken();
  }
  @override
  Future<void> clearToken() async {
    return await local.clearToken();
  }
}