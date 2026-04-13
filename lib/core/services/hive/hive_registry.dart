import 'package:hive/hive.dart';
import 'package:driver_app/features/app/data/datasources/app_prefs_local_data_source.dart';
import 'package:driver_app/features/app/data/models/app_prefs_model.dart';
class HiveRegistryEntry {
  final int typeId;
  final TypeAdapter adapter;

  const HiveRegistryEntry(this.typeId, this.adapter);
}

typedef AdapterRegisterFn = void Function();

abstract final class HiveRegistry {
  static final List<AdapterRegisterFn> registerAll = [
    () => Hive.registerAdapter<AppPrefsModel>(AppPrefsModelAdapter()),
  ];

  // ===== All Boxes =====
  static final List<String> boxes = [
    AppPrefsLocalDataSource.boxName,
  ];

  HiveRegistry._();
}
