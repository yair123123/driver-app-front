import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app/features/permission/controllers/notification_permission_controller.dart';

void useNotificationPermissionSync(WidgetRef ref) {
  useEffect(() {
    final listener = AppLifecycleListener(
      onStateChange: (state) async {
        if (state == AppLifecycleState.resumed) {
          await ref.read(notificationPermissionProvider.notifier).refresh();
        }
      },
    );
    return listener.dispose;
  }, const []);
}
