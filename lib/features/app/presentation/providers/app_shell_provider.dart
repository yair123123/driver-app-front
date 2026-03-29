import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class MainAppBarConfig {
  final bool showSave;
  final VoidCallback? onTap;

  const MainAppBarConfig({this.showSave = false, this.onTap});
}

final mainAppBarConfigProvider = StateProvider<MainAppBarConfig>(
  (ref) => const MainAppBarConfig(),
);
