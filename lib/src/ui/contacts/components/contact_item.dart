import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;
  final ValueChanged<Contact>? onPressed;

  const ContactItem({
    super.key,
    required this.contact,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return KeepUpItem(
      onPressed: () => onPressed?.call(contact),
      name: contact.name,
      avatar: contact.avatar,
      action: Text(
        LocaleKey.details.tr,
        style: context.appTextTheme.bold16.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
