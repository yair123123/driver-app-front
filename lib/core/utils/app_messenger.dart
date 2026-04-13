import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_durations.dart';
import 'package:driver_app/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class AppTopMessenger {
  AppTopMessenger._();

  static void success(BuildContext context,String title, String? message) {
    _showBanner(
      context,
      title: title ,
      message: message,
      textColor: AppColors.primary,
    );
  }
  static void smallSuccess(BuildContext context) {
    _showBanner(
      context,
      title: AppLocalizations.of(context)!.changesSavedSuccessfully ,
      backgroundColor: AppColors.primary,
      textColor: AppColors.white,
    );
  }

  static void error(BuildContext context, String title, String? message) {
    _showBanner(
      context,
      title: title,
      message: message,
      textColor: AppColors.error,
    );
  }

  static void info(BuildContext context, String title, String? message) {
    _showBanner(
      context,
      title: title ,
      message: message,
      textColor: AppColors.primary,
    );
  }

  static void _showBanner(
    BuildContext context, {
    required String title,
    String? message,
    required Color textColor,
     Color? backgroundColor,
  }) {
    showSimpleNotification(
      Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color:backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal:  44,vertical: 12),
        child: _BannerContent(title: title, message: message, color: textColor),
      ),
      background: Colors.transparent,
      slideDismissDirection: DismissDirection.up,
      autoDismiss: true,
      duration: const Duration(seconds: 3),
      contentPadding: EdgeInsets.zero,
      elevation: 0,
    );
  }
}

class _BannerContent extends StatefulWidget {
  const _BannerContent({
    required this.title,
     this.message,
    required this.color,
  });

  final String title;
  final String? message;
  final Color color;

  @override
  State<_BannerContent> createState() => _BannerContentState();
}

class _BannerContentState extends State<_BannerContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: AppDurations.sSlow,
      vsync: this,
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Column(
          children: [
            Text(
              widget.title,
              style: AppTypography.appMessengerTitle.apply(color: widget.color),
            ),
            SizedBox(height: 2),
            if (widget.message != null)
            Text(
              widget.message!,
              style: AppTypography.appMessengerSubtitle.apply(
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
