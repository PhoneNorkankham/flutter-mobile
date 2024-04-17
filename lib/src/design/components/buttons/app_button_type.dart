import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';

const double _secondaryHeight = 48;
const double _tertiaryHeight = 44;
const double _quaternaryHeight = 32;
const double _quinaryHeight = 30;
const double _senaryHeight = 24;

enum AppButtonType {
  /// NOTE: Name without color is teal blue as default
  // Height 56
  primary,
  darkBluePrimary,
  greyPrimary,
  cyanPrimary,
  lightTealPrimary,
  lightTealRoundPrimary,
  kakao,
  outlined,
  yellowPrimary,
  redPrimary,

  // Height 48
  secondary,
  greySecondary,
  secondary2,
  darkerGreySecondary,

  // Height 44
  tertiary,
  outlinedTertiary,
  darkBlueTertiary,
  lightTealTertiary,

  // Height 32
  quaternary,
  columbiaBlueQuaternary,
  cyanQuaternary,

  // Height 30
  greyQuinary,

  // Height 24
  senary,
  peachSenary,
  cyanSenary,
  yellowSenary,
  greySenary,
  columbiaBlueSenary;

  bool get isOutlined => this == outlined || this == outlinedTertiary;

  ButtonStyle? buttonStyle(BuildContext context, double? radius) {
    final style =
        isOutlined ? OutlinedButtonTheme.of(context).style : ElevatedButtonTheme.of(context).style;
    final textTheme = context.appTextTheme;
    Color backgroundColor = AppColors.tealBlue;
    Color? foregroundColor;
    Size? minimumSize = const Size.fromHeight(56);
    double borderRadius = 10;
    TextStyle? textStyle;
    EdgeInsets? padding;

    switch (this) {
      case primary:
        padding = EdgeInsets.zero;
        break;
      case greyPrimary:
        backgroundColor = AppColors.grey400;
        foregroundColor = AppColors.white;
        padding = EdgeInsets.zero;
        break;
      case cyanPrimary:
        backgroundColor = AppColors.cyan;
        padding = EdgeInsets.zero;
        break;
      case yellowPrimary:
        backgroundColor = AppColors.yellow;
        padding = EdgeInsets.zero;
        break;
      case redPrimary:
        backgroundColor = AppColors.red;
        padding = EdgeInsets.zero;
        break;
      case lightTealPrimary:
        backgroundColor = AppColors.lightTeal;
        foregroundColor = AppColors.tealBlue;
        break;
      case lightTealRoundPrimary:
        backgroundColor = AppColors.lightTeal;
        foregroundColor = AppColors.tealBlue;
        borderRadius = 30;
        break;
      case darkBluePrimary:
        backgroundColor = AppColors.darkBlue;
        break;
      case kakao:
        backgroundColor = AppColors.kakaoYellow;
        break;
      case outlined:
        backgroundColor = AppColors.white;
        break;
      case secondary:
        minimumSize = const Size.fromHeight(_secondaryHeight);
        textStyle = textTheme.medium16;
        break;
      case greySecondary:
        minimumSize = const Size.fromHeight(_secondaryHeight);
        backgroundColor = AppColors.grey150;
        foregroundColor = AppColors.grey900;
        textStyle = textTheme.medium16;
        break;
      case secondary2:
        borderRadius = 10;
        minimumSize = const Size.fromHeight(_secondaryHeight);
        padding = const EdgeInsets.symmetric(horizontal: 6);
        backgroundColor = AppColors.tealBlue;
        foregroundColor = AppColors.white;
        textStyle = textTheme.regular16;
        break;
      case darkerGreySecondary:
        borderRadius = 10;
        minimumSize = const Size.fromHeight(_secondaryHeight);
        padding = const EdgeInsets.symmetric(horizontal: 6);
        backgroundColor = AppColors.grey400;
        foregroundColor = AppColors.white;
        textStyle = textTheme.regular16;
        break;
      case tertiary:
        minimumSize = const Size.fromHeight(_tertiaryHeight);
        textStyle = textTheme.bold16;
        padding = EdgeInsets.zero;
        break;
      case lightTealTertiary:
        minimumSize = const Size.fromHeight(_tertiaryHeight);
        backgroundColor = AppColors.lightTeal;
        foregroundColor = AppColors.tealBlue;
        textStyle = textTheme.medium14;
        break;
      case darkBlueTertiary:
        minimumSize = const Size.fromHeight(_tertiaryHeight);
        backgroundColor = AppColors.darkBlue;
        foregroundColor = AppColors.white;
        textStyle = textTheme.medium16;
        break;
      case outlinedTertiary:
        minimumSize = const Size.fromHeight(_tertiaryHeight);
        backgroundColor = AppColors.white;
        foregroundColor = AppColors.primaryText;
        textStyle = textTheme.bold16;
        break;
      case columbiaBlueQuaternary:
        minimumSize = const Size.fromHeight(_quaternaryHeight);
        textStyle = textTheme.regular14;
        backgroundColor = AppColors.columbiaBlue;
        borderRadius = 30;
        padding = EdgeInsets.zero;
        break;
      case quaternary:
        minimumSize = const Size(60, _quaternaryHeight);
        textStyle = textTheme.regular14;
        backgroundColor = AppColors.tealBlue;
        foregroundColor = AppColors.white;
        borderRadius = 30;
        padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 7);
        break;
      case cyanQuaternary:
        minimumSize = const Size(60, _quaternaryHeight);
        textStyle = textTheme.regular14;
        backgroundColor = AppColors.cyan;
        foregroundColor = AppColors.white;
        borderRadius = 30;
        padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 7);
        break;
      case greyQuinary:
        minimumSize = const Size.fromHeight(_quinaryHeight);
        backgroundColor = AppColors.grey200;
        borderRadius = 5;
        foregroundColor = AppColors.grey900;
        break;
      case senary:
        minimumSize = const Size.fromHeight(_senaryHeight);
        borderRadius = 20;
        foregroundColor = AppColors.white;
        padding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 1);
        textStyle = textTheme.bold12;
        break;
      case peachSenary:
        minimumSize = const Size.fromHeight(_senaryHeight);
        borderRadius = 20;
        foregroundColor = AppColors.white;
        padding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 1);
        textStyle = textTheme.bold12;
        backgroundColor = AppColors.peach;
        break;
      case cyanSenary:
        minimumSize = const Size.fromHeight(_senaryHeight);
        backgroundColor = AppColors.cyan;
        borderRadius = 20;
        foregroundColor = AppColors.white;
        padding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 1);
        textStyle = textTheme.bold12;
        break;
      case yellowSenary:
        minimumSize = const Size.fromHeight(_senaryHeight);
        backgroundColor = AppColors.yellow;
        borderRadius = 20;
        foregroundColor = AppColors.white;
        padding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 1);
        textStyle = textTheme.bold12;
        break;
      case greySenary:
        minimumSize = const Size.fromHeight(_senaryHeight);
        backgroundColor = AppColors.grey400;
        borderRadius = 20;
        foregroundColor = AppColors.white;
        padding = const EdgeInsets.symmetric(horizontal: 8);
        textStyle = textTheme.bold12;
        break;
      case columbiaBlueSenary:
        minimumSize = const Size.fromHeight(_senaryHeight);
        backgroundColor = AppColors.columbiaBlue;
        borderRadius = 20;
        foregroundColor = AppColors.white;
        padding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 1);
        textStyle = textTheme.bold12;
        break;
    }
    return style?.copyWith(
      textStyle: MaterialStatePropertyAll(textStyle?.copyWith(height: 1)),
      foregroundColor: MaterialStatePropertyAll(foregroundColor),
      backgroundColor: backgroundColor.let((self) => MaterialStatePropertyAll(self)),
      minimumSize: MaterialStatePropertyAll(minimumSize),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? borderRadius)),
      ),
      padding: MaterialStatePropertyAll(padding),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      // To bypass Flutter's complex logic that reduces [padding]'s vertical value
      visualDensity: const VisualDensity(),
      overlayColor: backgroundColor.let(
        (self) => MaterialStateProperty.resolveWith<Color>((states) {
          return self.withOpacity(.2);
        }),
      ),
    );
  }
}
