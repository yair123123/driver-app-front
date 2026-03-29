import 'package:flutter/material.dart';
import 'package:news_app/core/extensions/context_extention.dart';
import 'package:news_app/core/widget/common_ui/custom_list_tile.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_spacing.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.title,
    required this.onTap,
    this.disabled = false,
  });

  final String title;
  final VoidCallback onTap;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    final textColor = disabled
        ? AppColors.black.withAlpha((0.5 * 255).round())
        : AppColors.black;

    return CustomListTile(
      onTap: onTap,
      disabled: disabled,
      padding: AppSpacing.navigationButtonPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.textStyles.bodySmall?.apply(color: textColor),
            textDirection: TextDirection.rtl,
          ),
          Icon(Icons.chevron_right, color: textColor),
        ],
      ),
    );
  }
}