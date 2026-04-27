import 'package:driver_app/core/router/app_router_notifier.dart';
import 'package:driver_app/features/app/presentation/pages/app_shell.dart';
import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/auth/presentation/screens/login_screen.dart';
import 'package:driver_app/features/bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import 'package:driver_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/list_chats_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/add_ride_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/shell_dispatch.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:driver_app/features/ride_hub/presentation/screens/driver_hub_screen.dart';
import 'package:driver_app/features/ride_hub/presentation/screens/station_ride_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/app/presentation/pages/force_update_page.dart';
import '../../features/bootstrap/presentation/screens/splash_screen.dart';
import '../../features/ride_hub/presentation/screens/stations_overview_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final appRouterNotifier = ref.read(appRouterNotifierProvider);
  final bootstrapController = ref.read(appBootstrapControllerProvider);

  return GoRouter(
    initialLocation: '/init',
    refreshListenable: Listenable.merge([
      appRouterNotifier,
      bootstrapController,
    ]),
    redirect: (_, state) {
      final appRuntime = ref.read(appProvider).appRuntime;

      final forceUpdate = appRuntime.forceUpdate;
      if (forceUpdate) {
        return state.matchedLocation == '/force_update'
            ? null
            : '/force_update';
      }

      final isAuth = appRuntime.isAuth;

      if (isAuth == null) {
        return '/';
      }
      if (state.matchedLocation == '/login' && isAuth) {
        return '/rides/list';
      }
      if (!isAuth) {
        return state.matchedLocation == '/login' ? null : '/login';
      }

      if (state.matchedLocation == '/') {
        final res = switch (isAuth) {
          true => '/rides/list',
          false => '/login',
        };
        return res;
      }
      return null;
    },
    routes: [
      GoRoute(path: '/', builder: (_, __) => const SplashScreen()),
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(
        path: '/force_update',
        builder: (_, __) => const ForceUpdatePage(),
      ),
      ShellRoute(
        builder: (_, state, child) => AppShell(child: child, state: state),
        routes: [
          GoRoute(
            path: '/rides/list',
            builder: (_, __) => const StationsOverviewScreen(),
            routes: [
              GoRoute(
                path: 'station/:id',
                builder:
                    (_, state) => StationRideListScreen(
                      stationId: int.parse(state.pathParameters['id']!),
                    ),
              ),
            ],
          ),
          GoRoute(path: '/rides/hub', builder: (_, __) => const DriverHubScreen()),
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
          GoRoute(
            path: '/settings',
            builder: (_, __) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
});
