import 'package:driver_app/features/app/domain/entities/app_prefs.dart';
import 'package:driver_app/features/app/domain/repositories/app_state_repo.dart';

class SaveLocalAppPrefsUseCase {
  SaveLocalAppPrefsUseCase(this._repository);

  final AppPrefsRepo _repository;

  Future<void> call(AppPrefs appState) {
    return _repository.saveLocalAppState(appState);
  }
}
