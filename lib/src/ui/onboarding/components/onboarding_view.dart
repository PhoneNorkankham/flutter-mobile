import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/scrolling/expanded_child_scroll_view.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/onboarding/components/onboarding_groups.dart';
import 'package:keepup/src/ui/onboarding/components/onboarding_header.dart';
import 'package:keepup/src/ui/onboarding/components/onboarding_login_later.dart';
import 'package:keepup/src/ui/onboarding/components/onboarding_socials.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return AppBody(
          backgroundColor: AppColors.primary,
          pageState: PageState.success,
          isLoading: state.isLoading,
          success: Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppAppBar(title: LocaleKey.onboarding.tr),
            body: const ExpandedChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex: 3, child: SizedBox()),
                  OnboardingHeader(),
                  Expanded(flex: 2, child: SizedBox(height: 12)),
                  OnboardingGroups(),
                  Expanded(flex: 3, child: SizedBox(height: 12)),
                  OnboardingSocials(),
                  OnboardingLoginLater(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
