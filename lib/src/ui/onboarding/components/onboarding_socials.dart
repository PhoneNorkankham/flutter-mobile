import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/social_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/onboarding/components/social_item.dart';

class OnboardingSocials extends StatelessWidget {
  const OnboardingSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LocaleKey.loginForAdditionalFeatures.tr,
          style: context.appTextTheme.bold16.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          LocaleKey.loginWith.tr,
          style: context.appTextTheme.bold16.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 26),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: SocialType.values
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SocialItem(type: e),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
