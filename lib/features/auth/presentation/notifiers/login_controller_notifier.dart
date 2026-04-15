import 'dart:async';
import 'package:driver_app/features/auth/presentation/states/login_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import '../../domain/entities/login_params.dart';
import '../providers/auth_provider.dart';
import 'creds_notifier.dart';

part 'login_controller_notifier.g.dart';

@Riverpod()
class LoginController extends _$LoginController {
  @override
  LoginState build() {
    return LoginState();
  }

  Future<void> login(String username, String password) async {
    state = state.copyWith(isLoading: true);

    try {
      final loginUseCase = ref.watch(authLoginUseCaseProvider);

      final result = await loginUseCase(
        LoginParams(username: username, password: password),
      );

      final session = result.match(
        (failure) => throw failure,
        (authSession) => authSession,
      );

      final persistResult = await ref
          .read(authSessionProvider.notifier)
          .setFromLogin(
            accessToken: session.accessToken!,
            refreshToken: session.refreshToken,
            expiresAt: session.expiresAt,
          );

      persistResult.match((failure) => throw failure, (_) => null);

      state = state.copyWith(isLoading: false);

      await ref.read(appBootstrapControllerProvider).onLoginSuccess();
    } catch (e, s) {
      print(e);
      state = state.copyWith(error: e as Failure, isLoading: false);
    }
  }
}
