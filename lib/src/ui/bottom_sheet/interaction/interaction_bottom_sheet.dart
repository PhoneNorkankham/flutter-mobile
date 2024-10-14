import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/components/interaction_view.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_bloc.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class InteractionBottomSheet extends StatelessWidget {
  static Future<bool> show({required Contact contact}) {
    return Get.bottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      InteractionBottomSheet(contact: contact),
    ).then((value) {
      if (value is PopResult && value.status && value.data is String) {
        showSuccessToast(value.data);
        return true;
      } else {
        return false;
      }
    });
  }

  final Contact contact;

  const InteractionBottomSheet({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InteractionBloc(
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
      )..add(InteractionEvent.initial(contact)),
      child: BlocListener<InteractionBloc, InteractionState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final InteractionBloc bloc = context.read();
            bloc.add(const InteractionEvent.clearPageCommand());
            if (pageCommand is PageCommandNavigation) {
              pageCommand.maybeMap(
                toPage: (value) => Get.find<NavigatorManager>()
                    .navigateToPage(value.page, args: value.argument)
                    .then((value) {
                  if (value.status && value.data is String) {
                    Get.back(result: value);
                  }
                }),
                orElse: () => pageCommandListeners(pageCommand),
              );
            } else {
              pageCommandListeners(pageCommand);
            }
          }
        },
        child: const InteractionView(),
      ),
    );
  }
}
