import 'package:flutter/material.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/add_member_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_chat_view.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_group_view.dart';

enum NewChatTabType {
  newChat,
  addMembers,
  newGroup,
  newContact;

  Widget get page {
    return switch (this) {
      newChat => const NewChatView(),
      addMembers => const AddMemberView(),
      newGroup => const NewGroupView(),
      newContact => const SizedBox(),
    };
  }
}
