import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/splash/interactor/splash_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final appTextTheme = context.appTextTheme;
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.tealBlue,
          body: Center(
            child: Column(
              children: [
                const Spacer(flex: 150),
                const Spacer(flex: 97),
                Text(
                  LocaleKey.appName.tr,
                  style: appTextTheme.medium16.copyWith(
                    color: AppColors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const Spacer(flex: 270),
              ],
            ),
          ),
        );
      },
    );
  }
}
