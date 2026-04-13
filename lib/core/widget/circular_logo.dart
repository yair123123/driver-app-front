import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:driver_app/theme/app_colors.dart';
class CircularLogo extends StatelessWidget {
  final String? imageUrl;
  final double size;

  const CircularLogo({
    super.key,
    required this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.trim().isEmpty) {
      return _greyCircle();
    }

    return CachedNetworkImage(
      imageUrl: imageUrl!,
      imageBuilder: (context, imageProvider) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (_, __) => _greyCircle(),
      errorWidget: (_, __, ___) => _greyCircle(),
    );
  }

  Widget _greyCircle() {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color:AppColors.grey,
      ),
    );
  }
}