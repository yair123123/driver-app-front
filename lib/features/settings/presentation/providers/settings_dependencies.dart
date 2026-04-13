import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/settings/data/datasources/settings_remote_data_source.dart';
import 'package:driver_app/features/settings/data/repositories/settings_repository_impl.dart';
import 'package:driver_app/features/settings/domain/repositories/settings_repository.dart';
import 'package:driver_app/features/settings/domain/usecases/get_settings_use_case.dart';
import 'package:driver_app/features/settings/domain/usecases/update_settings_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsRemoteDataSourceProvider = Provider<SettingsRemoteDataSource>((
  ref,
) {
  return SettingsRemoteDataSource(ref.watch(apiClientProvider));
});

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  return SettingsRepositoryImpl(ref.watch(settingsRemoteDataSourceProvider));
});

final getSettingsUseCaseProvider = Provider<GetSettingsUseCase>((ref) {
  return GetSettingsUseCase(ref.watch(settingsRepositoryProvider));
});

final updateSettingsUseCaseProvider = Provider<UpdateSettingsUseCase>((ref) {
  return UpdateSettingsUseCase(ref.watch(settingsRepositoryProvider));
});
