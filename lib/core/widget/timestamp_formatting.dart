import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/theme/app_colors.dart';

class TimestampFormatting extends StatelessWidget{
  final DateTime? timestamp;
  final TextStyle? textStyle;
  const TimestampFormatting({super.key, required this.timestamp,this.textStyle});
  @override
  Widget build(BuildContext context) {
    if (timestamp == null) {
      return Text(
        '—',
        style: context.textStyles.labelLarge?.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.greyDark,
        ),
      );
    }

    final formattedTime = DateFormat('HH:mm').format(timestamp!);
    final formattedDate = DateFormat('dd.MM.yyyy').format(timestamp!);
    final formatted = ' $formattedDate | $formattedTime ';

    return Text(
      formatted,
      style:textStyle ?? context.textStyles.labelLarge?.copyWith(
        fontWeight: FontWeight.w400,
        color: AppColors.greyDark,
      ),
    );
  }

}