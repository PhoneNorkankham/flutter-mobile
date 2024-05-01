import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/onboarding/components/social_item.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';
import 'package:keepup/src/utils/app_assets.dart';

class OnboardingSocials extends StatelessWidget {
  const OnboardingSocials({super.key});

  @override
  Widget build(BuildContext context) {
    final socials = [
      AppAssets.ic_facebook_png,
      AppAssets.ic_linkin_png,
      AppAssets.ic_google_png,
    ];
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      buildWhen: (previous, current) => previous.loggedInData != current.loggedInData,
      builder: (context, state) {
        return state.loggedInData.isAnonymous
            ? Column(
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
                    children: socials
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SocialItem(pathIcon: e),
                            ))
                        .toList(),
                  ),
                ],
              )
            : const SizedBox();
      },
    );
  }
}
