import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class KeepUpSoonHeader extends StatelessWidget {
  const KeepUpSoonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LocaleKey.keepUpSoon.tr,
          style: context.appTextTheme.bold36.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: AppButton(
                buttonType: AppButtonType.greenKeepUp,
                title: LocaleKey.groups.tr,
              ),
            ),
            const SizedBox(width: 6),
            SizedBox(
              width: 100,
              child: AppButton(
                buttonType: AppButtonType.whiteKeepUp,
                title: LocaleKey.individual.tr,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
