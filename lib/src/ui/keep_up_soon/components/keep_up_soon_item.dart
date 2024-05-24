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

  const KeepUpSoonItem({
    super.key,
    this.name = '',
    this.avatar = '',
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: KeepUpItem(
        name: name,
        action: SizedBox(
          width: 100,
          child: AppButton(
            onPressed: onPressed,
            buttonType: AppButtonType.greenKeepUp,
            title: LocaleKey.keepUp.tr,
          ),
        ),
      ),
    );
  }
}
