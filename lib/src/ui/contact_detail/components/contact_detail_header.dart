import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/dialogs/app_dialogs.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/dialogs/picker_photo_dialog.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/contact_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailHeader extends StatelessWidget {
  const ContactDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactDetailBloc bloc = context.read();
    return BlocBuilder<ContactDetailBloc, ContactDetailState>(
      buildWhen: (previous, current) => previous.contactType != current.contactType,
      builder: (context, state) {
        return Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          constraints: const BoxConstraints(minHeight: 188),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 26),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.av_timer,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  Expanded(
                    child: Text(
                      '0 Days left',
                      style: context.appTextTheme.medium14,
                    ),
                  ),
                  if (state.contactType == ContactType.contactDetail)
                    GestureDetector(
                      onTap: () => _showDeleteConfirmDialog(context, bloc),
                      child: Text(
                        LocaleKey.delete.tr,
                        style: context.appTextTheme.medium14,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20),
              BlocBuilder<ContactDetailBloc, ContactDetailState>(
                buildWhen: (previous, current) =>
                    previous.avatar != current.avatar ||
                    previous.request.avatar != current.request.avatar ||
                    previous.request.expiration != current.request.expiration,
                builder: (context, state) => FutureBuilder<int>(
                  future: bloc.getDaysOfFrequency(state.request.groupId),
                  builder: (context, snapshot) {
                    final int totalDays = snapshot.data ?? 0;
                    return AppCircleAvatar(
                      radius: 50,
                      url: state.request.avatar,
                      file: state.avatar,
                      text: state.request.name,
                      moonPercent: state.request.getMoonPercent(totalDays),
                      onPressed: () => AppDialogs(
                        title: LocaleKey.uploadAvatar.tr,
                        content: PickerPhotoDialog(
                          onSelected: (file) => bloc.add(ContactDetailEvent.onChangedAvatar(file)),
                        ),
                        contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
                      ).show(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<ContactDetailBloc, ContactDetailState>(
                buildWhen: (previous, current) => previous.request.name != current.request.name,
                builder: (context, state) {
                  return Text(
                    state.contactType == ContactType.newContact ? '' : state.request.name,
                    style: context.appTextTheme.medium14,
                  );
                },
              ),
              const SizedBox(height: 26),
            ],
          ),
        );
      },
    );
  }

  _showDeleteConfirmDialog(BuildContext context, ContactDetailBloc bloc) {
    showConfirmDialog(
      LocaleKey.deleteContactDescription.tr,
      title: LocaleKey.deleteContact.tr,
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.delete.tr,
      onConfirmed: () {
        Get.back();
        bloc.add(const ContactDetailEvent.onDeleteContact());
      },
    );
  }
}
