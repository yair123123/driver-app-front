import 'package:driver_app/core/error/error_message_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../l10n/app_localizations.dart';
import '../notifiers/login_controller_notifier.dart';
import '../widgets/login_form.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginControllerProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F6),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: LoginForm(
            userNameController: TextEditingController(),
            idController: TextEditingController(),
            onLoginPressed:
                (u, p) =>
                    ref.read(loginControllerProvider.notifier).login(u, p),
            isLoading: loginState.isLoading,
            errorMessage:
                loginState.error != null
                    ? mapFailureToUiData(
                      loginState.error,
                      AppLocalizations.of(context)!,
                    ).title
                    : null,
          ),
        ),
      ),
    );
  }
}
