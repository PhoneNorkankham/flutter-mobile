import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/splash/interactor/splash_bloc.dart';
import 'package:keepup/src/utils/app_assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          body: Stack(
            children: [
              Center(child: Image.asset(AppAssets.img_logo_png)),
              Positioned(
                left: 35,
                right: 35,
                bottom: 45,
                child: AppButton(
                  onPressed: () {
                    // TODO: Go to Login Page
                  },
                  buttonType: AppButtonType.getStarted,
                  title: LocaleKey.getStarted.tr,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
