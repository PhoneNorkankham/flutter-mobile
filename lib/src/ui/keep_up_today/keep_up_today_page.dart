import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_view.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';

class KeepUpTodayPage extends StatelessWidget {
  const KeepUpTodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Get.find<KeepUpTodayBloc>()..add(const KeepUpTodayEvent.initial()),
      child: BlocListener<KeepUpTodayBloc, KeepUpTodayState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final KeepUpTodayBloc bloc = context.read();
            bloc.add(const KeepUpTodayEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const KeepUpTodayView(),
      ),
    );
  }
}
