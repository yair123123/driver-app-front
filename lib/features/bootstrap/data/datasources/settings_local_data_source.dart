import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsLocalDataSource {
  Future<Settings> getSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool("isDarkMode") ?? false;
    return Settings(isDarkMode: isDarkMode);
  }

  Future<void> setSettings(Settings settings) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isDarkMode", settings.isDarkMode);
  }
}
