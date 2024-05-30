import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/locale/locale_key.dart';

class FrequencyInterval extends StatelessWidget {
  final FrequencyIntervalType type;
  final ValueChanged<FrequencyIntervalType>? onChanged;
  final Color? textColor;

  const FrequencyInterval({
    super.key,
    required this.type,
    this.onChanged,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            LocaleKey.frequency.tr,
            style: context.appTextTheme.bold18.copyWith(
              color: textColor ?? Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(width: 20),
        PopupMenuButton<FrequencyIntervalType>(
          onSelected: (value) => onChanged?.call(value),
          initialValue: type,
          child: Text(
            type.title,
            style: context.appTextTheme.bold16.copyWith(
              color: textColor ?? Theme.of(context).colorScheme.primary,
            ),
          ),
          itemBuilder: (context) => FrequencyIntervalType.values
              .map((e) => PopupMenuItem<FrequencyIntervalType>(
                    value: e,
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 20,
                          color: type == e
                              ? Theme.of(context).colorScheme.primary
                              : Colors.transparent,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          e.title,
                          style: context.appTextTheme.medium16.copyWith(
                            color: type == e ? Theme.of(context).colorScheme.primary : null,
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
