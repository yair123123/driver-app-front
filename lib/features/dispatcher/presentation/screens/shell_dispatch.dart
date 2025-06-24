import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellDispatch extends StatefulWidget {
  final Widget child;
  const ShellDispatch({super.key, required this.child});

  @override
  State<ShellDispatch> createState() => _ShellDispatchState();
}

class _ShellDispatchState extends State<ShellDispatch> {
  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> navItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.add_circle_outline),
      label: 'נסיעה חדשה',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.history),
      label: 'סיכום',
    ),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateSelectedIndex();
  }

  void _updateSelectedIndex() {
    final location = GoRouterState.of(context).uri.toString();
    setState(() {
      _selectedIndex = location.contains('summary') ? 1 : 0;
    });
  }

  void _onTap(int index) {
    if (index == _selectedIndex) return;

    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go('/dispatcher/newRide');
        break;
      case 1:
        context.go('/dispatcher/summary');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTap,
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
