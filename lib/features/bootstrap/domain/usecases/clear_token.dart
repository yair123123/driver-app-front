import 'package:driver_app/features/bootstrap/domain/repositories/app_initial_repository.dart';

class ClearToken {
  AppInitialRepository repository;

  ClearToken(this.repository);

  Future<void> call() async {
    return await repository.clearToken();
  }
}