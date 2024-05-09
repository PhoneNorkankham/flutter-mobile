import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/components/add_member_view.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';

class AddMemberBottomSheet extends StatelessWidget {
  static Future<dynamic> show({List<Contact> selectedContacts = const []}) {
    return Get.bottomSheet(
      isScrollControlled: true,
      ignoreSafeArea: false,
      AddMemberBottomSheet(selectedContacts: selectedContacts),
    );
  }

  final List<Contact> selectedContacts;

  const AddMemberBottomSheet({super.key, required this.selectedContacts});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddMemberBloc(Get.find())..add(AddMemberEvent.initial(selectedContacts)),
      child: const AddMemberView(),
    );
  }
}
