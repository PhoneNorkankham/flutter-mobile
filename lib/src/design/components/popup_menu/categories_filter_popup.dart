import 'package:flutter/material.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';

class CategoriesFilterPopup extends StatelessWidget {
  final Category selectedCategory;
  final List<Category> categories;
  final ValueChanged<Category> onChanged;

  const CategoriesFilterPopup({
    super.key,
    required this.selectedCategory,
    required this.categories,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Category>(
      onSelected: (value) => onChanged.call(value),
      initialValue: selectedCategory,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.filter_list),
            Text(
              ' - ${selectedCategory.name}',
              style: context.appTextTheme.medium16,
            ),
            const SizedBox(width: 4),
          ],
        ),
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
