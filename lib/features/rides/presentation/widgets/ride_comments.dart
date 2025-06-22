
import 'package:flutter/material.dart';

class RideComments extends StatelessWidget {
  final String comments;
  const RideComments({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Text(
      comments.trim(),
      style: const TextStyle(fontSize: 14),
    );
  }
}
