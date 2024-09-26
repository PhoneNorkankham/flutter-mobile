import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';

class FrequencyIntervalPopup extends StatelessWidget {
  final FrequencyIntervalType type;
  final ValueChanged<FrequencyIntervalType>? onChanged;
  final TextStyle? textStyle;

  const FrequencyIntervalPopup({
    super.key,
    required this.type,
    this.onChanged,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<FrequencyIntervalType>(
      onSelected: (value) => onChanged?.call(value),
      initialValue: type,
      child: Text(
        type.title,
        style: textStyle ?? context.appTextTheme.bold16,
      ),
      itemBuilder: (context) => FrequencyIntervalType.values
          .map((e) => PopupMenuItem<FrequencyIntervalType>(
                value: e,
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color:
                          type == e ? Theme.of(context).colorScheme.tertiary : Colors.transparent,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      e.title,
                      style: context.appTextTheme.medium16.copyWith(
                        color: type == e
                            ? Theme.of(context).colorScheme.tertiary
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
