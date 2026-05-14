import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/core/services/notifications/parser/navigation_intent.dart';
import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/app/presentation/providers/app_shell_provider.dart';
import 'package:driver_app/features/app/presentation/widgets/main_app_bar.dart';
import 'package:driver_app/features/app/presentation/widgets/main_drawer.dart';
import 'package:driver_app/features/app/presentation/widgets/pop_scope_shell.dart';
import 'package:driver_app/features/driver_location/presentation/widget/driver_location_boostrap_listener.dart';
import 'package:driver_app/features/permissions_onboarding/presentation/widgets/permissions_onboarding_dialog.dart';
import 'package:driver_app/features/system_messages/presentation/system_message_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/navigation/safe_navigation.dart';
import '../../../auth/presentation/widgets/bottom_navigation_bar.dart';

class AppShell extends ConsumerStatefulWidget {
  const AppShell({super.key, required this.child, required this.state});

  final Widget child;
  final GoRouterState state;

  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  ConsumerState<AppShell> createState() => _AppShellState();
}

class _AppShellState extends ConsumerState<AppShell> {
  bool _permissionsOnboardingDialogOpen = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _flushIntentIfPossible();
      _showPermissionsOnboardingIfNeeded();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<NavigationIntent?>(navigationIntentProvider, (prev, next) {
      if (next == null) return;
      _flushIntentIfPossible(explicitIntent: next);
    });

    ref.listen(appProvider, (prev, next) {
      final shouldShow =
          next.appRuntime.isAuth == true &&
          !next.appPrefs.permissionsOnboardingCompleted;
      if (!shouldShow) return;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _showPermissionsOnboardingIfNeeded();
      });
    });

    final appBarConfig = ref.watch(mainAppBarConfigProvider);

    return DriverLocationBootstrapListener(
      child: SystemMessageListener(
        child: PopScopeShell(
          state: widget.state,
          child: Scaffold(
            key: AppShell.scaffoldKey,
            drawer: const MainDrawer(),
            appBar: MainAppBar(
              onTitlePressed:
                  () => ref.safeNavigate(context, navigate: context.goHome),
              showSaveButton: appBarConfig.showSave,
              onSavePressed: appBarConfig.onTap,
            ),
            body: ColoredBox(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: KeyedSubtree(
                key: ValueKey(widget.state.uri.path),
                child: widget.child,
              ),
            ),
      
            bottomNavigationBar: const HomeBottomNavigationBar(),
          ),
        ),
      ),
    );
  }

  void _flushIntentIfPossible({NavigationIntent? explicitIntent}) {
    final appState = ref.read(appProvider);
    if (appState.appRuntime.isAuth != true) return;

    final intent = explicitIntent ?? ref.read(navigationIntentProvider);
    if (intent == null) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final current = _safeMatchedLocation();
      if (current == null) {
        _flushIntentIfPossible(explicitIntent: intent);
        return;
      }

      ref.read(navigationIntentProvider.notifier).consume();

      if (current == intent.location) return;
      context.go(intent.location);
    });
  }

  void _showPermissionsOnboardingIfNeeded() {
    if (_permissionsOnboardingDialogOpen) return;

    final appState = ref.read(appProvider);
    if (appState.appRuntime.isAuth != true) return;
    if (appState.appPrefs.permissionsOnboardingCompleted) return;

    _permissionsOnboardingDialogOpen = true;
    showPermissionsOnboardingDialog(context).whenComplete(() {
      if (!mounted) return;
      _permissionsOnboardingDialogOpen = false;
    });
  }

  String? _safeMatchedLocation() {
    try {
      return GoRouter.of(context).state.matchedLocation;
    } catch (_) {
      return null;
    }
  }
}
