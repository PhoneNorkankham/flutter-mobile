import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_header.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_item.dart';

class KeepUpTodayView extends StatelessWidget {
  const KeepUpTodayView({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      KeepUp(name: 'Rosa Baker', isDone: true),
      KeepUp(name: 'Ephraim Woft'),
      KeepUp(name: 'Maxwell Brady'),
    ];
    final groups = [
      KeepUp(name: 'Rudy Topics'),
      KeepUp(name: 'Billard Pools'),
      KeepUp(name: 'Friends'),
    ];

    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKey.keepUpToday.tr,
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
              const KeepUpTodayHeader(),
              const SizedBox(height: 28),
              KeepUpGroup(
                title: LocaleKey.contacts.tr,
                children: contacts.map((e) => KeepUpTodayItem(keepUp: e)).toList(),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 110,
                  child: AppButton(
                    buttonType: AppButtonType.keepUp,
                    title: LocaleKey.keepUp.tr,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              KeepUpGroup(
                title: LocaleKey.groups.tr,
                children: groups.map((e) => KeepUpTodayItem(keepUp: e)).toList(),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 110,
                  child: AppButton(
                    buttonType: AppButtonType.keepUp,
                    title: LocaleKey.keepUp.tr,
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
