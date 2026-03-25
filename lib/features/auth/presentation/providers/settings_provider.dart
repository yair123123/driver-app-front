import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/bootstrap/data/datasources/settings_local_data_source.dart';
import 'package:driver_app/features/bootstrap/data/repositories/settings_repository_impl.dart';
import 'package:driver_app/features/bootstrap/domain/repositories/settings_repository.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/get_settings.dart';
import 'package:driver_app/features/bootstrap/domain/usecases/set_settings.dart';
import 'package:driver_app/features/bootstrap/presentation/notifiers/settings_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsDatasource = Provider<SettingsLocalDataSource>((ref) {
  return SettingsLocalDataSource();
});

final settingsRepository = Provider<SettingsRepository>((ref) {
  return SettingsRepositoryImpl(ref.watch(settingsDatasource));
});

final getSettingsProvider = Provider<GetSettings>((ref) {
  return GetSettings(ref.watch(settingsRepository));
});
final setSettingsProvider = Provider<SetSettings>((ref) {
  return SetSettings(ref.watch(settingsRepository));
});

final settingsProvider = StateNotifierProvider<SettingsNotifier, Settings>((
  ref,
) {
  return SettingsNotifier(
    ref.watch(getSettingsProvider),
    ref.watch(setSettingsProvider),
    ref.watch(appStateNotifierProvider.select((s) => s.settings!)),
    ref,
  );
});
