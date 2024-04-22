import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class ContactDetailForm extends StatelessWidget {
  const ContactDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              LocaleKey.name.tr,
              style: context.appTextTheme.bold14.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              hintText: LocaleKey.name.tr,
              textInputType: TextInputType.name,
              onFieldSubmitted: (value) => FocusScope.of(context).nextFocus(),
            ),
            const SizedBox(height: 10),
            Text(
              LocaleKey.email.tr,
              style: context.appTextTheme.bold14.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              hintText: LocaleKey.email.tr,
              textInputType: TextInputType.emailAddress,
              onFieldSubmitted: (value) => FocusScope.of(context).nextFocus(),
            ),
            const SizedBox(height: 10),
            Text(
              LocaleKey.phoneNo.tr,
              style: context.appTextTheme.bold14.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              hintText: LocaleKey.phoneNo.tr,
              textInputType: TextInputType.phone,
              onFieldSubmitted: (value) => FocusScope.of(context).nextFocus(),
            ),
            const SizedBox(height: 10),
            Text(
              LocaleKey.dateOfBirth.tr,
              style: context.appTextTheme.bold14.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              hintText: LocaleKey.dateOfBirth.tr,
              textInputType: TextInputType.datetime,
              onFieldSubmitted: (value) => FocusScope.of(context).unfocus(),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
