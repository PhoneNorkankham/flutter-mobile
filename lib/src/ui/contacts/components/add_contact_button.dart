import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/select_group/select_group_bottom_sheet.dart';
import 'package:keepup/src/ui/contacts/commons/new_contact_options_bottom_sheet.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class AddContactButton extends StatelessWidget {
  const AddContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppButton(
        onPressed: () => NewContactOptionsBottomSheet.show().then((value) {
          if (value is NewContactOptions) {
            if (value == NewContactOptions.phoneContacts) {
              SelectGroupBottomSheet.show().then((value) {
                if (value is PopResult && value.status) {
                  showSuccessToast(LocaleKey.addContactsToGroupSuccessfully.tr);
                }
              });
            } else {
              final bloc = context.read<ContactBloc>();
              bloc.add(const ContactEvent.onGotoNewContact());
            }
          }
        }),
        buttonType: AppButtonType.whiteCircle,
        child: const Icon(Icons.add, size: 34),
      ),
    );
  }
}
