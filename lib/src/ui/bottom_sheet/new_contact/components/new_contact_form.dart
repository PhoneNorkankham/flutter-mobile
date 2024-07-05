import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/components/new_contact_group.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/interactor/new_contact_bloc.dart';
import 'package:keepup/src/ui/bottom_sheet/new_contact/interactor/new_contact_input_type.dart';
import 'package:keepup/src/utils/app_validation.dart';

class NewContactForm extends StatelessWidget {
  const NewContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    final NewContactBloc bloc = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const NewContactGroup(),
            const SizedBox(height: 10),
            Text(
              LocaleKey.name.tr,
              style: context.appTextTheme.bold14,
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              controller: bloc.nameController,
              hintText: LocaleKey.name.tr,
              textInputType: TextInputType.name,
              validator: AppValidations.validateField,
              onChanged: (value) => bloc.add(NewContactEvent.onInputChanged(
                NewContactInputType.name,
                value,
              )),
            ),
            const SizedBox(height: 10),
            Text(
              LocaleKey.email.tr,
              style: context.appTextTheme.bold14,
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              controller: bloc.emailController,
              hintText: LocaleKey.email.tr,
              textInputType: TextInputType.emailAddress,
              validator: AppValidations.validateEmail,
              onChanged: (value) => bloc.add(NewContactEvent.onInputChanged(
                NewContactInputType.email,
                value,
              )),
            ),
            const SizedBox(height: 10),
            Text(
              LocaleKey.phoneNo.tr,
              style: context.appTextTheme.bold14,
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              controller: bloc.phoneNoController,
              hintText: LocaleKey.phoneNo.tr,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputType: TextInputType.number,
              onChanged: (value) => bloc.add(NewContactEvent.onInputChanged(
                NewContactInputType.phoneNo,
                value,
              )),
            ),
            const SizedBox(height: 10),
            Text(
              LocaleKey.dateOfBirth.tr,
              style: context.appTextTheme.bold14,
            ),
            const SizedBox(height: 10),
            AppInputTextField(
              readOnly: true,
              onTap: () => _showDatePicker(context),
              controller: bloc.dateOfBirthController,
              hintText: LocaleKey.dateOfBirth.tr,
              textInputType: TextInputType.datetime,
              textInputAction: TextInputAction.done,
              onChanged: (value) => bloc.add(NewContactEvent.onInputChanged(
                NewContactInputType.dateOfBirth,
                value,
              )),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void _showDatePicker(BuildContext context) {
    final NewContactBloc bloc = context.read();
    showDatePicker(
      context: context,
      cancelText: LocaleKey.cancel.tr,
      confirmText: LocaleKey.check.tr,
      initialDate: bloc.state.contactRequest.dateOfBirth ?? DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 100)),
      lastDate: DateTime.now(),
    ).then((date) {
      if (date == null) return;
      bloc.dateOfBirthController.text = date.generalDateText;
      bloc.add(NewContactEvent.onInputChanged(
        NewContactInputType.dateOfBirth,
        date.generalDateText,
      ));
    });
  }
}
