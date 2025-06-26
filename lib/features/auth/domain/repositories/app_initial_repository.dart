import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';

abstract class AppInitialRepository {
  Future<AuthUser> login(String username, String id);
  Future<bool> validateSavedToken(String token);
  Future<String?> getSavedToken();
  Future<void> clearToken();
  Future<User> getUser(String token);
}
