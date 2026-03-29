import 'package:flutter/material.dart';

class SelectableList<T> extends StatelessWidget {
  const SelectableList({
    super.key,
    required this.items,
    required this.selected,
    required this.onChanged,
    required this.labelBuilder,
    this.spacing = 8,
    this.radius = 14,
  });

  final List<T> items;
  final T? selected;
  final ValueChanged<T> onChanged;
  final String Function(T) labelBuilder;
  final double spacing;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        final isSelected = item == selected;

        return Padding(
          padding: EdgeInsets.only(
            top: index == 0 ? 0 : spacing,
            bottom: index == items.length - 1 ? 0 : 0,
          ),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: isSelected
                  ? BorderSide(color: scheme.primary, width: 1.4)
                  : BorderSide.none,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(radius),
              onTap: () => onChanged(item),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? scheme.primary.withAlpha((0.06 * 255).round())
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(radius),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      labelBuilder(item),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: isSelected ? scheme.primary : scheme.onSurface,
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 180),
                      child: isSelected
                          ? Icon(
                              Icons.check_circle,
                              key: const ValueKey(true),
                              color: scheme.primary,
                            )
                          : const SizedBox(key: ValueKey(false)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
