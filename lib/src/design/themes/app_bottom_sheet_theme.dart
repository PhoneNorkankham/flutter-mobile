import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';

class AppBottomSheetTheme {
  static BottomSheetThemeData bottomSheetThemeData(ColorScheme colorScheme) {
    return BottomSheetThemeData(
      backgroundColor: colorScheme.background,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
      elevation: 0,
      shadowColor: AppColors.darkBlue80,
      modalBarrierColor: AppColors.darkBlue80,
    );
  }
}
