import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/interactor/new_contact_bloc.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/new_contact/components/new_contact_view.dart';

class NewContactBottomSheet extends StatelessWidget {
  static Future<dynamic> show() => Get.bottomSheet(
        isScrollControlled: true,
        ignoreSafeArea: false,
        const NewContactBottomSheet(),
      );

  const NewContactBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewContactBloc(
        Get.find(),
        Get.find(),
        Get.find(),
      )..add(const NewContactEvent.initial()),
      child: BlocConsumer<NewContactBloc, NewContactState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final NewContactBloc bloc = context.read();
            bloc.add(const NewContactEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) => LoadingFullScreen(
          loading: state.isLoading,
          child: const NewContactView(),
        ),
      ),
    );
  }
}
