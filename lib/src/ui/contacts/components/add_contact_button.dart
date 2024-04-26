import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contacts/interactor/contact_bloc.dart';

class AddContactButton extends StatelessWidget {
  const AddContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContactBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppButton(
          onPressed: () => bloc.add(const ContactEvent.onGotoNewContact()),
          buttonType: AppButtonType.whiteCircle,
          child: const Icon(Icons.add, size: 34),
        ),
        const SizedBox(height: 4),
        Text(
          LocaleKey.addContact.tr,
          style: context.appTextTheme.bold14.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
