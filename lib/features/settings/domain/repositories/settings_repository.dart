import 'package:driver_app/features/settings/domain/entities/settings.dart';

abstract class SettingsRepository {
  Future<Settings> getSettings();
  Future<Settings> updateSettings(Settings settings);
}
