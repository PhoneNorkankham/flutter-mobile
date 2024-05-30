import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_color_schemes.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/app_app_bar_theme.dart';
import 'package:keepup/src/design/themes/app_bottom_navigation_theme.dart';
import 'package:keepup/src/design/themes/app_bottom_sheet_theme.dart';
import 'package:keepup/src/design/themes/app_button_theme.dart';
import 'package:keepup/src/design/themes/app_card_theme.dart';
import 'package:keepup/src/design/themes/app_dialog_theme.dart';
import 'package:keepup/src/design/themes/app_divider_theme.dart';
import 'package:keepup/src/design/themes/app_input_theme.dart';
import 'package:keepup/src/design/themes/app_tab_bar_theme.dart';
import 'package:keepup/src/design/themes/extensions/app_text_theme.dart';

/// *************************    DANGER    ***********************************
/// DO NOT TOUCH this file. Any changes must be approved by Dev Team.
class AppTheme {
  static ThemeData get darkTheme {
    final appTextTheme = AppTextTheme.dark;
    const colorScheme = darkColorScheme;

    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      appBarTheme: AppAppBarTheme.appBarThemeData(colorScheme, appTextTheme),
      buttonTheme: AppButtonTheme.buttonThemeData,
      elevatedButtonTheme: AppButtonTheme.elevatedButtonThemeData(appTextTheme),
      outlinedButtonTheme: AppButtonTheme.outlinedButtonThemeData(appTextTheme),
      inputDecorationTheme: AppInputTheme.inputDecorationThemeData(appTextTheme),
      dialogTheme: AppDialogTheme.dialogThemeData(colorScheme, appTextTheme),
      tabBarTheme: AppTabBarTheme.tabBarThemeData(appTextTheme),
      bottomSheetTheme: AppBottomSheetTheme.bottomSheetThemeData(colorScheme),
      dividerTheme: AppDividerTheme.dividerThemeData(colorScheme),
      bottomNavigationBarTheme: AppBottomNavigationTheme.bottomNavigationThemeData(
        colorScheme,
        appTextTheme,
      ),
      colorScheme: colorScheme,
      extensions: <ThemeExtension<dynamic>>[appTextTheme],
      fontFamily: getFontFamily,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      indicatorColor: AppColors.primary,
      dividerColor: AppColors.darkBlue25,
      scaffoldBackgroundColor: AppColors.primary,
      cardTheme: AppCardTheme.darkThemeData(),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0xFF2A2929),
        endShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }

  static ThemeData get lightTheme {
    final appTextTheme = AppTextTheme.light;
    const colorScheme = lightColorScheme;
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      appBarTheme: AppAppBarTheme.appBarThemeData(colorScheme, appTextTheme),
      buttonTheme: AppButtonTheme.buttonThemeData,
      elevatedButtonTheme: AppButtonTheme.elevatedButtonThemeData(appTextTheme),
      outlinedButtonTheme: AppButtonTheme.outlinedButtonThemeData(appTextTheme),
      inputDecorationTheme: AppInputTheme.inputDecorationThemeData(appTextTheme),
      dialogTheme: AppDialogTheme.dialogThemeData(colorScheme, appTextTheme),
      bottomSheetTheme: AppBottomSheetTheme.bottomSheetThemeData(colorScheme),
      dividerTheme: AppDividerTheme.dividerThemeData(colorScheme),
      tabBarTheme: AppTabBarTheme.tabBarThemeData(appTextTheme),
      bottomNavigationBarTheme: AppBottomNavigationTheme.bottomNavigationThemeData(
        colorScheme,
        appTextTheme,
      ),
      colorScheme: colorScheme,
      extensions: <ThemeExtension<dynamic>>[appTextTheme],
      fontFamily: getFontFamily,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      indicatorColor: AppColors.primary,
      dividerColor: AppColors.darkBlue25,
      scaffoldBackgroundColor: AppColors.primary,
      cardTheme: AppCardTheme.lightThemeData(),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0xFF0A84FF),
        endShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}
