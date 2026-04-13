import 'package:flutter/material.dart';

class BlinkWrapper extends StatefulWidget {
  final Widget child;
  final bool enabled;
  final int repeatCount;
  final Duration duration;
  final Color? highlightColor;
  final bool useGlow;
  final bool useBackground;
  final bool useBorder;

  const BlinkWrapper({
    super.key,
    required this.child,
    this.enabled = false,
    this.repeatCount = 2,
    this.duration = const Duration(milliseconds: 700),
    this.highlightColor,
    this.useGlow = true,
    this.useBackground = false,
    this.useBorder = true,
  });

  @override
  State<BlinkWrapper> createState() => _BlinkWrapperState();
}

class _BlinkWrapperState extends State<BlinkWrapper>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  bool _started = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    if (widget.enabled) {
      _start();
    }
  }

  @override
  void didUpdateWidget(covariant BlinkWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.enabled && !_started) {
      _start();
    }
  }

  Future<void> _start() async {
    _started = true;

    for (int i = 0; i < widget.repeatCount; i++) {
      if (!mounted) return;
      await _controller.forward();
      await _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) {
      return widget.child;
    }

    final highlightColor =
        widget.highlightColor ?? Theme.of(context).colorScheme.primary;

    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (_, child) {
        final t = _animation.value;

        final borderColor = highlightColor.withOpacity(0.25 + (0.75 * t));
        final backgroundColor = highlightColor.withOpacity(0.04 + (0.10 * t));

        return Transform.scale(
          scale: 1 + (0.01 * t),
          child: Container(
            decoration: BoxDecoration(
              color: widget.useBackground ? backgroundColor : null,
              borderRadius: BorderRadius.circular(24),
              border: widget.useBorder
                  ? Border.all(
                color: borderColor,
                width: 1.2 + (1.3 * t),
              )
                  : null,
              boxShadow: widget.useGlow
                  ? [
                BoxShadow(
                  color: highlightColor.withOpacity(0.10 + (0.30 * t)),
                  blurRadius: 8 + (14 * t),
                  spreadRadius: 0.5 + (2 * t),
                ),
              ]
                  : null,
            ),
            child: child,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}