import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewChatBottomSheet extends StatelessWidget {
  static Future<dynamic> show() => Get.bottomSheet(
        isScrollControlled: true,
        ignoreSafeArea: false,
        const NewChatBottomSheet(),
      );

  const NewChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewChatBloc(Get.find())..add(const NewChatEvent.initial()),
      child: BlocConsumer<NewChatBloc, NewChatState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final NewChatBloc bloc = context.read();
            bloc.add(const NewChatEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) => LoadingFullScreen(
          loading: state.isLoading,
          child: const NewChatView(),
        ),
      ),
    );
  }
}
