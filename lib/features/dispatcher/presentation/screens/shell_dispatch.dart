import 'package:driver_app/features/dispatcher/presentation/screens/add_ride_screen.dart';
import 'package:driver_app/features/dispatcher/presentation/screens/summary_dispatches_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellDispatch extends StatefulWidget {
  const ShellDispatch({super.key});

  @override
  State<ShellDispatch> createState() => _ShellDispatchState();
}

class _ShellDispatchState extends State<ShellDispatch> {
  int _selectedIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final location = GoRouterState.of(context).uri.toString();
    if (location.contains('summary')) {
      _selectedIndex = 1;
    } else {
      _selectedIndex = 0;
    }
  }

  int getTabIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location.contains('summary')) return 1;
    return 0;
  }

  void _onTap(int index, BuildContext context) {
    if (index == 0) {
      context.go('/dispatcher/newRide');
    } else {
      context.go('/dispatcher/summary');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = getTabIndex(context);
    final List<Widget> screens = [
      const AddRideScreen(),
      const SummaryDispatchesScreen(),
    ];
    final List<BottomNavigationBarItem> navItems = [
      const BottomNavigationBarItem(icon: Icon(Icons.add), label: "הוסף"),
      const BottomNavigationBarItem(icon: Icon(Icons.list), label: "נסיעות"),
    ];
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => _onTap(index, context),
        type: BottomNavigationBarType.fixed,
        iconSize: 20.0,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: navItems,
      ),
    );
  }
}
