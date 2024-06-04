import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/interactor/new_contact_bloc.dart';

class NewContactAppBar extends StatelessWidget {
  const NewContactAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewContactBloc>();
    return BlocBuilder<NewContactBloc, NewContactState>(
      buildWhen: (previous, current) =>
          previous.enabledCreateNewContactButton != current.enabledCreateNewContactButton,
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                LocaleKey.newContact.tr,
                style: context.appTextTheme.bold18.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
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
                  onPressed: state.enabledCreateNewContactButton
                      ? () {
                          FocusScope.of(context).unfocus();
                          bloc.add(const NewContactEvent.onCreateNewContact());
                        }
                      : null,
                  child: Text(
                    LocaleKey.create.tr,
                    style: context.appTextTheme.bold14.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(state.enabledCreateNewContactButton ? 1 : 0.5),
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
