import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/core/icons/app_svg_icon.dart';
import 'package:driver_app/features/app/presentation/widgets/main_app_bar.dart';
import 'package:driver_app/features/app/presentation/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:driver_app/core/media/media_utils.dart';
import 'package:driver_app/features/app/presentation/providers/app_shell_provider.dart';
import 'package:driver_app/core/router/app_router.dart';
import 'package:driver_app/core/services/notifications/parser/navigation_intent.dart';
import 'package:driver_app/features/app/presentation/pages/app_busy.dart';
import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/app/presentation/widgets/pop_scope_shell.dart';
import 'package:driver_app/features/system_messages/presentation/system_message_listener.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_spacing.dart';

import '../../../../core/icons/custom_icon.dart';
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
  static const String _homePath = '/home';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _flushIntentIfPossible();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<NavigationIntent?>(navigationIntentProvider, (prev, next) {
      if (next == null) return;
      _flushIntentIfPossible(explicitIntent: next);
    });

    final appBarConfig = ref.watch(mainAppBarConfigProvider);

    return SystemMessageListener(
      child: PopScopeShell(
        state: widget.state,
        child: Scaffold(
          key: AppShell.scaffoldKey,
          drawer: const MainDrawer(),
          appBar: MainAppBar(
            onTitlePressed: () =>
                ref.safeNavigate(context, navigate: context.goHome),
            showSaveButton: appBarConfig.showSave,
            onSavePressed: appBarConfig.onTap,

          ),
          body:ColoredBox(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: KeyedSubtree(
                    key: ValueKey(widget.state.uri.path),
                    child: widget.child,
                  ),
                ),

          bottomNavigationBar:  const HomeBottomNavigationBar() ,
        ),
      ),
    );
  }

  Widget? _buildLeading({
    required BuildContext context,
    required bool isHome,
    required bool isHomeNested,
    required bool groupPage,
  }) {
    if (isHomeNested || groupPage) {
      return IconButton(
        icon: AppSvgIcon(
          icon: CustomIcon.backRight,
          width: AppSpacing.lg,
          height: AppSpacing.lg,
        ),
        onPressed: () {
          ref.safeNavigate(
            context,
            navigate: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.goHome();
              }
            },
          );
        },
      );
    }

    return null;
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

  String? _safeMatchedLocation() {
    try {
      return GoRouter.of(context).state.matchedLocation;
    } catch (_) {
      return null;
    }
  }
}
