import 'package:flutter/material.dart';

class ButtonTextStyles extends ThemeExtension<ButtonTextStyles> {
  final TextStyle selected;
  final TextStyle unselected;

  const ButtonTextStyles({
    required this.selected,
    required this.unselected,
  });

  @override
  ButtonTextStyles copyWith({
    TextStyle? selected,
    TextStyle? unselected,
  }) {
    return ButtonTextStyles(
      selected: selected ?? this.selected,
      unselected: unselected ?? this.unselected,
    );
  }

  @override
  ButtonTextStyles lerp(ThemeExtension<ButtonTextStyles>? other, double t) {
    if (other is! ButtonTextStyles) return this;

    return ButtonTextStyles(
      selected: TextStyle.lerp(selected, other.selected, t)!,
      unselected: TextStyle.lerp(unselected, other.unselected, t)!,
    );
  }
}
