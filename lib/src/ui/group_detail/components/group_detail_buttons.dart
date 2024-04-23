import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/locale/locale_key.dart';

class GroupDetailButtons extends StatelessWidget {
  const GroupDetailButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 145,
            child: AppButton(
              buttonType: AppButtonType.greenKeepUp,
              title: LocaleKey.save.tr,
            ),
          ),
          const Expanded(flex: 60, child: SizedBox(width: 12)),
          Expanded(
            flex: 145,
            child: AppButton(
              buttonType: AppButtonType.whiteKeepUp,
              title: LocaleKey.cancel.tr,
            ),
          ),
        ],
      ),
    );
  }
}
