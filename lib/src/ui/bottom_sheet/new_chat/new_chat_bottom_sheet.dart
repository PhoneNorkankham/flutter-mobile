import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/add_contacts/usecases/add_contacts_use_case.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';
import 'package:keepup/src/utils/app_pages.dart';

class NewChatBottomSheet extends StatelessWidget {
  static Future<dynamic> show() {
    Get.put(AddContactsUseCase(Get.find()));
    return Get.bottomSheet(
      isScrollControlled: true,
      ignoreSafeArea: false,
      const NewChatBottomSheet(),
    );
  }

  const NewChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewChatBloc(
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
      )..add(const NewChatEvent.initial()),
      child: BlocConsumer<NewChatBloc, NewChatState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final NewChatBloc bloc = context.read();
            bloc.add(const NewChatEvent.clearPageCommand());
            if (pageCommand is PageCommandNavigation) {
              pageCommand.maybeMap(
                toPage: (value) => Get.find<NavigatorManager>()
                    .navigateToPage(value.page, args: value.argument)
                    .then((value) {
                  if (AppPages.addContacts == value.resultFromPage && value.status) {
                    showSuccessToast(LocaleKey.addContactsToGroupSuccessfully.tr);
                  }
                }),
                orElse: () => pageCommandListeners(pageCommand),
              );
            } else {
              pageCommandListeners(pageCommand);
            }
          }
        },
        buildWhen: (previous, current) =>
            previous.tabType != current.tabType || previous.isLoading != current.isLoading,
        builder: (context, state) => LoadingFullScreen(
          loading: state.isLoading,
          child: IndexedStack(
            index: state.tabType.index,
            children: NewChatTabType.values.map((e) => e.page).toList(),
          ),
        ),
      ),
    );
  }
}
