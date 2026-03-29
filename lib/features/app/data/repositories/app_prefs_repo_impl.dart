
import 'package:driver_app/features/app/data/datasources/app_state_local_data_source.dart';
import 'package:driver_app/features/app/domain/entities/app_prefs.dart';
import 'package:driver_app/features/app/domain/mappers/app_prefs_mapper.dart';
import 'package:driver_app/features/app/domain/repositories/app_state_repo.dart';

class AppStateRepoImpl implements AppPrefsRepo {
  AppStateRepoImpl(this._localDataSource);

  final AppPrefsLocalDataSource _localDataSource;

  @override
  Future<void> clearLocalAppState() async {
    await _localDataSource.clear();
  }

  @override
  Future<AppPrefs?> getLocalAppState() async {
    final appPrefsModel = await _localDataSource.get();
    if (appPrefsModel == null) return null;

    return appPrefsModel.toEntity();
  }

  @override
  Future<void> saveLocalAppState(AppPrefs appState) async {
    await _localDataSource.save(appState.toModel());
  }
}
