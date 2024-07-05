import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFF4F6F9),
  onPrimary: Color(0xFF4F5256),
  secondary: AppColors.primaryDark,
  onSecondary: AppColors.white,
  tertiary: AppColors.tertiary,
  error: AppColors.error,
  onError: AppColors.white,
  surface: Color(0xFFF4F6F9),
  onSurface: Color(0xFF4F5256),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primary,
  onPrimary: AppColors.primaryText,
  secondary: AppColors.primaryDark,
  onSecondary: AppColors.grey600,
  tertiary: AppColors.tertiary,
  error: AppColors.error,
  onError: AppColors.white,
  surface: AppColors.white,
  onSurface: AppColors.primaryDark,
);

extension AppColorScheme on ColorScheme {
  bool get isDarkMode => brightness == Brightness.dark;
}
