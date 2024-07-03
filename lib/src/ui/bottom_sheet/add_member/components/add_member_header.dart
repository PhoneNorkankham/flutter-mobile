import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';

class AddMemberHeader extends StatelessWidget {
  const AddMemberHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddMemberBloc>();
    return BlocBuilder<AddMemberBloc, AddMemberState>(
      buildWhen: (previous, current) =>
          previous.contacts != current.contacts ||
          previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                Text(
                  LocaleKey.addContacts.tr,
                  style: context.appTextTheme.bold16.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${state.selectedContacts.length}/${state.contacts.length}',
                  style: context.appTextTheme.medium10.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    LocaleKey.cancel.tr,
                    style: context.appTextTheme.bold16.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: state.selectedContacts.isNotEmpty
                      ? () => Get.back(result: bloc.state.selectedContacts)
                      : null,
                  child: Text(
                    LocaleKey.done.tr,
                    style: context.appTextTheme.bold16.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(state.selectedContacts.isNotEmpty ? 1 : 0.5),
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
