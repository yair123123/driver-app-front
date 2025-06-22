import 'package:flutter/material.dart';

class VipTag extends StatelessWidget {
  const VipTag({super.key});

  @override
  Widget build(BuildContext context) {
    const Color elegantGold = Color(0xFFFFD700);

    return Positioned(
      top: 8,
      left: -32,
      child: Transform.rotate(
        angle: -0.785, 
        child: Container(
          width: 100,
          padding: const EdgeInsets.symmetric(vertical: 4),
          color: elegantGold,
          alignment: Alignment.center,
          child: const Text(
            'VIP',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}