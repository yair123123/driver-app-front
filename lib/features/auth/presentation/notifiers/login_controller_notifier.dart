import 'dart:async';
import 'package:driver_app/features/auth/presentation/states/login_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import '../providers/auth_provider.dart';

part 'login_controller_notifier.g.dart';

@Riverpod()
class LoginController extends _$LoginController {
  @override
  LoginState build() {
    return LoginState();
  }

  Future<void> login(String user, String id) async {
    state = state.copyWith(isLoading: true);

    try {
      await ref.read(loginUseCaseProvider)(user, id);
      state = state.copyWith(isLoading: false);

      await ref.read(appBootstrapControllerProvider).onLoginSuccess();
    } catch (e, s) {
      print(e);
      state = state.copyWith(error: e as Failure, isLoading: false);
    }
  }
}
