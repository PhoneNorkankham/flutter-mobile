import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/base/app_drawer.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/home/components/home_header.dart';
import 'package:keepup/src/ui/home/components/home_histories.dart';
import 'package:keepup/src/ui/home/components/home_notifications.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKey.homeScreen.tr,
        actions: const [MenuButton()],
      ),
      body: const AppBody(
        pageState: PageState.success,
        success: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 24),
              HomeHeader(),
              SizedBox(height: 28),
              HomeHistories(),
              SizedBox(height: 28),
              HomeNotifications(),
            ],
          ),
        ),
      ),
      endDrawer: const AppDrawer(),
    );
  }
}
