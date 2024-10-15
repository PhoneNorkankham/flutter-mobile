import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';

class PhoneLabelPopup extends StatelessWidget {
  final String selectedLabel;
  final List<String> labels;
  final ValueChanged<String>? onChanged;

  const PhoneLabelPopup({
    super.key,
    required this.selectedLabel,
    required this.labels,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) => onChanged?.call(value),
      initialValue: selectedLabel,
      child: Container(
        constraints: const BoxConstraints(minWidth: 72),
        padding: const EdgeInsets.only(left: 12.0, right: 6.0),
        child: Text(selectedLabel),
      ),
      itemBuilder: (context) => labels
          .map((label) => PopupMenuItem<String>(
                value: label,
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: selectedLabel == label
                          ? Theme.of(context).colorScheme.tertiary
                          : Colors.transparent,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      label,
                      style: context.appTextTheme.medium16.copyWith(
                        color: selectedLabel == label
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
