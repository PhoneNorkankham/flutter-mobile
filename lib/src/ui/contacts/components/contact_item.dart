import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class Contact {
  final String name;
  final String avatar;

  Contact({this.name = '', this.avatar = ''});
}

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return KeepUpItem(
      name: contact.name,
      action: Text(
        LocaleKey.details.tr,
        style: context.appTextTheme.bold16.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
