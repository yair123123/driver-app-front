import 'package:flutter/material.dart';
import 'package:news_app/core/extensions/context_extention.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_radius.dart';
import 'package:news_app/theme/app_spacing.dart';
import 'package:news_app/theme/app_typography.dart';

class DismissibleNotice extends StatefulWidget {
  final String title;
  final String? message;
  final Widget? messageWidget;
  final String uriImage;
  final Widget Function(String uri)? imageBuilder;
  const DismissibleNotice({
    super.key,
    required this.title,
    this.message,
    this.messageWidget,
    this.uriImage = "assets/images/vi_image.png",
    this.imageBuilder,
  });

  @override
  State<DismissibleNotice> createState() => _DismissibleNoticeState();
}

class _DismissibleNoticeState extends State<DismissibleNotice> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    if (!_visible) return const SizedBox.shrink();

    return Container(
      padding: AppSpacing.dismissibleNoticePadding,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppRadius.m.asBorderRadius,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.imageBuilder?.call(widget.uriImage) ??
              Image.asset(widget.uriImage),
          const SizedBox(width: AppSpacing.m),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: AppTypography.titleDismissibleNotice.apply(
                    color: AppColors.black,
                  ),
                ),
                widget.messageWidget ??
                    Text(
                      widget.message!,
                      style: context.textStyles.bodySmall?.copyWith(
                        color: AppColors.greyDark,
                        height: 1.13,
                        letterSpacing: -0.32,
                      ),
                    ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => _visible = false),
            child: const Icon(
              Icons.close,
              color: AppColors.black,
              weight: AppWidths.iconX,
            ),
          ),
        ],
      ),
    );
  }
}
