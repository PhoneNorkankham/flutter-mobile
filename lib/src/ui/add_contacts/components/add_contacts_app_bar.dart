import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';

class AddContactsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddContactsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      title: LocaleKey.addContactsToKeepUp.tr,
      implyLeading: true,
      onlyIconLeading: true,
      actions: [
        BlocBuilder<AddContactsBloc, AddContactsState>(
          buildWhen: (previous, current) => previous.enabledDoneButton != current.enabledDoneButton,
          builder: (context, state) {
            final AddContactsBloc bloc = context.read();
            return state.enabledDoneButton
                ? TextButton(
                    onPressed: () => bloc.add(const AddContactsEvent.onDonePressed()),
                    child: Text(LocaleKey.done.tr),
                  )
                : const SizedBox();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
