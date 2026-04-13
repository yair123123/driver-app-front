import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/services/hive/hive_bootstrap_service.dart';
import 'package:driver_app/core/services/hive/hive_local_storage.dart';
import 'package:driver_app/features/app/data/datasources/app_prefs_local_data_source.dart';
import 'package:driver_app/features/app/data/models/app_prefs_model.dart';
import 'package:driver_app/features/app/data/repositories/app_prefs_repo_impl.dart';
import 'package:driver_app/features/app/domain/repositories/app_state_repo.dart';
import 'package:driver_app/features/app/domain/use_cases/get_local_app_state.dart';
import 'package:driver_app/features/app/domain/use_cases/save_local_app_state.dart';
import 'package:driver_app/features/app/presentation/notifiers/app_notifier.dart';
import 'package:driver_app/features/app/presentation/states/app_state.dart';

import '../../../../../core/services/notifications/parser/navigation_intent.dart';

final appPrefsLocalDataSourceProvider = Provider<AppPrefsLocalDataSource>((
  ref,
) {
  final hive = ref.watch(hiveBootstrapServiceProvider);

  return AppPrefsLocalDataSource(
    HiveDatasource<AppPrefsModel>(
      hive: hive,
      boxName: AppPrefsLocalDataSource.boxName,
      key: AppPrefsLocalDataSource.stateKey,
    ),
  );
});

final appStateRepositoryProvider = Provider<AppPrefsRepo>((ref) {
  return AppStateRepoImpl(ref.watch(appPrefsLocalDataSourceProvider));
});

final getLocalAppPrefsUseCaseProvider = Provider<GetLocalAppPrefsUseCase>((
  ref,
) {
  return GetLocalAppPrefsUseCase(ref.watch(appStateRepositoryProvider));
});

final saveLocalAppStateUseCaseProvider = Provider<SaveLocalAppPrefsUseCase>((
  ref,
) {
  return SaveLocalAppPrefsUseCase(ref.watch(appStateRepositoryProvider));
});

final appProvider = NotifierProvider<AppStateNotifier, AppSessionState>(
  AppStateNotifier.new,
);

class NavigationIntentNotifier extends StateNotifier<NavigationIntent?> {
  NavigationIntentNotifier() : super(null);

  void setIntent(NavigationIntent intent) {
    state = intent;
  }

  NavigationIntent? consume() {
    final current = state;
    state = null;
    return current;
  }

  void clear() {
    state = null;
  }
}

final navigationIntentProvider =
    StateNotifierProvider<NavigationIntentNotifier, NavigationIntent?>((ref) {
      ref.keepAlive();
      return NavigationIntentNotifier();
    });
