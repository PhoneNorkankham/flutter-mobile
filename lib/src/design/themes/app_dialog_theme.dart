import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppDialogTheme {
  static DialogTheme dialogThemeData(ColorScheme colorScheme, AppTextTheme textTheme) {
    return DialogTheme(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
      elevation: 4,
      shadowColor: AppColors.black25,
      titleTextStyle: textTheme.bold18,
      contentTextStyle: textTheme.regular16,
      backgroundColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surface,
    );
  }
}
