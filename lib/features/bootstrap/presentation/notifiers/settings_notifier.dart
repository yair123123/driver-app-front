import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/get_settings.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/set_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class SettingsNotifier extends StateNotifier<Settings> {
  Ref ref;
  final GetSettings getSettings;
  final SetSettings setSettings;
  final Settings initialSettings;
  SettingsNotifier(this.getSettings, this.setSettings,this.initialSettings,this.ref) : super(initialSettings);

  Future<void> updateDarkMode(bool isDarkMode) async {
    final updated = state.copyWith(isDarkMode: isDarkMode);
    ref.read(appStateNotifierProvider.notifier).setSettings(state);
    state = updated;
    setSettings(updated);
  }

  Future<void> updateDefaultStation(Station station) async {
    final updated = state.copyWith(defaultStationId: station.station_id);
    state = updated;
    ref.read(appStateNotifierProvider.notifier).setSettings(state);
    setSettings(updated);
  }
}
