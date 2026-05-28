import 'package:driver_app/core/router/app_router_notifier.dart';
import 'package:driver_app/core/router/app_routes.dart';
import 'package:driver_app/features/app/presentation/pages/app_shell.dart';
import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/auth/presentation/screens/login_screen.dart';
import 'package:driver_app/features/bootstrap/presentation/notifiers/bootstrap_ctrl.dart';
import 'package:driver_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/list_chats_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/driver_hub_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/rides_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/app/presentation/pages/force_update_page.dart';
import '../../features/bootstrap/presentation/screens/splash_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final appRouterNotifier = ref.read(appRouterNotifierProvider);
  final bootstrapController = ref.read(appBootstrapControllerProvider);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    refreshListenable: Listenable.merge([
      appRouterNotifier,
      bootstrapController,
    ]),
    redirect: (_, state) {
      final appRuntime = ref.read(appProvider).appRuntime;

      final forceUpdate = appRuntime.forceUpdate;
      if (forceUpdate) {
        return state.matchedLocation == AppRoutes.forceUpdate
            ? null
            : AppRoutes.forceUpdate;
      }

      final isAuth = appRuntime.isAuth;

      if (isAuth == null) {
        return AppRoutes.splash;
      }
      if (!isAuth) {
        return state.matchedLocation == AppRoutes.login
            ? null
            : AppRoutes.login;
      }

      if (state.matchedLocation == AppRoutes.login && isAuth) {
        return AppRoutes.ridesHub;
      }

      if (state.matchedLocation == AppRoutes.splash) {
        final res = switch (isAuth) {
          true => AppRoutes.ridesHub,
          false => AppRoutes.login,
        };
        return res;
      }
      return null;
    },
    routes: [
      GoRoute(path: AppRoutes.splash, builder: (_, __) => const SplashScreen()),
      GoRoute(path: AppRoutes.login, builder: (_, __) => const LoginScreen()),
      GoRoute(
        path: AppRoutes.forceUpdate,
        builder: (_, __) => const ForceUpdatePage(),
      ),
      ShellRoute(
        builder: (_, state, child) => AppShell(child: child, state: state),
        routes: [
          GoRoute(
            path: AppRoutes.ridesList,
            builder: (_, __) => const RidesListScreen(),
          ),
          GoRoute(
            path: AppRoutes.ridesHub,
            builder: (_, __) => const DriverHubScreen(),
          ),
          GoRoute(
            path: AppRoutes.chats,
            builder: (_, __) => const ListChatsScreen(),
            routes: [
              GoRoute(
                path: AppRoutes.chatDetails,
                builder:
                    (_, state) => ChatScreen(
                      chatId: state.pathParameters[RouteParams.chatId]!,
                    ),
              ),
            ],
          ),
          GoRoute(
            path: AppRoutes.settings,
            builder: (_, __) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
});
