import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/locale/locale_key.dart';

class KeepUpSoon {
  final String name;
  final String avatar;

  KeepUpSoon({this.name = '', this.avatar = ''});
}

class KeepUpSoonItem extends StatelessWidget {
  final KeepUpSoon keepUpSoon;

  const KeepUpSoonItem({super.key, required this.keepUpSoon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: KeepUpItem(
        name: keepUpSoon.name,
        action: SizedBox(
          width: 100,
          child: AppButton(
            buttonType: AppButtonType.greenKeepUp,
            title: LocaleKey.keepUp.tr,
          ),
        ),
      ),
    );
  }
}
