import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/driver_location_dependencies.dart';


class DriverLocationBootstrapListener extends ConsumerStatefulWidget {
  final Widget child;

  DriverLocationBootstrapListener({required this.child, super.key});

  @override
  _DriverLocationBootstrapListenerState createState() =>
      _DriverLocationBootstrapListenerState();
}

class _DriverLocationBootstrapListenerState
    extends ConsumerState<DriverLocationBootstrapListener> {
  bool _started = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _tryToTrackLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(appProvider, (prev, next) {
      final wasAuth = prev?.appRuntime.isAuth == true;
      final isAuth = next.appRuntime.isAuth == true;
      if (wasAuth && !isAuth) {
        _stopTrackLocation();
      }
      if (!wasAuth && isAuth) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _tryToTrackLocation();
        });
      }
    });
    return widget.child;
  }

  _tryToTrackLocation() {
    if (_started) return;
    final appState = ref.read(appProvider);

    if (appState.appRuntime.isAuth != true) return;
    _started = true;

    ref.read(driverLocationTrackingControllerProvider.notifier).start();
  }

  _stopTrackLocation() {
    _started = false;

    ref.read(driverLocationTrackingControllerProvider.notifier).stop();
  }
}
