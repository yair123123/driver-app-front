import 'package:flutter/material.dart';

class RideDetailsField extends StatelessWidget {
  final TextEditingController controller;
  final dynamic notifier;
  const RideDetailsField({required this.controller, required this.notifier});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: "פרטי נסיעה",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.multiline,
      maxLines: 8,
      onChanged: (value) {
        notifier.onChange(controller);
      },
    );
  }
}
