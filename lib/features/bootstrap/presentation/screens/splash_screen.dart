import 'package:driver_app/features/bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import 'package:driver_app/features/bootstrap/presentation/states/boot_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InitScreen extends ConsumerWidget {
  const InitScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boot = ref.watch(bootstrapCtrlProvider);

    return Scaffold(
      body: Center(
        child: boot.when(
          loading: () => const CircularProgressIndicator(),
          data:
              (st) => switch (st) {
                WarmingUp(step: final s) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(height: 12),
                    Text(_label(s)),
                  ],
                ),
                Error(message: final m) => Column(
                  children: [
                    Text('שגיאה: $m'),
                    TextButton(
                      onPressed: () => ref.refresh(bootstrapCtrlProvider),
                      child: const Text('נסה שוב'),
                    ),
                  ],
                ),
                _ => const CircularProgressIndicator(),
              },
          error: (e, _) => Text('שגיאה: $e'),
        ),
      ),
    );
  }

  String _label(BootStep s) => switch (s) {
    BootStep.socket => 'מתחבר ל־WebSocket…',
    BootStep.settings => 'מוריד הגדרות…',
    BootStep.user => 'טוען משתמש…',
  };
}
