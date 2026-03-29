import 'package:hive/hive.dart';

import '../../../../core/services/hive/hive_type_ids.dart';

part 'app_prefs_model.g.dart';

@HiveType(typeId: HiveTypeIds.appPrefsModel)
class AppPrefsModel {
  @HiveField(0)
  final bool darkMode;

  const AppPrefsModel({this.darkMode = false});

  AppPrefsModel copyWith({bool? darkMode}) {
    return AppPrefsModel(darkMode: darkMode ?? this.darkMode);
  }
}
