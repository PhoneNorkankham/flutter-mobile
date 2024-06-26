import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppBottomNavigationTheme {
  static BottomNavigationBarThemeData bottomNavigationThemeData(
    ColorScheme colorScheme,
    AppTextTheme appTextTheme,
  ) {
    return BottomNavigationBarThemeData(
      backgroundColor: colorScheme.onPrimary,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.selectedItemColor,
      unselectedItemColor: AppColors.unselectedItemColor,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: appTextTheme.medium10,
      unselectedLabelStyle: appTextTheme.medium10,
      elevation: 0.0,
    );
  }
}
