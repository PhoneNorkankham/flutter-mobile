import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/keep_up/app_grid_item.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/layout_type.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/components/add_contacts_to_group_contacts.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';
import 'package:keepup/src/utils/app_shared.dart';

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

        return StreamBuilder<LayoutType>(
          stream: Get.find<AppShared>().watchLayoutType,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            }
            final LayoutType layoutType = snapshot.data ?? LayoutType.list;
            if (layoutType == LayoutType.grid) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Wrap(
                  children: contacts
                      .map((contact) => AppGridItem(
                            onPressed: () => bloc.add(AddMemberEvent.onSelectedContact(contact)),
                            avatarUrl: contact.avatar,
                            title: contact.name,
                            titleColor: Theme.of(context).colorScheme.onPrimary,
                            expiration: contact.expiration,
                          ))
                      .toList(),
                ),
              );
            } else {
              // Create sub tag
              final List<ContactSubTag> contactSubTags =
                  contacts.map((e) => ContactSubTag(e.name[0])).toList();

              // Show sub tag
              SuspensionUtil.setShowSuspensionStatus(contactSubTags);

              return AzListView(
                data: contactSubTags,
                itemCount: contactSubTags.length,
                itemBuilder: (context, index) {
                  final ContactSubTag contactSubTag = contactSubTags.elementAt(index);
                  final ContactRequest contact = contacts.elementAt(index);
                  return InkWell(
                    onTap: () => bloc.add(AddMemberEvent.onSelectedContact(contact)),
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
                              Flexible(
                                child: Text(
                                  contact.name,
                                  style: context.appTextTheme.bold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        );
      },
    );
  }
}
