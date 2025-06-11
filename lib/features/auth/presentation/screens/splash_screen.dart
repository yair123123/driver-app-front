import 'package:driver_app/core/providers/auth_provider.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authProvider, (prev, next) {
      switch (next.splashStatus) {
        case AuthSplashStatus.loading:
          
          break;
        case AuthSplashStatus.success:
          context.go('/rides/list');
          return ;
        case AuthSplashStatus.needLogin:
          context.go('/login');
          return ;
        case AuthSplashStatus.error:
          showDialog(
            context: context,
            builder:
                (context) => AlertDialog(
                  title: const Text("שגיאת רשת"),
                  content: Text(next.errorMessage ?? "שגיאה לא ידועה"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        context.go("/login");
                      },
                      child: const Text("אישור"),
                    ),
                  ],
                ),
          );
      }
    });
        return const Scaffold(
      body: Center(child: CircularProgressIndicator(color: Color(0),)),
    );

  }
}
