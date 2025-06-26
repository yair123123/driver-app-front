// import 'package:driver_app/core/providers/settings_provider.dart';
// import 'package:driver_app/core/providers/user_provider.dart';
// import 'package:driver_app/core/websocket/websocket_provider.dart';
// import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
// import 'package:driver_app/features/main/presentation/notifiers/app_notifier.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final authInitListenerProvider = Provider<void>((ref) {
//   ref.listen(authProvider, (prev, next) =>ref.read(appInitialProvider.notifier).init(next));
//   });

// final appInitialProvider =
//     StateNotifierProvider<AppInitNotifier, AppReadyState>(
//       (ref) => AppInitNotifier(
//         settingsNotifier: ref.read(settingsProvider.notifier),

//         userNotifier: ref.read(userProvider.notifier),

//         webSocketService: ref.read(webSocketServiceInstanceProvider),
//       ),
//     );
