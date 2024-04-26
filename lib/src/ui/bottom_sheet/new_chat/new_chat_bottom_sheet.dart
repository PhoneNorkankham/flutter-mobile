import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewChatBottomSheet extends StatelessWidget {
  static Future<dynamic> show() {
    return Get.bottomSheet(
      isScrollControlled: true,
      ignoreSafeArea: false,
      const NewChatBottomSheet(),
    );
  }

  const NewChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = NewChatBloc();
    return BlocProvider(
      create: (_) => bloc..add(const NewChatEvent.initial()),
      child: BlocListener<NewChatBloc, NewChatState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            bloc.add(const NewChatEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const NewChatView(),
      ),
    );
  }
}
