import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final bool enabled;
  final bool isSubmitting;
  final VoidCallback onSubmit;

  const SubmitButton({
    super.key,
    required this.enabled,
    required this.isSubmitting,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: enabled && !isSubmitting ? onSubmit : null,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(200, 48),
        ),
        child: isSubmitting
            ? const SizedBox(
          height: 18,
          width: 18,
          child: CircularProgressIndicator(strokeWidth: 2),
        )
            : const Text('פרסם נסיעה', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}