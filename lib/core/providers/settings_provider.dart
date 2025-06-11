import 'package:driver_app/core/settings/data/data_source/settings_local_data_source.dart';
import 'package:driver_app/core/settings/data/settings_repository_impl.dart';
import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/core/settings/domain/repository/settings_repository.dart';
import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
import 'package:driver_app/core/settings/presentation/notifiers/settings_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsDatasource = Provider<SettingsLocalDataSource>((ref) {
  return SettingsLocalDataSource();
});

final settingsRepository = Provider<SettingsRepository>((ref) {
  return SettingsRepositoryImpl(ref.watch(settingsDatasource));
});

final getSettings = Provider<GetSettings>((ref) {
  return GetSettings(ref.watch(settingsRepository));
});
final setSettings = Provider<SetSettings>((ref) {
  return SetSettings(ref.watch(settingsRepository));
});

final settingsProvider =
    StateNotifierProvider<SettingsNotifier, AsyncValue<Settings?>>((ref) {
      return SettingsNotifier(ref.watch(getSettings), ref.watch(setSettings));
    });
