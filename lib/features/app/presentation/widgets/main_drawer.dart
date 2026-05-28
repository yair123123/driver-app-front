import 'package:driver_app/core/constants/app_constants.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/features/app/presentation/widgets/bottom_navigation_bar.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainDrawer extends ConsumerWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppLocalizations.of(context)!;

    final isDispatcher =
        ref.watch(userProvider).valueOrNull?.isDispatcher == true;

    final tabs =
        isDispatcher
            ? DrawerItemsConfig.dispatcherItems
            : DrawerItemsConfig.driverItems;

    final location = GoRouterState.of(context).matchedLocation;

    final textStyle = context.textStyles.bodyLarge?.apply(
      color: Theme.of(context).colorScheme.secondary,
    );

    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppSpacing.mainDrawerPadding,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppConstants.appName,
                      style: context.textStyles.titleMedium?.apply(
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 16),

                    Expanded(
                      child: ListTileTheme(
                        horizontalTitleGap: 8,
                        child: ListView(
                          children:
                              tabs.map((tab) {
                                final isActive = _isActiveRoute(
                                  location: location,
                                  route: tab.route,
                                );

                                return ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  leading: Icon(
                                    isActive ? tab.activeIcon : tab.icon,
                                    color:
                                        isActive
                                            ? Theme.of(
                                              context,
                                            ).colorScheme.primary
                                            : Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                  ),
                                  title: Text(
                                    tab.label,
                                    style: textStyle?.copyWith(
                                      color:
                                          isActive
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.primary
                                              : Theme.of(
                                                context,
                                              ).colorScheme.secondary,
                                      fontWeight:
                                          isActive
                                              ? FontWeight.w700
                                              : FontWeight.normal,
                                    ),
                                  ),
                                  selected: isActive,
                                  onTap: () {
                                    Navigator.of(context).pop();

                                    if (tab.route == location) {
                                      return;
                                    }

                                    context.go(tab.route);
                                  },
                                );
                              }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isActiveRoute({required String location, required String route}) {
    return location == route || location.startsWith('$route/');
  }
}
