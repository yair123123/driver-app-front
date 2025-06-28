
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IdField extends StatelessWidget {
  final TextEditingController controller;

  const IdField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: const Key("idField"),
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
      decoration: const InputDecoration(
        labelText: "ID",
        prefixIcon: Icon(Icons.lock),
        border: OutlineInputBorder(),
      ),
    );
  }
}
