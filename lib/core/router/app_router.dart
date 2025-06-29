import 'package:driver_app/core/router/app_router_notifier.dart';
import 'package:driver_app/features/bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import 'package:driver_app/features/bootstrap/presentation/screens/login_screen.dart';
import 'package:driver_app/features/bootstrap/presentation/screens/main_app_screen.dart';
import 'package:driver_app/features/bootstrap/presentation/screens/settings_screen.dart';
import 'package:driver_app/features/bootstrap/presentation/screens/splash_screen.dart';
import 'package:driver_app/features/bootstrap/presentation/states/boot_state.dart';
import 'package:driver_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/list_chats_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/add_ride_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/shell_dispatch.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/rides_shell_screens.dart';
import 'package:driver_app/features/rides/presentation/screens/rides_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/stations_list_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/init',
    refreshListenable: ref.read(appRouterNotifierProvider),
    redirect: (_, state) {
      final bootState = ref.read(bootstrapCtrlProvider);
      if (!bootState.hasValue) return null;
      final boot = bootState.value!;
      return switch (boot) {
        Unauth() => state.matchedLocation == '/login' ? null : '/login',
        WarmingUp() => state.matchedLocation == '/init' ? null : '/init',
        Ready() =>state.matchedLocation == '/init' ? '/rides/list' : null,
        _ => null,
      };
    },
    routes: [
      // --- Init & Login ---
      GoRoute(path: '/init', builder: (_, __) => const InitScreen()),
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),

      // --- Shell עיקרי (טאבים) ---
      ShellRoute(
        builder: (_, __, child) => MainTabsShell(child: child),
        routes: [
          //  Rides shell
          ShellRoute(
            builder: (_, __, child) => RidesShellScreens(child: child),
            routes: [
              GoRoute(
                path: '/rides/list',
                builder: (_, __) => const StationsListScreen(),
                routes: [
                  GoRoute(
                    path: 'station/:id',
                    builder:
                        (_, state) => StationRidesScreen(
                          stationId: int.parse(state.pathParameters['id']!),
                        ),
                  ),
                ],
              ),
              GoRoute(
                path: '/rides/map',
                builder: (_, __) => const MapScreen(),
              ),
            ],
          ),
          //  Dispatcher shell
          ShellRoute(
            builder: (_, __, child) => ShellDispatch(child: child),
            routes: [
              GoRoute(
                path: '/dispatcher/summary',
                builder: (_, __) => const SummaryDispatchesScreen(),
              ),
              GoRoute(
                path: '/dispatcher/newRide',
                builder: (_, __) => const AddRideScreen(),
              ),
            ],
          ),
          //  Chats
          GoRoute(
            path: '/chats',
            builder: (_, __) => const ListChatsScreen(),
            routes: [
              GoRoute(
                path: ':chatId',
                builder:
                    (_, state) =>
                        ChatScreen(chatId: state.pathParameters['chatId']!),
              ),
            ],
          ),
          //  Settings
          GoRoute(
            path: '/settings',
            builder: (_, __) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
});
