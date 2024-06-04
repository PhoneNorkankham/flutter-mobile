import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/ui//bottom_sheet/add_contacts_to_group/interactor/add_contacts_to_group_bloc.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/components/add_contacts_to_group_view.dart';

class AddContactsToGroupBottomSheet extends StatelessWidget {
  static Future<dynamic> show({
    Group? group,
    List<ContactRequest> selectedContacts = const [],
  }) {
    return Get.bottomSheet(
      isScrollControlled: true,
      ignoreSafeArea: false,
      AddContactsToGroupBottomSheet(group: group, selectedContacts: selectedContacts),
    );
  }

  final Group? group;
  final List<ContactRequest> selectedContacts;

  const AddContactsToGroupBottomSheet({
    super.key,
    required this.group,
    required this.selectedContacts,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddContactsToGroupBloc(
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
      )..add(AddContactsToGroupEvent.initial(group, selectedContacts)),
      child: BlocConsumer<AddContactsToGroupBloc, AddContactsToGroupState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final AddContactsToGroupBloc bloc = context.read();
            bloc.add(const AddContactsToGroupEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) => LoadingFullScreen(
          loading: state.isLoading,
          child: const AddMemberView(),
        ),
      ),
    );
  }
}
