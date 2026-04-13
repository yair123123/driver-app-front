import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/features/auth/domain/entities/auth_session.dart';
import 'package:driver_app/features/auth/domain/entities/login_params.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:fpdart/fpdart.dart' show Either;

abstract class AuthRepository {
  Future<Either<Failure, AuthSession>> login(LoginParams params);
  Future<Either<Failure,User>> getMe();
}