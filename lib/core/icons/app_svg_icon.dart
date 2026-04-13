import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:driver_app/core/icons/custom_icon.dart';
import 'package:driver_app/theme/app_spacing.dart';

class AppSvgIcon extends StatelessWidget {
  final CustomIcon icon;
  final double? width;
  final double? height;
  final Color? color;

  const AppSvgIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.color,
  });

  static const _iconsDir = 'assets/images/custom_icons/';

  @override
  Widget build(BuildContext context) {
    final picture = SvgPicture.asset(

      '$_iconsDir${icon.fileName}',
      width: width ?? AppSpacing.tabIconSize,
      height: height ?? AppSpacing.tabIconSize,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,    );

    if (!icon.flipInRtl) {
      return picture;
    }

    final isRtl = Directionality.of(context) == ui.TextDirection.rtl;

    if (!isRtl) {
      return picture;
    }

    return Transform.flip(
      flipX: true,
      child: picture,
    );
  }
}
