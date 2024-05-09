import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/add_contacts/components/add_contacts_view.dart';
import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';

class AddContactsPage extends StatelessWidget {
  const AddContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddContactsBloc(
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
      )..add(const AddContactsEvent.initial()),
      child: BlocListener<AddContactsBloc, AddContactsState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            context.read<AddContactsBloc>().add(const AddContactsEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const AddContactsView(),
      ),
    );
  }
}
