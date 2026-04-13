import 'package:flutter/material.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/core/constants/app_constants.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_typography.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showSaveButton;
  final VoidCallback? onSavePressed;
  final VoidCallback onTitlePressed;
  final Widget? trailingWidget;

  const MainAppBar({
    super.key,
    required this.onTitlePressed,
    this.showSaveButton = false,
    this.onSavePressed,
    this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextButton(
        onPressed: onTitlePressed,
        child: Text(
          AppConstants.appName,
          style: context.textStyles.titleLarge?.apply(color: Colors.white),
        ),
      ),
      centerTitle: true,
      backgroundColor: AppColors.black,
      actions: [
        if (showSaveButton)
          TextButton(
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.disabled)) {
                  return AppColors.disable;
                }
                return null;
              }),
            ),
            onPressed: onSavePressed,
            child: Text(
              AppLocalizations.of(context)!.save,
              style: AppTypography.button,
            ),
          ),

        if (trailingWidget != null) trailingWidget!,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
