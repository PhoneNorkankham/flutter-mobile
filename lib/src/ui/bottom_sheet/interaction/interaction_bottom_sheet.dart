import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/components/interaction_view.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_bloc.dart';

class InteractionBottomSheet extends StatelessWidget {
  static Future<dynamic> show({required Contact contact}) {
    return Get.bottomSheet(
      enableDrag: true,
      InteractionBottomSheet(contact: contact),
    );
  }

  final Contact contact;

  const InteractionBottomSheet({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InteractionBloc(Get.find())..add(InteractionEvent.initial(contact)),
      child: BlocListener<InteractionBloc, InteractionState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final InteractionBloc bloc = context.read();
            bloc.add(const InteractionEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const InteractionView(),
      ),
    );
  }
}
