import 'package:driver_app/features/settings/domain/entities/settings.dart';
import 'package:driver_app/features/settings/domain/repositories/settings_repository.dart';

class GetSettingsUseCase {
  final SettingsRepository repository;

  GetSettingsUseCase(this.repository);

  Future<Settings> call() {
    return repository.getSettings();
  }
}
