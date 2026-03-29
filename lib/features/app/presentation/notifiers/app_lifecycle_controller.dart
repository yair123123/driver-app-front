import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLifecycleController extends ChangeNotifier
    with WidgetsBindingObserver {
  AppLifecycleState _state = AppLifecycleState.resumed;

  AppLifecycleState get state => _state;

  AppLifecycleController() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _state = state;
    notifyListeners();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

final appLifecycleControllerProvider =
    ChangeNotifierProvider<AppLifecycleController>((ref) {
  return AppLifecycleController();
});
