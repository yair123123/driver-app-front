import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';

abstract class SettingsRepository {
  Future<Settings> getSettings(); 
  Future<void> setSettings(Settings settings);
}