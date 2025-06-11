import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsNotifier extends StateNotifier<AsyncValue<Settings>> {
  final GetSettings getSettings;
  final SetSettings setSettings;

  SettingsNotifier(this.getSettings, this.setSettings)
      : super(const AsyncValue.loading()) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    try {
      final settings = await getSettings();
      state = AsyncValue.data(settings);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> updateDarkMode(bool isDarkMode) async {
    state.whenOrNull(
      data: (currentSettings) async {
        try {
          state = const AsyncValue.loading();
          
          final updated = currentSettings.copyWith(isDarkMode: isDarkMode);
          await setSettings(updated);
          state = AsyncValue.data(updated);
        } catch (e, st) {
          state = AsyncValue.error(e, st);
        }
      },
    );
  }

  Future<void> updateDefaultStation(Station station) async {

    state.whenOrNull(
      data: (currentSettings) async {
        try {
          final updated = currentSettings.copyWith(defaultStation: station);
          await setSettings(updated);
          state = AsyncValue.data(updated);
        } catch (e, st) {
          state = AsyncValue.error(e, st);
        }
      },
    );
  }
}