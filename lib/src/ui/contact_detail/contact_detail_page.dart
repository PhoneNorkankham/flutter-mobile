import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/contact_detail/components/contact_detail_view.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContactDetailBloc(
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
      )..add(const ContactDetailEvent.initial()),
      child: BlocListener<ContactDetailBloc, ContactDetailState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final ContactDetailBloc bloc = context.read();
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            bloc.add(const ContactDetailEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const ContactDetailView(),
      ),
    );
  }
}
