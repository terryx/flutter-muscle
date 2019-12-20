import 'package:flutter/material.dart';

class TodoTheme {
  TodoTheme._();

  static ColorScheme colorScheme = const ColorScheme.light();

  static ThemeData themeData = ThemeData(
    colorScheme: colorScheme,
    cardTheme: const CardTheme(
      elevation: 0,
      margin: EdgeInsets.all(8),
    ),
  );
}
