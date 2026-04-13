import 'package:flutter/material.dart';
import 'package:driver_app/core/icons/app_svg_icon.dart';
import 'package:driver_app/core/icons/custom_icon.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_spacing.dart';

class ShareButton extends StatelessWidget {
  final VoidCallback handleSharing;

  const ShareButton({super.key, required this.handleSharing});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidths.shareButton,
      height: AppHeights.shareButton,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF437CBE), Color(0xFF0D2440)],
        ),

        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      child: IconButton(icon:
         AppSvgIcon(
          icon: CustomIcon.share,
          width: AppSpacing.mlg,
          height: AppSpacing.tabIconSize,
           color: AppColors.white,
        ),
        onPressed: handleSharing,
      ),
    );
  }
}
