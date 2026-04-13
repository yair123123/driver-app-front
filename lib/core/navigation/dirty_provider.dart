import 'package:flutter_riverpod/flutter_riverpod.dart';

class DirtyController extends StateNotifier<bool> {
  DirtyController() : super(false);

  void markDirty() => state = true;

  void clear() => state = false;

  void set(bool value) => state = value;
}

final dirtyProvider = StateNotifierProvider<DirtyController, bool>((ref) {
  return DirtyController();
});
