import 'package:flutter/material.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/add_member_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/groups/groups_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_view.dart';

enum NewChatTabType {
  newChat,
  newGroup,
  groups,
  addContactsToGroup,
  newContact;

  Widget get page {
    return switch (this) {
      newChat => const NewChatView(),
      newGroup => const NewGroupView(),
      groups => const GroupsView(),
      addContactsToGroup => const AddMemberView(),
      newContact => const NewContactView(),
    };
  }
}
