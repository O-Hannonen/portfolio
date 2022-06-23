import 'package:flutter/material.dart';

get darkScheme => ColorScheme.fromSeed(
      seedColor: const Color(0xffa76400),
      brightness: Brightness.dark,
    );

get lightScheme => ColorScheme.fromSeed(
      seedColor: const Color(0xffa76400),
      brightness: Brightness.light,
    );

extension ThemeExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
