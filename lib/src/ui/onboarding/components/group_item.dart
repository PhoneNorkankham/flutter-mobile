import 'package:flutter/material.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';

class GroupItem extends StatelessWidget {
  final String title;

  const GroupItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 60),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Row(
        children: [
          const Icon(Icons.person, size: 30, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: context.appTextTheme.bold16.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Icon(Icons.add_circle, size: 24, color: Theme.of(context).colorScheme.onPrimary),
        ],
      ),
    );
  }
}
