import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/groups/components/group_view.dart';
import 'package:keepup/src/ui/groups/interactor/group_bloc.dart';
import 'package:keepup/src/utils/app_pages.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Get.find<GroupBloc>()..add(const GroupEvent.initial()),
      child: BlocListener<GroupBloc, GroupState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final GroupBloc bloc = context.read();
            bloc.add(const GroupEvent.clearPageCommand());
            if (pageCommand is PageCommandNavigation) {
              pageCommand.maybeMap(
                toPage: (value) => Get.find<NavigatorManager>()
                    .navigateToPage(value.page, args: value.argument)
                    .then((value) {
                  if (value.status &&
                      value.resultFromPage == AppPages.groupDetail &&
                      value.data is String) {
                    showSuccessToast(value.data.toString());
                  }
                }),
                orElse: () => pageCommandListeners(pageCommand),
              );
            } else {
              pageCommandListeners(pageCommand);
            }
          }
        },
        child: const GroupView(),
      ),
    );
  }
}
