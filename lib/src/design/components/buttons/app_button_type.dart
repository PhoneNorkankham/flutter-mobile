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
  greenKeepUp,
  whiteKeepUp,

  // Height 50
  whiteCircle,

  // Height 70
  getStarted;

  bool get isOutlined => this == outlined;

  ButtonStyle? buttonStyle(BuildContext context, double? radius) {
    final style =
        isOutlined ? OutlinedButtonTheme.of(context).style : ElevatedButtonTheme.of(context).style;
    final textTheme = context.appTextTheme;
    Color backgroundColor = AppColors.primary;
    Color foregroundColor = AppColors.white;
    Size minimumSize = const Size.fromHeight(40);
    double borderRadius = 10;
    TextStyle textStyle = textTheme.medium16.copyWith(color: foregroundColor);
    EdgeInsets? padding;

    switch (this) {
      case primary:
        padding = EdgeInsets.zero;
        break;
      case whitePrimary:
        padding = EdgeInsets.zero;
        break;
      case outlined:
        backgroundColor = AppColors.white;
        foregroundColor = AppColors.primary;
        break;
      case greenKeepUp:
        padding = EdgeInsets.zero;
        backgroundColor = AppColors.lightGreen;
        borderRadius = 10;
        padding = const EdgeInsets.symmetric(horizontal: 8);
        break;
      case whiteKeepUp:
        padding = EdgeInsets.zero;
        backgroundColor = AppColors.white;
        foregroundColor = AppColors.lightGreen;
        borderRadius = 10;
        padding = const EdgeInsets.symmetric(horizontal: 8);
        break;
      case whiteCircle:
        padding = EdgeInsets.zero;
        backgroundColor = AppColors.white;
        foregroundColor = AppColors.primary;
        borderRadius = 50;
        minimumSize = const Size.fromRadius(25);
        padding = const EdgeInsets.symmetric(horizontal: 8);
        textStyle = textTheme.medium16.copyWith(color: foregroundColor);
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
      textStyle: WidgetStatePropertyAll(textStyle.copyWith(height: 1)),
      foregroundColor: WidgetStatePropertyAll(foregroundColor),
      backgroundColor: backgroundColor.let((self) => WidgetStatePropertyAll(self)),
      minimumSize: WidgetStatePropertyAll(minimumSize),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? borderRadius)),
      ),
      side: WidgetStatePropertyAll(BorderSide(
        color: isOutlined ? foregroundColor : Colors.transparent,
      )),
      padding: WidgetStatePropertyAll(padding),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      // To bypass Flutter's complex logic that reduces [padding]'s vertical value
      visualDensity: const VisualDensity(),
      overlayColor: backgroundColor.let(
        (self) => WidgetStateProperty.resolveWith<Color>((states) {
          return self.withOpacity(.2);
        }),
      ),
    );
  }
}
