import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/bootstrap/data/datasources/settings_local_data_source.dart';
import 'package:driver_app/features/bootstrap/domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSource dataSource;

  SettingsRepositoryImpl( this.dataSource);
  @override
  Future<Settings> getSettings() async {
    return await dataSource.getSettings();
  }

  @override
  Future<void> setSettings(Settings settings) async {
    await dataSource.setSettings(settings);
  }
}
