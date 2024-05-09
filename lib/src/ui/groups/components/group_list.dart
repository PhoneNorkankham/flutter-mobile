import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/ui/groups/components/group_item.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class GroupList extends StatelessWidget {
  const GroupList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupBloc, GroupState>(
      buildWhen: (previous, current) => previous.getFilterGroups() != current.getFilterGroups(),
      builder: (context, state) {
        final List<Group> groups = state.getFilterGroups();
        final GroupBloc bloc = context.read<GroupBloc>();
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          itemBuilder: (context, index) => GroupItem(
            onPressed: (group) => bloc.add(GroupEvent.onGotoGroupDetails(group)),
            group: groups.elementAt(index),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 4),
          itemCount: groups.length,
        );
      },
    );
  }
}
