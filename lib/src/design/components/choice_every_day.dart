import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/choice_every_day_data.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class ChoiceEveryDay extends StatelessWidget {
  final List<ChoiceEveryDayData> everyDays;
  final ValueChanged<List<ChoiceEveryDayData>> onChanged;
  final Color? textColor;

  const ChoiceEveryDay({
    super.key,
    required this.everyDays,
    required this.onChanged,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        Text(
          LocaleKey.every.tr,
          style: context.appTextTheme.bold16.copyWith(
            color: textColor ?? Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: everyDays
                  .map((e) => GestureDetector(
                        onTap: () {
                          final newEveryDays = [...everyDays];
                          final index = everyDays.indexOf(e);
                          newEveryDays.replaceRange(
                            index,
                            index + 1,
                            [e.copyWith(isActive: !e.isActive)],
                          );
                          onChanged.call(newEveryDays);
                        },
                        child: Container(
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
                                  color: textColor ?? Theme.of(context).colorScheme.onPrimary,
                                ),
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
