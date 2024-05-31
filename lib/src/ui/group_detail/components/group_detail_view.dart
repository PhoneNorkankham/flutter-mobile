import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/base/app_drawer.dart';
import 'package:keepup/src/design/components/bottom_navigation/app_bottom_navigation_bar.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_buttons.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_header.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_interval.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_members.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailView extends StatelessWidget {
  const GroupDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupDetailBloc, GroupDetailState>(
      buildWhen: (previous, current) =>
          previous.groupType != current.groupType ||
          previous.pageState != current.pageState ||
          previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Scaffold(
          appBar: AppAppBar(
            title: state.groupType.title,
            implyLeading: true,
            actions: const [MenuButton()],
          ),
          body: AppBody(
            isLoading: state.isLoading,
            pageState: state.pageState,
            unFocusWhenTouchOutsideInput: true,
            success: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GroupDetailHeader(),
                  SizedBox(height: 26),
                  GroupDetailInterval(),
                  SizedBox(height: 26),
                  GroupDetailMembers(),
                  SizedBox(height: 46),
                  SizedBox(height: 14),
                  GroupDetailButtons(),
                  SizedBox(height: 26),
                ],
              ),
            ),
          ),
          endDrawer: const AppDrawer(),
          bottomNavigationBar: const AppBottomNavigationBar(selectedType: BottomNavType.groups),
        );
      },
    );
  }
}
