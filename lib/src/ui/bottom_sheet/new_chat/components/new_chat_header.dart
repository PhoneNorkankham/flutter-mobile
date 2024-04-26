import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class NewChatHeader extends StatelessWidget {
  const NewChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 28),
        Expanded(
          child: Text(
            LocaleKey.newChat.tr,
            style: context.appTextTheme.bold16.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 28,
          height: 28,
          child: InkWell(
            onTap: () => Get.back(),
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Icon(
                Icons.close,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
