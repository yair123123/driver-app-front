import 'package:driver_app/features/bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import 'package:driver_app/features/bootstrap/presentation/states/boot_state.dart';
import 'package:driver_app/features/bootstrap/presentation/notifiers/bootstrap_ctrl.dart'; // Ensure this import provides bootStrapProvider
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appRouterNotifierProvider = Provider<AppRouterNotifier>(
  (ref) => AppRouterNotifier(ref),
);

class AppRouterNotifier extends ChangeNotifier {
  AppRouterNotifier(this.ref) {
    _subscription = ref.listen<AsyncValue<BootState>>(bootstrapCtrlProvider, (
      prev,
      next,
    ) {
      if (prev?.value != next.value) {
        notifyListeners();
      }
    }, fireImmediately: true);
  }
  final Ref ref;
  late final ProviderSubscription<AsyncValue<BootState>> _subscription;

  @override
  void dispose() {
    _subscription.close(); // מנקים את המאזין כשלא צריך
    super.dispose();
  }
}
