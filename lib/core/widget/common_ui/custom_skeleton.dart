import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonArticleBody extends StatelessWidget {
  const SkeletonArticleBody({super.key});

  @override
  Widget build(BuildContext context) {
    final base = Colors.grey[300]!;
    final highlight = Colors.grey[100]!;

    Widget line({double h = 16, double? w, EdgeInsets? m}) => Container(
      height: h,
      width: w,
      margin: m ?? const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: base,              
        borderRadius: BorderRadius.circular(6),
      ),
    );

    return Shimmer.fromColors(
      baseColor: base,
      highlightColor: highlight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            line(h: 28, w: 220, m: const EdgeInsets.only(bottom: 20)), 
            line(w: double.infinity),
            line(w: double.infinity),
            line(w: 260),
            const SizedBox(height: 24),
            line(h: 20, w: 180, m: const EdgeInsets.only(bottom: 16)),  
            ...List.generate(5, (_) => line(w: double.infinity)),
            line(w: 200),
            const SizedBox(height: 24),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(5, (_) => Container(
                height: 28,
                width: 80,
                decoration: BoxDecoration(
                  color: base,
                  borderRadius: BorderRadius.circular(18),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
