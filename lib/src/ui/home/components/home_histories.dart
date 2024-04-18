import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/onboarding/components/group_item.dart';

class HomeHistories extends StatelessWidget {
  const HomeHistories({super.key});

  @override
  Widget build(BuildContext context) {
    final histories = [
      LocaleKey.family.tr,
      LocaleKey.friends.tr,
      LocaleKey.businessAssociates.tr,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(
              Icons.history,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                LocaleKey.history.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        ...histories.map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: GroupItem(title: e),
            )),
      ],
    );
  }
}
