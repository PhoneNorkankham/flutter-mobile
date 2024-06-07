import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui//bottom_sheet/add_contacts_to_group/interactor/add_contacts_to_group_bloc.dart';

class AddContactsToGroupHeader extends StatelessWidget {
  const AddContactsToGroupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddContactsToGroupBloc>();
    return BlocBuilder<AddContactsToGroupBloc, AddContactsToGroupState>(
      buildWhen: (previous, current) =>
          previous.group != current.group || previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Text(
              LocaleKey.addContacts.tr,
              style: context.appTextTheme.bold18.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    LocaleKey.cancel.tr,
                    style: context.appTextTheme.bold14.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: state.selectedContacts.isEmpty
                      ? null
                      : () {
                          FocusScope.of(context).unfocus();
                          if (state.group == null) {
                            // Back and result selected contacts
                            Get.back(result: state.selectedContacts);
                          } else {
                            // Add selected contacts to group
                            bloc.add(const AddContactsToGroupEvent.onAddContactsToGroup());
                          }
                        },
                  child: Text(
                    LocaleKey.done.tr,
                    style: context.appTextTheme.bold14.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(state.selectedContacts.isEmpty ? 0.5 : 1),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        );
      },
    );
  }
}
