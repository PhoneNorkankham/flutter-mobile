import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/components/add_contacts_to_group_contacts.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';
import 'package:keepup/src/utils/app_utils.dart';

class AddMemberList extends StatelessWidget {
  const AddMemberList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddMemberBloc>();
    return GestureDetector(
      onPanDown: (_) => Get.focusScope?.unfocus(),
      child: BlocBuilder<AddMemberBloc, AddMemberState>(
        buildWhen: (previous, current) =>
            previous.pageState != current.pageState ||
            previous.selectedContacts != current.selectedContacts ||
            previous.getFilterContacts() != current.getFilterContacts(),
        builder: (context, state) {
          if (state.pageState == PageState.loading) {
            return const Center(child: CustomCircularProgress());
          }
          final List<ContactRequest> selectedContacts = state.selectedContacts;
          final List<ContactRequest> contacts = state.getFilterContacts();
          contacts.sort((a, b) => AppUtils.compareAToZToOther(a.name, b.name));

          // Create sub tag from contacts
          final List<ContactSubTag> contactSubTags = contacts.map((e) {
            String firstChar = e.name[0];
            // Check the first character is not from A-Z
            bool isLetter = RegExp(r'^[A-Z]$').hasMatch(firstChar);
            return ContactSubTag(isLetter ? firstChar : '#');
          }).toList();

          // Show sub tag
          SuspensionUtil.setShowSuspensionStatus(contactSubTags);

          return AzListView(
            data: contactSubTags,
            itemCount: contactSubTags.length,
            itemBuilder: (context, index) {
              final ContactSubTag contactSubTag = contactSubTags.elementAt(index);
              final ContactRequest contact = contacts.elementAt(index);
              final bool isSelected = selectedContacts.contains(contact);
              return InkWell(
                onTap: () {
                  Get.focusScope?.unfocus();
                  if (isSelected) {
                    bloc.add(AddMemberEvent.onRemovedContact(contact));
                  } else {
                    bloc.add(AddMemberEvent.onSelectedContact(contact));
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Offstage(
                      offstage: contactSubTag.isShowSuspension != true,
                      child: Container(
                        color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 40,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text(contactSubTag.getSuspensionTag()),
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(minHeight: 60),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppCircleAvatar(
                            radius: 20,
                            url: contact.avatar,
                            text: contact.name,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              contact.name,
                              style: context.appTextTheme.bold16,
                            ),
                          ),
                          const SizedBox(width: 8),
                          isSelected
                              ? const Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                )
                              : const Icon(
                                  Icons.circle_outlined,
                                  color: Colors.grey,
                                ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
