import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/keep_up/app_grid_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/layout_type.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/components/add_contacts_to_group_contacts.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';
import 'package:keepup/src/utils/app_shared.dart';

class NewChatContacts extends StatelessWidget {
  const NewChatContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final NewChatBloc bloc = context.read();
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.filterContacts != current.filterContacts,
      builder: (context, state) {
        final List<Contact> contacts = state.filterContacts;

        return StreamBuilder<LayoutType>(
          stream: Get.find<AppShared>().watchLayoutType,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            }
            final LayoutType layoutType = snapshot.data ?? LayoutType.list;
            if (layoutType == LayoutType.grid) {
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Wrap(
                  children: contacts
                      .map((contact) => FutureBuilder<int>(
                            future: bloc.getDaysOfFrequency(contact.groupId),
                            builder: (context, snapshot) {
                              final int totalDays = snapshot.data ?? 0;
                              return AppGridItem(
                                onPressed: () => InteractionBottomSheet.show(contact: contact),
                                avatarUrl: contact.avatar,
                                title: contact.name,
                                titleColor: Theme.of(context).colorScheme.onPrimary,
                                percent: contact.getMoonPercent(totalDays),
                              );
                            },
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
                indexBarData: const [],
                itemCount: contactSubTags.length,
                itemBuilder: (context, index) {
                  final ContactSubTag contactSubTag = contactSubTags.elementAt(index);
                  final Contact contact = contacts.elementAt(index);
                  return InkWell(
                    onTap: () => InteractionBottomSheet.show(contact: contact),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Offstage(
                          offstage: contactSubTag.isShowSuspension != true,
                          child: Container(
                            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 40, top: 10, bottom: 10),
                            child: Text(contactSubTag.getSuspensionTag()),
                          ),
                        ),
                        Container(
                          constraints: const BoxConstraints(minHeight: 60),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              FutureBuilder<int>(
                                future: bloc.getDaysOfFrequency(contact.groupId),
                                builder: (context, snapshot) {
                                  final int totalDays = snapshot.data ?? 0;
                                  return AppCircleAvatar(
                                    radius: 20,
                                    url: contact.avatar,
                                    text: contact.name,
                                    backgroundColor: AppColors.grey350,
                                    moonPercent: contact.getMoonPercent(totalDays),
                                  );
                                },
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
