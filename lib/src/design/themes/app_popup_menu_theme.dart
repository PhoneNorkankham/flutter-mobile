import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

class AppPopupMenuTheme {
  static PopupMenuThemeData appPopupMenuThemeData(
    ColorScheme colorScheme,
    AppTextTheme appTextTheme,
  ) {
    return PopupMenuThemeData(
      elevation: 10.0,
      textStyle: appTextTheme.medium24.copyWith(color: colorScheme.onSurface),
      iconColor: AppColors.grey600,
      color: colorScheme.surface,
      surfaceTintColor: colorScheme.surface,
    );
  }
}
