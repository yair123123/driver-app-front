import 'package:flutter/material.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_radius.dart';
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.child,
    this.onTap,
    this.disabled = false,
    this.background,
    this.borderRadius,
    this.padding,
    this.margin,
    this.height,
    this.border,
    this.clipBehavior = Clip.antiAlias,
  });

  final Widget child;
  final VoidCallback? onTap;
  final bool disabled;

  final Color? background;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final BoxBorder? border;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius ?? AppRadius.s.asBorderRadius;
    final effectiveOnTap = disabled ? null : onTap;

    return Opacity(
      opacity: disabled ? 0.7 : 1.0,
      child: InkWell(
        onTap: effectiveOnTap,
        borderRadius: radius,
        child: Container(
          width: double.infinity,
          height: height,
          margin: margin,
          padding: padding,
          clipBehavior: clipBehavior,
          decoration: BoxDecoration(
            color: background ?? AppColors.white,
            borderRadius: radius,
            border: border,
          ),
          child: child,
        ),
      ),
    );
  }
}