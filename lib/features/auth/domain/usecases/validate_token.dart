import 'package:driver_app/features/bootstrap/domain/repositories/app_initial_repository.dart';

class ValidateToken {
  final AppInitialRepository repository;
  ValidateToken(this.repository);

  Future<bool> call(String token) => repository.validateSavedToken(token);
}