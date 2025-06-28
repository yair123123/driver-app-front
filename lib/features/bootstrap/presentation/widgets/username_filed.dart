import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final TextEditingController controller;

  const UsernameField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: const Key("usernameField"),
      controller: controller,
      decoration: const InputDecoration(
        labelText: "שם משתמש",
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
      ),
    );
  }
}
