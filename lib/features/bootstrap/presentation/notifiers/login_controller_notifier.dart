// features/login/presentation/login_controller.dart
import 'dart:async';

import 'package:driver_app/features/bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import 'package:driver_app/features/bootstrap/presentation/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller_notifier.g.dart';

@Riverpod()
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() {}

  Future<void> login(String user, String id) async {
    state = const AsyncLoading();
    try {
      await ref.read(loginUsecaseProvider)(user, id);
      state = const AsyncData(null);

      ref.invalidate(bootstrapCtrlProvider);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }
}
