import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppBottomNavigationTheme {
  static BottomNavigationBarThemeData bottomNavigationThemeData(
    ColorScheme colorScheme,
    AppTextTheme appTextTheme,
  ) {
    return BottomNavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: colorScheme.tertiary,
      unselectedItemColor: colorScheme.onSurface,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: appTextTheme.medium10,
      unselectedLabelStyle: appTextTheme.medium10,
      elevation: 10.0,
    );
  }
}
