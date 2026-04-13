import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/auth/data/mappers/user_mapper.dart';
import 'package:driver_app/features/auth/data/models/login_request.dart';
import 'package:driver_app/features/auth/domain/entities/auth_session.dart';
import 'package:driver_app/features/auth/domain/entities/login_params.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../mappers/login_response_mapper.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, AuthSession>> login(LoginParams params) async {
    final res = await remote.login(
      LoginRequest(
        username: params.username,
        password: params.password,
      ),
    );

    return res.map((model) => model.toEntity());
  }
  @override
  Future<Either<Failure,User>> getMe() async {
    final userModel = await remote.getMe();
    return userModel.map((f) => f.toEntity());
  }
}
