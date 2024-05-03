import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailButtons extends StatelessWidget {
  const ContactDetailButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactDetailBloc bloc = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 145,
            child: BlocBuilder<ContactDetailBloc, ContactDetailState>(
              buildWhen: (previous, current) =>
                  previous.request.isValidate != current.request.isValidate,
              builder: (context, state) {
                return AppButton(
                  onPressed: state.request.isValidate
                      ? () => bloc.add(const ContactDetailEvent.onSavePressed())
                      : null,
                  buttonType: AppButtonType.primary,
                  title: LocaleKey.save.tr,
                );
              },
            ),
          ),
          const Expanded(flex: 60, child: SizedBox(width: 12)),
          Expanded(
            flex: 145,
            child: AppButton(
              onPressed: () => bloc.add(const ContactDetailEvent.onCancelPressed()),
              buttonType: AppButtonType.outlined,
              title: LocaleKey.cancel.tr,
            ),
          ),
        ],
      ),
    );
  }
}
