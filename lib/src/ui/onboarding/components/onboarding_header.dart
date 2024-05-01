import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_assets.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Image.asset(AppAssets.img_logo_png)),
        const SizedBox(height: 40),
        Text(
          LocaleKey.addContactsToGroupToKeepupEasily.tr,
          style: context.appTextTheme.bold16.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
