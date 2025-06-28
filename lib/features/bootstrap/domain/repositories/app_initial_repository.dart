import 'package:driver_app/features/bootstrap/domain/entities/credentials/auth_user.dart';
import 'package:driver_app/features/bootstrap/domain/entities/user/user.dart';

abstract class AppInitialRepository {
  Future<AuthUser> login(String username, String id);
  Future<bool> validateSavedToken(String token);
  Future<String?> getSavedToken();
  Future<void> clearToken();
  Future<User> getUser(String token);
}
