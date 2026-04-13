import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final Widget? background;

  const BackgroundWidget({super.key, this.background,required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background != null
              ? background!
              : Positioned.fill(
                  child: Image.asset(
                    'assets/background/summary_page_background.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
          child,
        ],
      ),
    );
  }
}
