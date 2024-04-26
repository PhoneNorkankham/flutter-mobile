import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/new_chat_category_type.dart';

class NewChatCategory extends StatelessWidget {
  const NewChatCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final NewChatCategoryType type = NewChatCategoryType.values.elementAt(index);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    type.icon,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    type.title,
                    style: context.appTextTheme.medium16.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => Container(
          height: 1,
          margin: const EdgeInsets.only(left: 68, right: 16),
          color: Theme.of(context).colorScheme.primary,
        ),
        itemCount: NewChatCategoryType.values.length,
      ),
    );
  }
}
