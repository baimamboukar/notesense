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
    background: smoke,
    tones: FlexTones.vivid(brightness),
  );
}

const black = Color(0xFF020202);
const smoke = Color(0xFFF7ECC9);
const blue = Color(0xFF9AB5DC);
const green = Color(0xFFA8D672);
const orange = Color(0xFFEA7A54);
const yellow = Color(0xFFF5D14A);
