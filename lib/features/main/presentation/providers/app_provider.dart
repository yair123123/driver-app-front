import 'package:driver_app/core/providers/settings_provider.dart';
import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/core/websocket/websocket_provider.dart';
import 'package:driver_app/features/main/presentation/notifiers/app_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appInitialProvider =
    StateNotifierProvider<AppInitNotifier, AppReadyState>(
      (ref) => AppInitNotifier(
        settingsNotifier: ref.read(settingsProvider.notifier),

        userNotifier: ref.read(userProvider.notifier),

        webSocketService: ref.read(webSocketServiceInstanceProvider),
      ),
    );
