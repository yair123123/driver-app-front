import 'package:driver_app/features/settings/data/models/settings_model.dart';
import 'package:driver_app/features/settings/domain/entities/settings.dart';

extension SettingsModelMapper on SettingsModel {
  Settings toEntity() {
    return Settings(isDarkMode: isDarkMode, defaultStationId: defaultStationId);
  }
}

extension SettingsEntityMapper on Settings {
  SettingsModel toModel() {
    return SettingsModel(
      isDarkMode: isDarkMode,
      defaultStationId: defaultStationId,
    );
  }
}
