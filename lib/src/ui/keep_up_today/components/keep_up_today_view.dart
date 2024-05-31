import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/base/app_drawer.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_contacts.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_groups.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_header.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';

class KeepUpTodayView extends StatelessWidget {
  const KeepUpTodayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKey.today.tr,
        actions: const [MenuButton()],
      ),
      body: BlocBuilder<KeepUpTodayBloc, KeepUpTodayState>(
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) {
          return AppBody(
            isLoading: state.isLoading,
            pageState: PageState.success,
            success: const SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 24),
                  KeepUpTodayHeader(),
                  KeepUpTodayContacts(),
                  KeepUpTodayGroups(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
      endDrawer: const AppDrawer(),
    );
  }
}
