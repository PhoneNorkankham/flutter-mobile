import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/components/add_member_view.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';

class AddMemberBottomSheet extends StatelessWidget {
  static Future<dynamic> show({
    required String groupId,
    List<ContactRequest> selectedContacts = const [],
  }) {
    return Get.bottomSheet(
      isScrollControlled: true,
      ignoreSafeArea: false,
      AddMemberBottomSheet(groupId: groupId, selectedContacts: selectedContacts),
    );
  }

  final String groupId;
  final List<ContactRequest> selectedContacts;

  const AddMemberBottomSheet({
    super.key,
    required this.groupId,
    required this.selectedContacts,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddMemberBloc(Get.find(), Get.find())
        ..add(AddMemberEvent.initial(
          groupId,
          selectedContacts,
        )),
      child: const AddMemberView(),
    );
  }
}
