import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoDialog {
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String content,
    String buttonText = 'OK',
    bool barrierDismissible = false,
    VoidCallback? onPressed,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) => _InfoDialogWidget(
        title: title,
        content: content,
        buttonText: buttonText,
        onPressed: onPressed,
      ),
    );
  }
}

class _InfoDialogWidget extends StatelessWidget {
  const _InfoDialogWidget({
    required this.title,
    required this.content,
    required this.buttonText,
    this.onPressed,
  });

  final String title;
  final String content;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return _buildDialog(
      context,
      titleRow: _buildTitleRow(),
      contentWidget: _buildContent(),
      actions: [_buildPrimaryButton(context)],
    );
  }

  Widget _buildDialog(
    BuildContext context, {
    required Widget titleRow,
    required Widget contentWidget,
    required List<Widget> actions,
  }) {
    return AlertDialog(
      backgroundColor: _bgColor(),
      surfaceTintColor: Colors.transparent,
      shape: _shape(),
      elevation: _elevation(),
      shadowColor: _shadowColor(),
      title: titleRow,
      content: contentWidget,
      actions: actions,
      actionsPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
      contentPadding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 0),
      titlePadding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      children: [
        _buildIconBadge(icon: Icons.info_outline, iconColor: _iconColor()),
        SizedBox(width: 12.w),
        Expanded(child: _buildTitleText()),
      ],
    );
  }

  Widget _buildIconBadge({required IconData icon, required Color iconColor}) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: iconColor.withAlpha((0.1 * 255).round()),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: iconColor, size: 24),
    );
  }

  Widget _buildTitleText() {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildContent() {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 60),
      child: Text(
        content,
        style: TextStyle(
          color: Colors.white.withAlpha((0.8 * 255).round()),
          fontSize: 16.sp,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildPrimaryButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ?? () => Navigator.pop(context),
        style: _primaryButtonStyle(),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Color _bgColor() => const Color(0xFF1B1D29);
  Color _iconColor() => Colors.blue;
  double _elevation() => 20;
  Color _shadowColor() => Colors.black.withAlpha((0.5 * 255).round());

  ShapeBorder _shape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        color: Colors.white.withAlpha((0.1 * 255).round()),
        width: 1.w,
      ),
    );
  }

  ButtonStyle _primaryButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
    );
  }
}
