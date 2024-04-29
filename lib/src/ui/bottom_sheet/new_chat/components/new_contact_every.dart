import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class DayStatus {
  final String text;
  final bool isActive;

  const DayStatus(this.text, this.isActive);
}

class NewContactEvery extends StatelessWidget {
  const NewContactEvery({super.key});

  @override
  Widget build(BuildContext context) {
    final dayStatus = [
      const DayStatus('M', true),
      const DayStatus('T', false),
      const DayStatus('W', false),
      const DayStatus('T', false),
      const DayStatus('F', true),
      const DayStatus('S', true),
      const DayStatus('S', true),
    ];

    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        Text(
          LocaleKey.every.tr,
          style: context.appTextTheme.bold16.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: dayStatus
                  .map((e) => Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          color: e.isActive ? AppColors.lightGreen : AppColors.orange,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        padding: const EdgeInsets.all(2),
                        child: FittedBox(
                          child: Center(
                            child: Text(
                              e.text,
                              style: context.appTextTheme.medium14.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
