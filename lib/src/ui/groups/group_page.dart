import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/groups/components/group_view.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = GroupBloc();
    return BlocProvider(
      create: (_) => bloc..add(const GroupEvent.initial()),
      child: BlocListener<GroupBloc, GroupState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            bloc.add(const GroupEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const GroupView(),
      ),
    );
  }
}