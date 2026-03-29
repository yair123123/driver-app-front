
import 'package:driver_app/core/services/hive/hive_local_storage.dart';
import 'package:driver_app/features/app/data/models/app_prefs_model.dart';

class AppPrefsLocalDataSource {
  static const String boxName = 'app_state_box';
  static const String stateKey = 'app_state';

  final HiveDatasource<AppPrefsModel> _appStateStore;

  AppPrefsLocalDataSource(this._appStateStore);


  Future<void> save(AppPrefsModel appState) async {
    await _appStateStore.saveValue(appState);
  }

  Future<AppPrefsModel?> get() async {
    return _appStateStore.getValue();
  }

  Future<void> clear() async {
    await _appStateStore.clear();
  }
}
