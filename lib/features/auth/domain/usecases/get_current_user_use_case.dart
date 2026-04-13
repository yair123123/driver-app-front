import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entities/user.dart';
class GetCurrentUserUseCase {
  final AuthRepository repo;

  GetCurrentUserUseCase(this.repo);

  Future<Either<Failure,User>> call() {
    return repo.getMe();
  }
}
