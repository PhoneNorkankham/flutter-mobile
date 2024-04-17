import 'package:flutter/material.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';

enum AppButtonType {
  /// NOTE: Name without color is teal blue as default
  // Height 40
  primary,
  whitePrimary,
  outlined,

  // Height 70
  getStarted;

  bool get isOutlined => this == outlined;

  ButtonStyle? buttonStyle(BuildContext context, double? radius) {
    final style =
        isOutlined ? OutlinedButtonTheme.of(context).style : ElevatedButtonTheme.of(context).style;
    final textTheme = context.appTextTheme;
    Color backgroundColor = AppColors.primary;
    Color? foregroundColor;
    Size? minimumSize = const Size.fromHeight(40);
    double borderRadius = 10;
    TextStyle? textStyle;
    EdgeInsets? padding;

    switch (this) {
      case primary:
        padding = EdgeInsets.zero;
        break;
      case whitePrimary:
        padding = EdgeInsets.zero;
        backgroundColor = AppColors.white;
        break;
      case outlined:
        backgroundColor = AppColors.white;
        break;
      case getStarted:
        backgroundColor = AppColors.white;
        foregroundColor = AppColors.primary;
        borderRadius = 60;
        minimumSize = const Size.fromHeight(70);
        padding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 1);
        textStyle = textTheme.medium20.copyWith(color: foregroundColor);
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
