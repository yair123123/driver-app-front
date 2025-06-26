import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/repositories/app_initial_repository.dart';

class GetUser {
  final AppInitialRepository userRepository;
  GetUser(this.userRepository);

  Future<User> call(String token) async {
    return userRepository.getUser(token);
  }
}