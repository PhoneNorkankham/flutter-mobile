import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_header.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_item.dart';

class KeepUpSoonView extends StatelessWidget {
  const KeepUpSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    final inAWeek = [
      KeepUpSoon(name: 'Family'),
      KeepUpSoon(name: 'Friends'),
      KeepUpSoon(name: 'Meal Ides'),
      KeepUpSoon(name: 'Makeup Artists'),
    ];
    final inAMonth = [
      KeepUpSoon(name: 'English Class'),
      KeepUpSoon(name: 'Instant Photos'),
      KeepUpSoon(name: 'Cooking Fans'),
    ];

    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKey.keepUpSoon.tr,
        implyLeading: true,
        actions: const [MenuButton()],
      ),
      body: AppBody(
        pageState: PageState.success,
        success: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              const KeepUpSoonHeader(),
              const SizedBox(height: 28),
              KeepUpGroup(
                title: LocaleKey.inAWeek.tr,
                children: inAWeek.map((e) => KeepUpSoonItem(keepUpSoon: e)).toList(),
              ),
              const SizedBox(height: 28),
              KeepUpGroup(
                title: LocaleKey.inAMonth.tr,
                children: inAMonth.map((e) => KeepUpSoonItem(keepUpSoon: e)).toList(),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(selectedType: BottomNavType.keepUpSoon),
    );
  }
}
