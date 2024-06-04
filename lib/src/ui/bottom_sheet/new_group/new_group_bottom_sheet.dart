import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/components/new_group_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/interactor/new_group_bloc.dart';

class NewGroupBottomSheet extends StatelessWidget {
  static Future<dynamic> show() => Get.bottomSheet(
        isScrollControlled: true,
        ignoreSafeArea: false,
        const NewGroupBottomSheet(),
      );

  const NewGroupBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewGroupBloc(
        Get.find(),
        Get.find(),
      )..add(const NewGroupEvent.initial()),
      child: BlocConsumer<NewGroupBloc, NewGroupState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final NewGroupBloc bloc = context.read();
            bloc.add(const NewGroupEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) => LoadingFullScreen(
          loading: state.isLoading,
          child: const NewGroupView(),
        ),
      ),
    );
  }
}
