import 'package:driver_app/features/auth/domain/entities/auth_session.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entities/login_params.dart';
class LoginUseCase {
  final AuthRepository repo;

  LoginUseCase(this.repo);

  Future<Either<Failure,AuthSession>> call(LoginParams params) {
    return repo.login(params);
  }
}
