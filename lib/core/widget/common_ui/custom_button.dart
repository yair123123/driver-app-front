import 'package:flutter/material.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/theme/app_borders.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_radius.dart';
import 'package:driver_app/theme/app_spacing.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  final Function()? onPress;
  final String text;
  final Color? textColor;
  final bool inProgress;
  const CustomButton({
    this.inProgress = false,
    this.textColor,
    super.key,
    this.height,
    this.width,
    required this.onPress,
    this.backgroundColor,
    this.borderColor,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height ?? AppHeights.button,
        width: width ?? AppWidths.button,
        child: ElevatedButton(
          style: ButtonStyle(
            side: WidgetStateProperty.all(
              AppBorders.thinBorder.copyWith(
                color: borderColor ?? Colors.transparent,
              ),
            ),
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.disabled)) {
                return AppColors.grey;
              }
              return backgroundColor ?? AppColors.primary;
            }),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: AppRadius.xxl.asBorderRadius,
                side: AppBorders.thinBorder.copyWith(
                  color: borderColor ?? Colors.transparent,
                ),
              ),
            ),
            padding: WidgetStateProperty.all(AppSpacing.buttonPadding),
          ),
          onPressed: onPress,
          child: inProgress
              ? const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    strokeWidth: 2,
                  ),
                )
              : Text(
                textAlign: TextAlign.center,
                  text,
                  style: context.textStyles.bodySmall?.copyWith(
                    color:textColor ?? Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
