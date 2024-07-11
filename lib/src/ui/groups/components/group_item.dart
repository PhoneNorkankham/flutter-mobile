import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class GroupItem extends StatelessWidget {
  final Group group;
  final VoidCallback? onPressed;
  final VoidCallback? onKeepUpPressed;

  const GroupItem({
    super.key,
    required this.group,
    this.onPressed,
    this.onKeepUpPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      radius: 10,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.grey350,
                borderRadius: BorderRadius.circular(90),
                border: Border.all(
                  color: AppColors.grey350,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(3),
              child: AppCircleAvatar(radius: 22, url: group.avatar, text: group.name),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                group.name,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 100,
              child: AppButton(
                onPressed: onKeepUpPressed,
                buttonType: AppButtonType.keepUp,
                title: LocaleKey.keepUp.tr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
