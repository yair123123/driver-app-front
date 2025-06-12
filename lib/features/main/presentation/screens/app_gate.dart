import 'package:driver_app/core/providers/auth_provider.dart';
import 'package:driver_app/features/main/presentation/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppGate extends ConsumerWidget {
  const AppGate({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = ref.watch(authProvider).token;
    final appState = ref.watch(appInitialProvider);
    final controller = ref.read(appInitialProvider.notifier);

    // אם עדיין לא מוכנים – לאתחל
    if (!appState.isReady && token != null) {
      controller.init(token);
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // אם אין טוקן – ננווט למסך התחברות
    if (token == null) {
      return const Scaffold(
        body: Center(child: Text("נא להתחבר")),
      );
    }

    // אם מוכן – לנווט למסך הראשי
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // נווט רק אם עדיין לא נווטת (כדי למנוע לולאה)
      final currentLocation = GoRouterState.of(context).matchedLocation;
      if (currentLocation != '/rides/list') {
        context.go('/rides/list');
      }
    });

    return const Scaffold(
      body: Center(child: Text("מעביר למסך הראשי...")),
    );
  }
}


