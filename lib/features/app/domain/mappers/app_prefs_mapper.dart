
import 'package:driver_app/features/app/data/models/app_prefs_model.dart';
import 'package:driver_app/features/app/domain/entities/app_prefs.dart';

extension AppPrefsMapper on AppPrefs {
  toModel() {
    return AppPrefsModel(
    );
  }
}

extension AppPrefsModelMapper on AppPrefsModel {
  AppPrefs toEntity() {


    return AppPrefs(
    );
  }
}
