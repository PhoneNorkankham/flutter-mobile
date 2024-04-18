import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/home/components/home_notification_item.dart';

class HomeNotifications extends StatelessWidget {
  const HomeNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      'You has 2 contacts to keep up today',
      'You kept up with 15 contacts this week',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(
              Icons.notifications_none,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                LocaleKey.notifications.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ...notifications.map((e) => HomeNotificationItem(message: e)),
      ],
    );
  }
}
