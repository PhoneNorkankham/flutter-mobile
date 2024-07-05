import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contact_detail/components/contact_detail_group.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_input_type.dart';
import 'package:keepup/src/utils/app_validation.dart';

class ContactDetailForm extends StatelessWidget {
  const ContactDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactDetailBloc bloc = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ContactDetailGroup(),
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
              onChanged: (value) => bloc.add(ContactDetailEvent.onInputChanged(
                ContactDetailInputType.name,
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
              onChanged: (value) => bloc.add(ContactDetailEvent.onInputChanged(
                ContactDetailInputType.email,
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
              onChanged: (value) => bloc.add(ContactDetailEvent.onInputChanged(
                ContactDetailInputType.phoneNo,
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
              onChanged: (value) => bloc.add(ContactDetailEvent.onInputChanged(
                ContactDetailInputType.dateOfBirth,
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
    final ContactDetailBloc bloc = context.read();
    showDatePicker(
      context: context,
      cancelText: LocaleKey.cancel.tr,
      confirmText: LocaleKey.check.tr,
      initialDate: bloc.state.request.dateOfBirth ?? DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 100)),
      lastDate: DateTime.now(),
    ).then((date) {
      if (date == null) return;
      bloc.dateOfBirthController.text = date.generalDateText;
      bloc.add(ContactDetailEvent.onInputChanged(
        ContactDetailInputType.dateOfBirth,
        date.generalDateText,
      ));
    });
  }
}
