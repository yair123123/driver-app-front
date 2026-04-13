import 'package:driver_app/features/settings/domain/entities/settings.dart';
import 'package:driver_app/features/settings/domain/repositories/settings_repository.dart';

class UpdateSettingsUseCase {
  final SettingsRepository repository;

  UpdateSettingsUseCase(this.repository);

  Future<Settings> call(Settings settings) {
    return repository.updateSettings(settings);
  }
}
