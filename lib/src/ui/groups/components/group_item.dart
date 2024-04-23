import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class Group {
  final String name;
  final String avatar;

  Group({this.name = '', this.avatar = ''});
}

class GroupItem extends StatelessWidget {
  final Group group;

  const GroupItem({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return KeepUpItem(
      name: group.name,
      action: Text(
        LocaleKey.details.tr,
        style: context.appTextTheme.bold16.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
