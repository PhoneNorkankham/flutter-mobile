import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/design/components/base/app_body.dart';
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
          // final GroupBloc bloc = context.read();
          return AppBody(
            isLoading: state.isLoading,
            pageState: state.pageState,
            unFocusWhenTouchOutsideInput: true,
            success: const GroupList(),
            // success: Column(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            //   children: [
            //     const SizedBox(height: 26),
            //     AppSearchInput(
            //       hintText: LocaleKey.searchGroups.tr,
            //       onChanged: (value) => bloc.add(GroupEvent.onChangedKeyword(value)),
            //     ),
            //     const SizedBox(height: 24),
            //     const Align(
            //       alignment: Alignment.centerRight,
            //       child: Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 20),
            //         child: LayoutButton(),
            //       ),
            //     ),
            //     const Expanded(child: GroupList()),
            //   ],
            // ),
          );
        },
      ),
    );
  }
}
