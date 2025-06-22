import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class RidesShellScreens extends StatelessWidget {
  const RidesShellScreens({super.key, required this.child});
  final Widget child;

  int _tabIndex(BuildContext ctx) =>
      GoRouterState.of(ctx).matchedLocation.contains('/map') ? 1 : 0;

  void _onTap(BuildContext ctx, int i) =>
      ctx.go(i == 0 ? '/rides/list' : '/rides/map');

  @override
  Widget build(BuildContext context) {
    final tabs = const [
      BottomNavigationBarItem(icon: Icon(Icons.list), label: 'רשימה'),
      BottomNavigationBarItem(icon: Icon(Icons.map),  label: 'מפה'),
    ];

    return Scaffold(
      body: child,                                  
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex(context),
        onTap: (i) => _onTap(context, i),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: tabs,
      ),
    );
  }
}
