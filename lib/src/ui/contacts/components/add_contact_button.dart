import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class AddContactButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddContactButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppButton(
          onPressed: onPressed,
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