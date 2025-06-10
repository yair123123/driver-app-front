import 'package:driver_app/core/settings/presentation/screens/settings_screen.dart';
import 'package:driver_app/features/auth/presentation/screens/login_screen.dart';
import 'package:driver_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/list_chats_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/add_ride_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/shell_dispatch.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:driver_app/features/main/presentation/screens/main_app_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/rides_screens.dart';
import 'package:driver_app/features/rides/presentation/screens/station_rides_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/stations_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorState =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellMainNavigatorState =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellRidesNavigatorState =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellDispatchNavigatorState =
    GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorState,
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", builder: (context, state) => const SplashScreen()),
      GoRoute(path: "/login", builder: (context, state) => const LoginScreen()),
      ShellRoute(
        navigatorKey: _shellMainNavigatorState,
        builder: (context, state, child) => MainTabsShell(child: child),
        routes: [
          ShellRoute(
            navigatorKey: _shellRidesNavigatorState,
            builder: (context, state, child) => RidesScreens(),
            routes: [
              GoRoute(
                path: '/rides/list',
                builder: (context, state) => const StationsListScreen(),
                routes: [
                  GoRoute(
                    path: 'group/:groupId',
                    builder: (context, state) {
                      final groupId = state.pathParameters['groupId'];
                      return GroupChatScreen(groupId: int.parse(groupId!));
                    },
                  ),
                ],
              ),
              GoRoute(
                path: '/rides/map',
                builder: (context, state) => const MapScreen(),
              ),
            ],
          ),
          ShellRoute(
            navigatorKey: _shellDispatchNavigatorState,
            builder: (context, state, child) => (ShellDispatch()),
            routes: [
              GoRoute(
                path: '/dispatcher/summary',
                builder: (context, state) => const SummaryDispatchesScreen(),
              ),
              GoRoute(
                path: '/dispatcher/newRide',
                builder: (context, state) => const AddRideScreen(),
              ),
            ],
          ),
          GoRoute(
            path: '/chats',
            builder: (context, state) => const ListChatsScreen(),
            routes: [
              GoRoute(
                parentNavigatorKey: _rootNavigatorState,
                path: ':chatId',
                builder: (context, state) {
                  final chatId = state.pathParameters['chatId'];
                  return ChatScreen(chatId: chatId!);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
});
