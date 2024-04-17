import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppButtonTheme {
  static ElevatedButtonThemeData elevatedButtonThemeData(AppTextTheme appTextTheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: _shape,
        minimumSize: const Size.fromHeight(_minHeight),
        foregroundColor: AppColors.white,
        textStyle: appTextTheme.bold18.copyWith(height: 1),
        disabledBackgroundColor: AppColors.grey100,
        disabledForegroundColor: AppColors.grey600,
        elevation: 0.0,
        shadowColor: AppColors.black,
      ),
    );
  }

  static OutlinedButtonThemeData outlinedButtonThemeData(AppTextTheme appTextTheme) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: _shape,
        minimumSize: const Size.fromHeight(_minHeight),
        side: const BorderSide(color: AppColors.grey350),
        foregroundColor: AppColors.darkBlue,
        backgroundColor: AppColors.white,
        textStyle: appTextTheme.bold18.copyWith(height: 1),
        disabledBackgroundColor: AppColors.grey100,
        disabledForegroundColor: AppColors.grey600,
        elevation: 0.0,
      ),
    );
  }

  static ButtonThemeData get buttonThemeData {
    return const ButtonThemeData(
      shape: _shape,
      minWidth: double.maxFinite,
      height: _minHeight,
    );
  }

  static const _shape =
      RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)));
  static const _minHeight = 56.0;
}
