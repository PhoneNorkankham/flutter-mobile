import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/base/app_drawer.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/buttons/menu_button.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/groups/components/group_list.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class GroupView extends StatelessWidget {
  const GroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKey.groups.tr,
        actions: const [MenuButton()],
      ),
      body: BlocBuilder<GroupBloc, GroupState>(
        buildWhen: (previous, current) =>
            previous.pageState != current.pageState || previous.isLoading != current.isLoading,
        builder: (context, state) {
          final GroupBloc bloc = context.read();
          return AppBody(
            isLoading: state.isLoading,
            pageState: state.pageState,
            unFocusWhenTouchOutsideInput: true,
            success: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 26),
                AppSearchInput(onChanged: (value) => bloc.add(GroupEvent.onChangedKeyword(value))),
                const SizedBox(height: 10),
                const Expanded(child: GroupList()),
                const SizedBox(height: 15),
                Center(
                  child: AppButton(
                    onPressed: () => bloc.add(const GroupEvent.onGotoNewGroup()),
                    buttonType: AppButtonType.whiteCircle,
                    child: const Icon(Icons.add, size: 34),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          );
        },
      ),
      endDrawer: const AppDrawer(),
    );
  }
}
