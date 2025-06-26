import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:driver_app/features/auth/domain/repositories/app_initial_repository.dart';

class Login {
  final AppInitialRepository authRepository;
  Login(this.authRepository);

  Future<AuthUser> call(String id ,String username) async{
    return await authRepository.login(id, username);
  }

}