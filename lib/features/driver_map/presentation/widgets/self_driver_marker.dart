import 'package:driver_app/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelfDriverMarker extends StatelessWidget {
  const SelfDriverMarker();

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.navigation, color: AppColors.primary, size: 24);
  }
}
