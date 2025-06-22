import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GiveDialog extends StatelessWidget {
  final bool isRideActive;
  final VoidCallback onGive;
  final VoidCallback? onChatPressed;
  final int dispatcherId;

  const GiveDialog({
    super.key,
    required this.isRideActive,
    required this.onGive,
    required this.dispatcherId,
    this.onChatPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('פרטים נוספים'),
      content: const Text('מה תרצה לעשות?'),
      actionsAlignment: MainAxisAlignment.end,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            if (onChatPressed != null) {
              onChatPressed!();
            } else {
              context.go('/chats/$dispatcherId');
            }
          },
          child: const Text('צ׳אט עם הסדרן'),
        ),
        ElevatedButton(
          onPressed: isRideActive
              ? null
              : () {
                  Navigator.of(context).pop();
                  onGive();
                },
          child: const Text('תן'),
        ),
      ],
    );
  }
}
