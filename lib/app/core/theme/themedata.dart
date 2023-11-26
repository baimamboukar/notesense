import 'package:flutter/material.dart';
import 'package:notesense/app/core/theme/colorscheme.dart';

class NoteSenseTheme {
  static ThemeData get light => ThemeData(
        fontFamily: 'Gilroy',
        useMaterial3: true,
        colorScheme: AppColorScheme.light,
      );
  static ThemeData get dark => ThemeData(
        fontFamily: 'Gilroy',
        useMaterial3: true,
        colorScheme: AppColorScheme.dark,
      );
}
