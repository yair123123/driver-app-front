import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/core/providers/auth_provider.dart';
import 'package:driver_app/core/settings/presentation/screens/settings_screen.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_state.dart';
import 'package:driver_app/features/auth/presentation/screens/login_screen.dart';
import 'package:driver_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:driver_app/features/chat/presentation/screens/list_chats_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/add_ride_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/shell_dispatch.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:driver_app/features/main/presentation/notifiers/app_notifier.dart';
import 'package:driver_app/features/main/presentation/providers/app_provider.dart';
import 'package:driver_app/features/main/presentation/screens/main_app_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/map_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/rides_shell_screens.dart';
import 'package:driver_app/features/rides/presentation/screens/station_rides_screen.dart';
import 'package:driver_app/features/rides/presentation/screens/stations_list_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    redirect: (context, state) {
      final auth = ref.watch(authProvider);
      final init = ref.watch(appInitialProvider.select((e) => e.status));

      if (auth.authStatus == AuthStatus.unauthenticated) {
        print('redirect to /login');
        return '/login';
      }
      if (auth.authStatus == AuthStatus.authenticated &&
          init == AppReadyStatus.loading) {
        print('redirect to /splash');
        return '/';
      }
      if (auth.authStatus == AuthStatus.authenticated &&
          init == AppReadyStatus.error) {
        print('redirect to /error');
        return '/error';
      }
      if (auth.authStatus == AuthStatus.authenticated &&
          init == AppReadyStatus.ready &&
          (state.matchedLocation == '/login' || state.matchedLocation == '/')) {
        print('redirect to /rides/list');
        return '/rides/list';
      }
      print("no redirect stay ${state.matchedLocation} ");
      return null;
    },

    initialLocation: "/",
    routes: [
      GoRoute(path: "/", builder: (context, state) => const SplashScreen()),
      GoRoute(path: "/login", builder: (context, state) => const LoginScreen()),
      GoRoute(path: "/error", builder: (context, state) => const ErrorScreen()),
      ShellRoute(
        builder: (context, state, child) => MainTabsShell(child: child),
        routes: [
          ShellRoute(
            builder: (context, state, child) => RidesShellScreens(child: child,),
            routes: [
              GoRoute(
                path: '/rides/list',
                builder: (context, state) => const StationsListScreen(),
                routes: [
                  GoRoute(
                    path: 'station/:id',
                    builder:
                        (context, state) => StationRidesScreen(
                          stationId: int.parse(state.pathParameters['id']!),
                        ),
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
            builder: (context, state, child) => (ShellDispatch(child:child)),
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
