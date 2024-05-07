import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
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
          constraints: const BoxConstraints(minHeight: 216),
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
                      style: context.appTextTheme.medium14.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  if (state.contactType == ContactType.contactDetail)
                    Text(
                      LocaleKey.delete.tr,
                      style: context.appTextTheme.medium14.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => AppDialogs(
                  title: LocaleKey.uploadAvatar.tr,
                  content: PickerPhotoDialog(
                    onSelected: (file) => bloc.add(ContactDetailEvent.onChangedAvatar(file)),
                  ),
                  contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
                ).show(),
                child: BlocBuilder<ContactDetailBloc, ContactDetailState>(
                  buildWhen: (previous, current) =>
                      previous.avatar != current.avatar ||
                      previous.request.avatar != current.request.avatar,
                  builder: (context, state) => AppCircleAvatar(
                    file: state.avatar,
                    url: state.request.avatar,
                    radius: 50,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<ContactDetailBloc, ContactDetailState>(
                buildWhen: (previous, current) => previous.request.name != current.request.name,
                builder: (context, state) {
                  return Text(
                    state.contactType == ContactType.newContact ? '' : state.request.name,
                    style: context.appTextTheme.medium14.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
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
}
