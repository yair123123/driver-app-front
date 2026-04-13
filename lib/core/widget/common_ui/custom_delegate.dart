
import 'package:flutter/cupertino.dart';

class CustomDelegate extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;
  final Widget child;

  CustomDelegate({
    required this.minExtent,
    required this.maxExtent,
    required this.child,
  });

  @override
  double get _minExtent => minExtent;

  @override
  double get _maxExtent => maxExtent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant CustomDelegate oldDelegate) {
    return oldDelegate.minExtent != minExtent ||
        oldDelegate.maxExtent != maxExtent ||
        oldDelegate.child != child;
  }
}
