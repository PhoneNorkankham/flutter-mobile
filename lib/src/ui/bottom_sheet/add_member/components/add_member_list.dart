import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';

class AddMemberList extends StatelessWidget {
  const AddMemberList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddMemberBloc>();
    return BlocBuilder<AddMemberBloc, AddMemberState>(
      buildWhen: (previous, current) =>
          previous.pageState != current.pageState ||
          previous.getFilterContacts() != current.getFilterContacts(),
      builder: (context, state) {
        if (state.pageState == PageState.loading) {
          return const Center(child: CustomCircularProgress());
        }
        final List<ContactRequest> contacts = state.getFilterContacts();
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final ContactRequest contact = contacts.elementAt(index);
            return KeepUpItem(
              onPressed: () => bloc.add(AddMemberEvent.onSelectedContact(contact)),
              name: contact.name,
              avatar: contact.avatar,
              file: contact.file,
              expiration: contact.expiration,
              action: Container(
                width: 21,
                height: 21,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: AppColors.grey50),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      },
    );
  }
}
