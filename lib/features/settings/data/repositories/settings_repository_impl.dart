import 'package:driver_app/features/settings/data/datasources/settings_remote_data_source.dart';
import 'package:driver_app/features/settings/data/mappers/settings_mapper.dart';
import 'package:driver_app/features/settings/domain/entities/settings.dart';
import 'package:driver_app/features/settings/domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsRemoteDataSource remoteDataSource;

  SettingsRepositoryImpl(this.remoteDataSource);

  @override
  Future<Settings> getSettings() async {
    final model = await remoteDataSource.getSettings();
    return model.toEntity();
  }

  @override
  Future<Settings> updateSettings(Settings settings) async {
    final model = await remoteDataSource.updateSettings(settings.toModel());
    return model.toEntity();
  }
}
