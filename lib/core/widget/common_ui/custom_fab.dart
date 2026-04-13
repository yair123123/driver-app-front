import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/core/icons/app_svg_icon.dart';
import 'package:driver_app/core/icons/custom_icon.dart';
import 'package:driver_app/core/media/media_utils.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_spacing.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({
    super.key,
    required this.scale,
    required this.onPressed,
    this.rotationDegrees = 0,
  });

  final Animation<double> scale;
  final VoidCallback onPressed;
  final double rotationDegrees;

  @override
  Widget build(BuildContext context) {
    final radians = rotationDegrees * math.pi / 180;

    return ScaleTransition(
      scale: scale,
      child: Transform.rotate(
        angle: radians,
        child: Padding(
          padding: AppSpacing.fabPadding,
          child: SizedBox(
            width: AppWidths.fabButton,
            height: AppHeights.fabButton,
            child: FloatingActionButton(
              onPressed: onPressed,
              backgroundColor: context.colorScheme.secondary,
              foregroundColor: AppColors.black,
              shape: const CircleBorder(),
              child: AppSvgIcon(
                icon: CustomIcon.arrowUp,
                width: AppSpacing.lg,
                height: AppSpacing.lg,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
