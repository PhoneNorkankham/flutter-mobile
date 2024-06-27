import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/inputs/app_search_input.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/add_member_bottom_sheet.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailMembers extends StatelessWidget {
  const GroupDetailMembers({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                LocaleKey.members.tr,
                style: context.appTextTheme.medium18.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => AddMemberBottomSheet.show(
                  groupId: bloc.state.groupId,
                  selectedContacts: bloc.state.contacts,
                ).then((value) {
                  if (value is List<ContactRequest>) {
                    bloc.add(GroupDetailEvent.onAddedMembers(value));
                  }
                }),
                child: Text(
                  LocaleKey.addMember.tr,
                  style: context.appTextTheme.medium14.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        AppSearchInput(
          hintText: LocaleKey.searchGroups.tr,
          onChanged: (value) => bloc.add(GroupDetailEvent.onChangedKeyword(value)),
        ),
        const SizedBox(height: 12),
        BlocBuilder<GroupDetailBloc, GroupDetailState>(
          buildWhen: (previous, current) =>
              previous.getFilterContacts() != current.getFilterContacts(),
          builder: (context, state) {
            final List<ContactRequest> contacts = state.getFilterContacts();
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemBuilder: (context, index) {
                final ContactRequest contact = contacts.elementAt(index);
                return KeepUpItem(
                  name: contact.name,
                  avatar: contact.avatar,
                  file: contact.file,
                  expiration: contact.expiration,
                  action: GestureDetector(
                    onTap: () => bloc.add(GroupDetailEvent.onRemoveContact(contact)),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: AppColors.white,
                        size: 20,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 4),
              itemCount: contacts.length,
            );
          },
        ),
      ],
    );
  }
}
