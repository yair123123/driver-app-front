import 'package:flutter/material.dart';

class RideDetailsField extends StatelessWidget {
  final TextEditingController controller;
  const RideDetailsField({required this.controller});

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
    );
  }
}
