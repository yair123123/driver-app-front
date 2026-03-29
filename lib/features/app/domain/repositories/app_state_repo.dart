import 'package:driver_app/features/app/domain/entities/app_prefs.dart';

abstract class AppPrefsRepo {
  Future<AppPrefs?> getLocalAppState();
  Future<void> saveLocalAppState(AppPrefs appState);
  Future<void> clearLocalAppState();
}
