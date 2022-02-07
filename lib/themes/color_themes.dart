// Flutter imports:
import 'package:flutter/material.dart';

class Pallete {
  const Pallete({
    required this.light,
    required this.normal,
    required this.dark,
  });
  final Color light;
  final Color normal;
  final Color dark;
}

abstract class ColorThemes {
  static Color get dark => const Color.fromRGBO(15, 32, 28, 1);
  static Color get light => const Color.fromRGBO(233, 234, 234, 1);
  static Color get darkGrey => const Color.fromRGBO(90, 90, 90, 1);
  static Color get grey => const Color.fromRGBO(150, 150, 150, 1);
  static Color get purple => const Color(0xFF3A3B56);
}

extension ColorExtension on Color {
  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
