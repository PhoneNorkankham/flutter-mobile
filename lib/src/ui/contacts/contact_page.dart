import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/managers/navigator_manager.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/contacts/components/contact_view.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';
import 'package:keepup/src/utils/app_pages.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContactBloc(Get.find())..add(const ContactEvent.initial()),
      child: BlocListener<ContactBloc, ContactState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            context.read<ContactBloc>().add(const ContactEvent.clearPageCommand());
            if (pageCommand is PageCommandNavigation) {
              pageCommand.maybeMap(
                toPage: (value) => Get.find<NavigatorManager>()
                    .navigateToPage(value.page, args: value.argument)
                    .then((value) {
                  if (value.resultFromPage == AppPages.contactDetail &&
                      value.status &&
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
        child: const ContactView(),
      ),
    );
  }
}
