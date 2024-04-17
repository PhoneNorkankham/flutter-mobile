import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppInputTheme {
  static InputDecorationTheme inputDecorationThemeData(AppTextTheme appTextTheme) {
    const OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: AppColors.grey300),
    );
    return InputDecorationTheme(
      disabledBorder: border,
      enabledBorder: border,
      border: border,
      focusedBorder: border.copyWith(
        borderSide: const BorderSide(color: AppColors.tealBlue),
      ),
      errorBorder: border.copyWith(
        borderSide: const BorderSide(color: AppColors.error),
      ),
      focusedErrorBorder: border.copyWith(
        borderSide: const BorderSide(color: AppColors.error),
      ),
      hintStyle: appTextTheme.medium16.copyWith(color: AppColors.grey600),
      errorStyle: appTextTheme.medium12.copyWith(color: AppColors.error),
      contentPadding: const EdgeInsets.all(12).copyWith(bottom: 3),
      suffixIconColor: AppColors.tealBlue,
    );
  }
}
