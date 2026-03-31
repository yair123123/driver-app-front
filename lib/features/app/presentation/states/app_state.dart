import 'package:driver_app/features/app/domain/entities/app_prefs.dart';
import 'package:driver_app/features/app/domain/entities/app_runtime.dart';

/// Composite app session state used by the legacy feature shell.
///
/// This is intentionally distinct from `core/app/app_state.dart`, which models
/// driver runtime entities (user/settings/activeRide).
class AppSessionState {
  final AppPrefs appPrefs;
  final AppRuntime appRuntime;

  const AppSessionState({required this.appPrefs, required this.appRuntime});

  AppSessionState copyWith({AppPrefs? appPrefs, AppRuntime? appRuntime}) {
    return AppSessionState(
      appPrefs: appPrefs ?? this.appPrefs,
      appRuntime: appRuntime ?? this.appRuntime,
    );
  }
}
