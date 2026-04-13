import 'package:flutter/material.dart';
import 'package:driver_app/theme/app_radius.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:driver_app/theme/button_text_styles.dart';

class CustomChip extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final String label;

  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? borderSideColor;
  final TextStyle? selectedTextStyle;
  final TextStyle? unselectedTextStyle;
  final EdgeInsets? padding;
  final double? borderRadius;
  final double? minWidth;
  final double? minHeight;

  const CustomChip({
    super.key,
    required this.label,
    required this.onPressed,
    this.isSelected = false,

    this.selectedColor,
    this.borderSideColor,
    this.unselectedColor,
    this.selectedTextStyle,
    this.unselectedTextStyle,
    this.padding,
    this.borderRadius,
    this.minWidth,
    this.minHeight,
  });

  @override
  Widget build(BuildContext context) {
    final btnTheme = Theme.of(context).extension<ButtonTextStyles>()!;
    final colors = Theme.of(context).colorScheme;

    final defaultSelectedColor = selectedColor ?? colors.primary;
    final defaultUnselectedColor = unselectedColor ?? colors.secondary;

    final defaultSelectedTextStyle = selectedTextStyle ?? btnTheme.selected;
    final defaultUnselectedTextStyle = unselectedTextStyle ?? btnTheme.unselected;

    final defaultPadding = padding ?? AppSpacing.chipPadding;

    final defaultRadius = borderRadius ?? AppRadius.xxl;

    return ElevatedButton(
      onPressed: onPressed,
      
      style: ButtonStyle(
        padding: WidgetStateProperty.all(defaultPadding),
        minimumSize: WidgetStateProperty.all(Size(
          minWidth ?? 0,
         28,
        )),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all(
          isSelected ? defaultSelectedColor : defaultUnselectedColor,
        ),
        visualDensity:  VisualDensity.standard, // או VisualDensity.standard

        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color: borderSideColor ?? Colors.transparent ),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      ),
      child: Text(
        overflow:TextOverflow.ellipsis ,
        label,
        style:
            isSelected ? defaultSelectedTextStyle : defaultUnselectedTextStyle,
      ),
    );
  }
}
