import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/features/rides/presentation/widgets/active_ride_banner.dart';
import 'package:driver_app/widgets/driver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainTabsShell extends ConsumerStatefulWidget {
  final Widget child;
  const MainTabsShell({super.key, required this.child});

  @override
  ConsumerState<MainTabsShell> createState() => _MainTabsShellState();
}

class _MainTabsShellState extends ConsumerState<MainTabsShell> {
  void _onTap(int index, List<String> routes, BuildContext context) {
    context.go(routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> routes = [
      "/rides/list",
      "/dispatcher/summary",
      "/chats",
      "/settings",
    ];
    final user = ref.watch(userProvider)!;
    final List<BottomNavigationBarItem> navItems = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.local_taxi),
        label: "נסיעות",
      ),
      if (user.is_dispatcher)
        const BottomNavigationBarItem(
          icon: Icon(Icons.manage_accounts),
          label: "סדרנות",
        ),
      const BottomNavigationBarItem(icon: Icon(Icons.chat), label: "צ'אט"),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "הגדרות",
      ),
    ];

    int currentIndex = 0;
    final currentLocation = GoRouterState.of(context).uri.toString();

    if (currentLocation.startsWith("/rides")) {
      currentIndex = 0;
    } else if (user.is_dispatcher &&
        currentLocation.startsWith("/dispatcher")) {
      currentIndex = 1;
    } else if (currentLocation.startsWith("/chats")) {
      currentIndex = user.is_dispatcher ? 2 : 1;
    } else if (currentLocation.startsWith("/settings")) {
      currentIndex = user.is_dispatcher ? 3 : 2;
    }

    return Scaffold(
      appBar: DriverAppBar(user: user),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ActiveRideBanner(), Expanded(child: widget.child)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: navItems,
        onTap: (index) => _onTap(index, routes, context),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
