import 'package:flutter/material.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/core/icons/app_svg_icon.dart';
import 'package:driver_app/core/icons/custom_icon.dart';
import 'package:driver_app/core/router/app_router.dart';
import 'package:driver_app/core/constants/app_constants.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:go_router/go_router.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
                          children: [
                            _buildSvgTile(
                              context: context,
                              title: l10n.newsTopics,
                              textStyle: textStyle,
                              icon: CustomIcon.categories,
                              onTap: () => context.go( '/categories',
                              ),
                            ),
                            _buildSvgTile(
                              context: context,
                              title: l10n.manageNotifications,
                              textStyle: textStyle,
                              icon: CustomIcon.notification,
                              onTap: () => context.go('/manage_notifications',
                              ),
                            ),
                            _buildSvgTile(
                              context: context,
                              title: l10n.languageAndRegion,
                              textStyle: textStyle,
                              icon: CustomIcon.earth,
                              onTap: () => context.go('/lang_and_area',
                              ),
                            ),
                            _buildSvgTile(
                              context: context,
                              title: l10n.contactUs,
                              textStyle: textStyle,
                              icon: CustomIcon.message,
                              onTap: () => context.go('/contact_us',
                              ),
                            ),
                          ],
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

  ListTile _buildSvgTile({
    required BuildContext context,
    required String title,
    required CustomIcon icon,
    required VoidCallback onTap,
    TextStyle? textStyle,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      leading: AppSvgIcon(icon: icon),
      title: Text(title, style: textStyle),
      onTap: onTap,
    );
  }
}
