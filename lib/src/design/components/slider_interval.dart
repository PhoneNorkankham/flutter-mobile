import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class SliderInterval extends StatelessWidget {
  final double interval;
  final ValueChanged<double>? onChanged;
  final Color? textColor;

  const SliderInterval({
    super.key,
    required this.interval,
    this.onChanged,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                LocaleKey.setInterval.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: textColor ?? Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Text(
              '${interval < 0 ? 0 : interval.toInt()} Days',
              style: context.appTextTheme.bold16.copyWith(
                color: textColor ?? Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
        SliderTheme(
          data: const SliderThemeData(
            trackHeight: 15,
            trackShape: RectangularSliderTrackShape(),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          ),
          child: Slider(
            value: interval < 0 ? 0 : min(interval, 60),
            max: 60,
            divisions: 60,
            activeColor: AppColors.orange,
            thumbColor: Theme.of(context).colorScheme.onPrimary,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}