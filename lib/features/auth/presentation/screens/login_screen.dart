import 'package:driver_app/features/auth/presentation/providers/app_initial_provider.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final userNameController = TextEditingController();
  final idController = TextEditingController();
  bool isLoading = false;
  String? errorMessage;

  Future<void> login() async {
    final notifier = ref.read(appInitialProvider.notifier);
    setState(() {
      isLoading = true;
      errorMessage = null;
    });
    final res =await notifier.loginWithCredentials(
      userNameController.text,
      idController.text,
    );
    if (res && mounted) {
      setState(() {
        isLoading = false;
      });
      context.go('/');
      return;
    }

    setState(() {
      errorMessage = 'אירעה שגיאה בהתחברות';
      isLoading = false;
    });
    ();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F6),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: LoginForm(
            userNameController: userNameController,
            idController: idController,
            onLoginPressed: login,
            isLoading: isLoading,
            errorMessage: errorMessage,
          ),
        ),
      ),
    );
  }
}
