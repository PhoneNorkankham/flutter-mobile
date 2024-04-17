import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/onboarding/components/group_item.dart';
import 'package:keepup/src/ui/onboarding/components/social_item.dart';
import 'package:keepup/src/utils/app_assets.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = [
      LocaleKey.family.tr,
      LocaleKey.friends.tr,
      LocaleKey.businessAssociates.tr,
    ];
    final socials = [
      AppAssets.ic_facebook_png,
      AppAssets.ic_linkin_png,
      AppAssets.ic_google_png,
    ];
    return AppBody(
      backgroundColor: AppColors.primary,
      pageState: PageState.success,
      success: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppAppBar(
          implyLeading: false,
          title: LocaleKey.onboarding.tr,
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.ic_filter_svg,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
                width: 20,
                height: 20,
                fit: BoxFit.scaleDown,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              Center(child: Image.asset(AppAssets.img_logo_png)),
              const SizedBox(height: 40),
              Text(
                LocaleKey.addContactsToGroupToKeepupEasily.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKey.groups.tr,
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              const SizedBox(height: 12),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => GroupItem(title: groups.elementAt(index)),
                separatorBuilder: (context, index) => const SizedBox(height: 18),
                itemCount: groups.length,
              ),
              const SizedBox(height: 60),
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
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
