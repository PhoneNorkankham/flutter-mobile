import 'package:flutter/material.dart';

class AppDividerTheme {
  static DividerThemeData dividerThemeData(ColorScheme colorScheme) {
    return DividerThemeData(color: colorScheme.primary, thickness: .5);
  }
}
