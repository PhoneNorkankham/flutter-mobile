import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_view.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';

class KeepUpSoonPage extends StatelessWidget {
  const KeepUpSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = KeepUpSoonBloc();
    return BlocProvider(
      create: (_) => bloc..add(const KeepUpSoonEvent.initial()),
      child: BlocListener<KeepUpSoonBloc, KeepUpSoonState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            bloc.add(const KeepUpSoonEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const KeepUpSoonView(),
      ),
    );
  }
}
