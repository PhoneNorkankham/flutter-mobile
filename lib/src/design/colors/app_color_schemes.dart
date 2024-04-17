import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.tealBlue,
  onPrimary: AppColors.white,
  secondary: AppColors.darkBlue,
  onSecondary: AppColors.white,
  tertiary: AppColors.cyan,
  error: AppColors.error,
  onError: AppColors.white,
  background: AppColors.white,
  onBackground: AppColors.darkBlue,
  surface: AppColors.white,
  onSurface: AppColors.darkBlue,
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.tealBlue,
  onPrimary: AppColors.primaryText,
  secondary: AppColors.darkBlue,
  onSecondary: AppColors.grey600,
  error: AppColors.error,
  onError: AppColors.white,
  background: AppColors.white,
  onBackground: AppColors.darkBlue,
  surface: AppColors.white,
  onSurface: AppColors.darkBlue,
);

extension AppColorScheme on ColorScheme {
  bool get isDarkMode => brightness == Brightness.dark;
}
