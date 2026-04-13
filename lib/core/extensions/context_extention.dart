import 'package:driver_app/features/app/presentation/providers/home_tab_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


extension ContextTextTheme on BuildContext {
  TextTheme get textStyles => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
extension HomeNavigationExtension on BuildContext {
  void goHome() {
    final container = ProviderScope.containerOf(this, listen: false);
    container.read(homeTabIndexProvider.notifier).state = homeFeedTabIndex;
    go('/home');
  }
}