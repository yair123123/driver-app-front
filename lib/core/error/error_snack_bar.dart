import 'package:flutter/material.dart';

SnackBar errorSnackBar({
  required String title,
  required String message,
  required String buttonLabel,
  required VoidCallback onPressed,
}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.red.shade700,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    ),
    action: SnackBarAction(
      label: buttonLabel,
      textColor: Colors.white,
      onPressed: onPressed,
    ),
    duration: const Duration(seconds: 4),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );
}
