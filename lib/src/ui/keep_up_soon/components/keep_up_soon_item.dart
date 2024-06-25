import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/locale/locale_key.dart';

class KeepUpSoonItem extends StatelessWidget {
  final String name;
  final String avatar;
  final VoidCallback? onPressed;
  final VoidCallback? onKeepUp;
  final DateTime? expiration;

  const KeepUpSoonItem({
    super.key,
    this.name = '',
    this.avatar = '',
    this.onPressed,
    this.onKeepUp,
    this.expiration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: KeepUpItem(
        onPressed: onPressed,
        name: name,
        avatar: avatar,
        expiration: expiration,
        action: SizedBox(
          width: 100,
          child: AppButton(
            onPressed: onKeepUp,
            buttonType: AppButtonType.greenKeepUp,
            title: LocaleKey.keepUp.tr,
          ),
        ),
      ),
    );
  }
}
