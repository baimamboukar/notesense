import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppColorScheme {
  static ColorScheme get light => _getColorScheme(Brightness.light);
  static ColorScheme get dark => _getColorScheme(Brightness.dark);
}

ColorScheme _getColorScheme(Brightness brightness) {
  return SeedColorScheme.fromSeeds(
    brightness: brightness,
    primaryKey: const Color(0xFF64AAFE),
    secondaryKey: const Color(0xFFA1E4F3),
    tertiaryKey: const Color(0xFF383344),
    background: const Color(0xFF252441),
    tones: FlexTones.vivid(Brightness.dark),
  );
}
