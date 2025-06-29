import 'package:driver_app/features/bootstrap/presentation/notifiers/login_controller_notifier.dart';
import 'package:driver_app/features/bootstrap/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            idController:      TextEditingController(),
            onLoginPressed: (u, p) =>
              ref.read(loginControllerProvider.notifier).login(u, p),
            isLoading: loginState.isLoading,
            errorMessage: loginState.hasError
                ? 'אירעה שגיאה בהתחברות'
                : null,
          ),
        ),
      ),
    );
  }
}
