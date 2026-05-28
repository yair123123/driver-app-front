import 'package:driver_app/core/router/app_routes.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DrawerItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final String route;

  const DrawerItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.route,
  });
}

class DrawerItemsConfig {
  static const driverItems = <DrawerItem>[
    DrawerItem(
      label: '× ×¡×™×¢×•×ª',
      icon: Icons.local_taxi_outlined,
      activeIcon: Icons.local_taxi,
      route: AppRoutes.ridesList,
    ),
    DrawerItem(
      label: '×ž×¤×”',
      icon: Icons.map_outlined,
      activeIcon: Icons.map,
      route: AppRoutes.ridesHub,
    ),
    DrawerItem(
      label: '×¦×³××˜×™×',
      icon: Icons.chat_bubble_outline,
      activeIcon: Icons.chat_bubble,
      route: AppRoutes.chats,
    ),
    DrawerItem(
      label: '×”×’×“×¨×•×ª',
      icon: Icons.settings_outlined,
      activeIcon: Icons.settings,
      route: AppRoutes.settings,
    ),
  ];

  static const dispatcherItems = <DrawerItem>[
    DrawerItem(
      label: '×¡×™×›×•×',
      icon: Icons.dashboard_outlined,
      activeIcon: Icons.dashboard,
      route: AppRoutes.dispatcherSummary,
    ),
    DrawerItem(
      label: '× ×¡×™×¢×•×ª',
      icon: Icons.local_taxi_outlined,
      activeIcon: Icons.local_taxi,
      route: AppRoutes.ridesList,
    ),
    DrawerItem(
      label: '×ž×¤×”',
      icon: Icons.map_outlined,
      activeIcon: Icons.map,
      route: AppRoutes.ridesHub,
    ),
    DrawerItem(
      label: '×¦×³××˜×™×',
      icon: Icons.chat_bubble_outline,
      activeIcon: Icons.chat_bubble,
      route: AppRoutes.chats,
    ),
    DrawerItem(
      label: '×”×’×“×¨×•×ª',
      icon: Icons.settings_outlined,
      activeIcon: Icons.settings,
      route: AppRoutes.settings,
    ),
  ];
}

class HomeBottomNavigationBar extends ConsumerWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDispatcher =
        ref.watch(userProvider).valueOrNull?.isDispatcher == true;

    final tabs =
        isDispatcher
            ? DrawerItemsConfig.dispatcherItems
            : DrawerItemsConfig.driverItems;

    final location = GoRouterState.of(context).matchedLocation;
    final currentIndex = _indexFromLocation(location, tabs);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        final targetRoute = tabs[index].route;
        if (targetRoute == location) {
          return;
        }
        context.go(targetRoute);
      },
      items:
          tabs
              .map(
                (tab) => BottomNavigationBarItem(
                  icon: Icon(tab.icon),
                  activeIcon: Icon(tab.activeIcon),
                  label: tab.label,
                ),
              )
              .toList(),
    );
  }

  int _indexFromLocation(String location, List<DrawerItem> tabs) {
    for (var i = 0; i < tabs.length; i++) {
      final route = tabs[i].route;
      if (location == route || location.startsWith('$route/')) {
        return i;
      }
    }

    return 0;
  }
}
