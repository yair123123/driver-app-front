import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  bool error = false;
  void initialApp(){
  final notifier = ref.read(appInitialProvider.notifier);
  final state = ref.read(appInitialProvider);

    Future.microtask(() async {
      final bool authenticated = state.authenticated;

      if (!authenticated) {
        final res = await notifier.tryLoginWithToken();
        if (!res) {
          if (!mounted) return;
          context.go('login');
          return;
        }
      }
      final bool success = await notifier.initialApp();
      if (success) {
        context.go('rides/list');
      }
      setState(() {
        error = true;
      });
    });
  
  }
  void initState() {
    super.initState();
    initialApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Center(child: CircularProgressIndicator()),
          if (error) Expanded(child: Text("יארעה שגיאה")),
          if (error)
            Expanded(
              child: ElevatedButton(onPressed: initialApp, child: Text("נסה שוב")),
            ),
        ],
      ),
    );
  }
}
