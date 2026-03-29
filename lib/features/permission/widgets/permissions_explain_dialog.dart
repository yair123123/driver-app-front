import 'package:flutter/material.dart';

class PermissionExplainDialog extends StatelessWidget {
  const PermissionExplainDialog({
    super.key,
    required this.title,
    required this.body,
    required this.confirmText,
    required this.cancelText,
  });

  final String title;
  final String body;
  final String confirmText;
  final String cancelText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(body,style: TextStyle(color: Colors.black),),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(cancelText),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(confirmText),
        ),
      ],
    );
  }
}