import 'package:flutter/material.dart';

class ExtraTextStyles extends ThemeExtension<ExtraTextStyles> {
  const ExtraTextStyles({
    this.customAlert,
    this.customCard,
  });
  
  final TextStyle? customAlert;
  final TextStyle? customCard;

  @override
  ExtraTextStyles copyWith({
    TextStyle? customAlert,
    TextStyle? customCard,
  }) {
    return ExtraTextStyles(
      customAlert: customAlert ?? this.customAlert,
      customCard: customCard ?? this.customCard,
    );
  }

  @override
  ExtraTextStyles lerp(ThemeExtension<ExtraTextStyles>? other, double t) {
    if (other is! ExtraTextStyles) return this;
    return ExtraTextStyles(
      customAlert: TextStyle.lerp(customAlert, other.customAlert, t),
      customCard: TextStyle.lerp(customCard, other.customCard, t),
    );
  }
}
