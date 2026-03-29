import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/settings/presentation/widgets/navigation_button.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/theme/app_spacing.dart';
import 'package:news_app/theme/app_typography.dart';

class LangAndAreaPage extends StatelessWidget {
  const LangAndAreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: AppSpacing.managePagesPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.languageAndRegion,
            style: AppTypography.managmentTitle,
          ),
          SizedBox(height: AppSpacing.lg),
          Expanded(
            child: Column(
              children: [
                NavigationButton(
                  title: l10n.lang,
                  onTap: () {
                    context.push('/lang_and_area/lang');
                  },
                ),
                const SizedBox(height: AppSpacing.sm),
                NavigationButton(
                  disabled: false,
                  title: l10n.area,
                  onTap: () {
                    context.push('/lang_and_area/area');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
