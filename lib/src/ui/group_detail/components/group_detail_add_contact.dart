import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/toasts/app_toasts.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/add_contacts_to_group/add_contacts_to_group_bottom_sheet.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class GroupDetailAddContact extends StatelessWidget {
  const GroupDetailAddContact({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return InkWell(
      onTap: () {
        final Group? group = bloc.state.groupDetail;
        if (group == null) return;
        AddContactsToGroupBottomSheet.show(group).then((value) {
          if (value is PopResult && value.status) {
            showSuccessToast(LocaleKey.addContactsToGroupSuccessfully.tr);
            bloc.add(const GroupDetailEvent.onChangedContacts());
          }
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.only(left: 14, top: 12, right: 12, bottom: 8),
        constraints: const BoxConstraints(minHeight: 56),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.grey350,
                borderRadius: BorderRadius.circular(90),
                border: Border.all(
                  color: AppColors.grey350,
                  width: 2,
                ),
              ),
              child: Icon(
                Icons.add,
                size: 36,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                LocaleKey.addContacts.tr,
                style: context.appTextTheme.medium16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
