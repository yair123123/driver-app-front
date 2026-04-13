import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/app/presentation/states/app_state.dart';

final appRouterNotifierProvider = Provider<AppRouterNotifier>(
      (ref) => AppRouterNotifier(ref),
);

class AppRouterNotifier extends ChangeNotifier {
  final Ref ref;
  late final ProviderSubscription<AppSessionState> _subscription;

  AppRouterNotifier(this.ref) {
    _subscription = ref.listen<AppSessionState>(
      appProvider,
          (prev, next) {
        if (prev != next) {
          notifyListeners();
        }
      },
      fireImmediately: true,
    );
  }

  @override
  void dispose() {
    _subscription.close();
    super.dispose();
  }
}