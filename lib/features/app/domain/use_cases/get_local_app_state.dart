import 'package:driver_app/features/app/domain/entities/app_prefs.dart';
import 'package:driver_app/features/app/domain/repositories/app_state_repo.dart';

class GetLocalAppPrefsUseCase {
  GetLocalAppPrefsUseCase(this._repository);

  final AppPrefsRepo _repository;

  Future<AppPrefs?> call() {
    return _repository.getLocalAppState();
  }
}
