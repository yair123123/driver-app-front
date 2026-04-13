import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:driver_app/core/navigation/safe_navigation.dart';
import 'package:driver_app/core/router/app_router.dart';
import 'package:driver_app/features/app/presentation/pages/app_shell.dart';
import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/app/presentation/providers/home_tab_index_provider.dart';

import '../../../../core/extensions/context_extention.dart';

class PopScopeShell extends ConsumerWidget {
  static const String _homePath = '/home';

  const PopScopeShell({super.key, required this.child, required this.state});

  final Widget child;
  final GoRouterState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBusy = ref.watch(appProvider.select((a) => a.appRuntime.appBusy));
    final isAppBusy = appBusy.reason != null;

    final currentTab = ref.watch(homeTabIndexProvider);
    final path = state.uri.path;

    final isHome = path == _homePath && !isAppBusy;
    final isHomeNested = path.startsWith('$_homePath/') && !isHome;
    final isOnFeed = currentTab == homeFeedTabIndex;

    final scaffoldState = AppShell.scaffoldKey.currentState;
    final isDrawerOpen = scaffoldState?.isDrawerOpen ?? false;
    final isEndDrawerOpen = scaffoldState?.isEndDrawerOpen ?? false;

    final shouldExitApp =
        isHome && isOnFeed && !isDrawerOpen && !isEndDrawerOpen;

    void handleBack({required bool didPop}) {
      if (didPop) return;

      final scaffoldState = AppShell.scaffoldKey.currentState;
      if (scaffoldState != null) {
        if (scaffoldState.isDrawerOpen) {
          scaffoldState.closeDrawer();
          return;
        }
        if (scaffoldState.isEndDrawerOpen) {
          scaffoldState.closeEndDrawer();
          return;
        }
      }

      if (isHomeNested) {
        context.pop();
        ref.read(homeTabIndexProvider.notifier).state = homeFeedTabIndex;
        return;
      }

      if (isHome && !isOnFeed) {
        ref.read(homeTabIndexProvider.notifier).state = homeFeedTabIndex;
        return;
      }

      ref.safeNavigate(context, navigate: context.goHome);
    }

    return PopScope(
      canPop: shouldExitApp,
      onPopInvokedWithResult: (didPop, _) => handleBack(didPop: didPop),
      child: child,
    );
  }
}