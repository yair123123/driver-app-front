import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/get_settings.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/set_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class SettingsNotifier extends StateNotifier<Settings?> {
  final GetSettings getSettings;
  final SetSettings setSettings;

  SettingsNotifier(this.getSettings, this.setSettings) : super(null);

  Future<void> fetchSettings() async {
    try {
      final settings = await getSettings();
      state = settings;
    } catch (e) {
      state = null;
      rethrow;
    }
  }

  Future<void> updateDarkMode(bool isDarkMode) async {
    if (state == null) return;
    final updated = state!.copyWith(isDarkMode: isDarkMode);
    state = updated;
    await setSettings(updated);
  }

  Future<void> updateDefaultStation(Station station) async {
    if (state == null) return;
    final updated = state!.copyWith(defaultStation: station);
    state = updated;
    await setSettings(updated);
  }
}
