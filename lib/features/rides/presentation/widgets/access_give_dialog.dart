import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AccessGiveDialog extends StatelessWidget {
  final String phone;

  const AccessGiveDialog({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animations/check.json',
            width: 80,
            repeat: false,
          ),
          const SizedBox(height: 8),
          const Text(
            'נסיעה נלקחה בהצלחה',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text('התקשר ל-$phone'),
          const SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('סגור'),
            ),
          ),
        ],
      ),
    );
  }
}
