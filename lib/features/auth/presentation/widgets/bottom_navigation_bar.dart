import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class HomeTabItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final String route;

  const HomeTabItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.route,
  });
}

class HomeTabsConfig {
  static const driverTabs = <HomeTabItem>[
    HomeTabItem(
      label: 'נסיעות',
      icon: Icons.local_taxi_outlined,
      activeIcon: Icons.local_taxi,
      route: '/rides/list',
    ),
    HomeTabItem(
      label: 'מפה',
      icon: Icons.map_outlined,
      activeIcon: Icons.map,
      route: '/rides/map',
    ),
    HomeTabItem(
      label: 'צ׳אטים',
      icon: Icons.chat_bubble_outline,
      activeIcon: Icons.chat_bubble,
      route: '/chats',
    ),
    HomeTabItem(
      label: 'הגדרות',
      icon: Icons.settings_outlined,
      activeIcon: Icons.settings,
      route: '/settings',
    ),
  ];

  static const dispatcherTabs = <HomeTabItem>[
    HomeTabItem(
      label: 'סיכום',
      icon: Icons.dashboard_outlined,
      activeIcon: Icons.dashboard,
      route: '/dispatcher/summary',
    ),
    HomeTabItem(
      label: 'נסיעות',
      icon: Icons.local_taxi_outlined,
      activeIcon: Icons.local_taxi,
      route: '/rides/list',
    ),
    HomeTabItem(
      label: 'מפה',
      icon: Icons.map_outlined,
      activeIcon: Icons.map,
      route: '/rides/map',
    ),
    HomeTabItem(
      label: 'צ׳אטים',
      icon: Icons.chat_bubble_outline,
      activeIcon: Icons.chat_bubble,
      route: '/chats',
    ),
    HomeTabItem(
      label: 'הגדרות',
      icon: Icons.settings_outlined,
      activeIcon: Icons.settings,
      route: '/settings',
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
            ? HomeTabsConfig.dispatcherTabs
            : HomeTabsConfig.driverTabs;

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

  int _indexFromLocation(String location, List<HomeTabItem> tabs) {
    for (var i = 0; i < tabs.length; i++) {
      final route = tabs[i].route;
      if (location == route || location.startsWith('$route/')) {
        return i;
      }
    }

    return 0;
  }
}
