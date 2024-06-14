import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppAppBarTheme {
  static AppBarTheme appBarThemeData(ColorScheme colorScheme, AppTextTheme appTextTheme) {
    return AppBarTheme(
      titleTextStyle: appTextTheme.medium24.copyWith(color: AppColors.primaryDark),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: AppColors.grey600),
      backgroundColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surface,
    );
  }
}
