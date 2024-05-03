import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/contacts/components/contact_view.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';

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
            pageCommandListeners(pageCommand);
          }
        },
        child: const ContactView(),
      ),
    );
  }
}
