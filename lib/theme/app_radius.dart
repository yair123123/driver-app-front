import 'package:flutter/widgets.dart';

class AppRadius {
  static const double xs = 8;
  static const double s = 12;
  static const double m = 16;
  static const double l = 18;
  static const double xl = 24;
  static const double xxl = 32;
  static const double xxxl = 40;
}

extension BorderRadiusX on double {
  BorderRadius get asBorderRadius => BorderRadius.circular(this);
}
  extension RadiusX on double {
    Radius get asRadius => Radius.circular(this);
  }

extension RadiusDirectionalX on double {
  BorderRadiusDirectional get asDirectional =>
      BorderRadiusDirectional.circular(this);
}

