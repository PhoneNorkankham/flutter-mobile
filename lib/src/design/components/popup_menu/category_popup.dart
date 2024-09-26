import 'package:flutter/material.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';

class CategoryPopup extends StatelessWidget {
  final Category selectedCategory;
  final List<Category> categories;
  final ValueChanged<Category>? onChanged;
  final TextStyle? textStyle;

  const CategoryPopup({
    super.key,
    required this.selectedCategory,
    required this.categories,
    this.onChanged,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Category>(
      onSelected: (value) => onChanged?.call(value),
      initialValue: selectedCategory,
      child: Text(
        selectedCategory.name,
        style: textStyle ?? context.appTextTheme.bold16,
      ),
      itemBuilder: (context) => categories
          .map((e) => PopupMenuItem<Category>(
                value: e,
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: selectedCategory == e
                          ? Theme.of(context).colorScheme.tertiary
                          : Colors.transparent,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      e.name,
                      style: context.appTextTheme.medium16.copyWith(
                        color: selectedCategory == e
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
