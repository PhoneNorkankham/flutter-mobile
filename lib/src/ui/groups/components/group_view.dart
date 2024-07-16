import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
import 'package:keepup/src/design/components/buttons/layout_button.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/groups/components/group_list.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class GroupView extends StatelessWidget {
  const GroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                AppSearchInput(
                  hintText: LocaleKey.searchGroups.tr,
                  onChanged: (value) => bloc.add(GroupEvent.onChangedKeyword(value)),
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: LayoutButton(),
                  ),
                ),
                const Expanded(child: GroupList()),
                const SizedBox(height: 15),
              ],
            ),
          );
        },
      ),
    );
  }
}
