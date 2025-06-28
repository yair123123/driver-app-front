import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/bootstrap/domain/repositories/settings_repository.dart';

class GetSettings {
  final SettingsRepository repository;

  GetSettings(this.repository);

  Future<Settings> call() async {
    return await repository.getSettings();
  }

}