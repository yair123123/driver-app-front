import 'package:flutter/material.dart';

class RideTimestamp extends StatelessWidget {
  final DateTime timestamp;
  const RideTimestamp({super.key, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        _formatTimestamp(timestamp),
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
  }

  String _formatTimestamp(DateTime ts) {
    final d = ts.day.toString().padLeft(2, '0');
    final m = ts.month.toString().padLeft(2, '0');
    final y = (ts.year % 100).toString().padLeft(2, '0');
    final h = ts.hour.toString().padLeft(2, '0');
    final min = ts.minute.toString().padLeft(2, '0');
    return '$d/$m/$y  $h:$min';
  }
}
