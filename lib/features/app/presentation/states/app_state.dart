import 'package:news_app/features/app/domain/entities/app_prefs.dart';
import 'package:news_app/features/app/domain/entities/app_runtime.dart';

class AppState {
  AppPrefs appPrefs;
  AppRuntime appRuntime;

  AppState({required this.appPrefs, required this.appRuntime});

  AppState copyWith({AppPrefs? appPrefs, AppRuntime? appRuntime}) {
    return AppState(
      appPrefs: appPrefs ?? this.appPrefs,
      appRuntime: appRuntime ?? this.appRuntime,
    );
  }
}
