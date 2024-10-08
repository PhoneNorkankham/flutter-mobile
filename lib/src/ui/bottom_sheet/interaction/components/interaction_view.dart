import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/dialogs/picker_photo_dialog.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/components/interaction_action_item.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/components/interaction_info_item.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/components/interaction_settings_button.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_bloc.dart';
import 'package:timeago/timeago.dart';

class InteractionView extends StatelessWidget {
  const InteractionView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<InteractionBloc>();
    return DraggableScrollableSheet(
      expand: false,
      snap: true,
      initialChildSize: 2 / 3,
      minChildSize: 2 / 3,
      maxChildSize: 1,
      builder: (context, scrollController) => Container(
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: BlocBuilder<InteractionBloc, InteractionState>(
          buildWhen: (previous, current) =>
              previous.contact != current.contact || previous.avatar != current.avatar,
          builder: (context, state) {
            final Contact? contact = state.contact;
            if (contact == null) return const SizedBox();
            final DateTime? birthday = contact.dateOfBirth;
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: FutureBuilder<int>(
                          future: bloc.getDaysOfFrequency(contact.groupId),
                          builder: (context, snapshot) {
                            final int totalDays = snapshot.data ?? 0;
                            return Padding(
                              padding: const EdgeInsets.only(top: 32.0),
                              child: AppCircleAvatar(
                                radius: 40,
                                url: contact.avatar,
                                text: contact.name,
                                file: state.avatar,
                                moonPercent: contact.getMoonPercent(totalDays),
                                expirationDay: contact.expirationDays,
                                backgroundColor: AppColors.grey350,
                                onPressed: () => AppDialogs(
                                  title: LocaleKey.uploadAvatar.tr,
                                  content: PickerPhotoDialog(
                                    onSelected: (file) =>
                                        bloc.add(InteractionEvent.onChangedAvatar(file)),
                                  ),
                                  contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
                                ).show(),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        top: 16,
                        right: 4,
                        child: InteractionSettingsButton(contact: contact),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    contact.name,
                    textAlign: TextAlign.center,
                    style: context.appTextTheme.medium18.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: InteractionMethodType.values
                        .map((e) => Expanded(
                              child: InteractionActionItem(
                                type: e,
                                onPressed: () => bloc.add(InteractionEvent.onInteraction(e)),
                              ),
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 36),
                  InteractionInfoItem(
                    icon: Icons.group,
                    title: LocaleKey.group.tr,
                    value: contact.groupName ?? '',
                  ),
                  const SizedBox(height: 16),
                  InteractionInfoItem(
                    icon: Icons.date_range,
                    title: LocaleKey.expiring.tr,
                    value: contact.expirationTitle,
                  ),
                  const SizedBox(height: 16),
                  FutureBuilder<DateTime?>(
                    future: bloc.getLastKeepUpDateTime(contact),
                    builder: (context, snapshot) {
                      final DateTime? datetime = snapshot.data;
                      String value = '';
                      if (datetime != null) {
                        if (datetime.isToday) {
                          value = LocaleKey.today.tr;
                        } else {
                          value = '${format(datetime, locale: 'en_short')} ago';
                        }
                      }
                      return InteractionInfoItem(
                        icon: Icons.event_available,
                        title: LocaleKey.lastKeepUp.tr,
                        value: value,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  FutureBuilder<String>(
                    future: bloc.getFrequency(contact),
                    builder: (context, snapshot) {
                      final String frequency = snapshot.data ?? '';
                      return InteractionInfoItem(
                        icon: Icons.autorenew,
                        title: LocaleKey.frequency.tr,
                        value: frequency,
                      );
                    },
                  ),
                  if (birthday != null) ...[
                    const SizedBox(height: 16),
                    InteractionInfoItem(
                      icon: Icons.card_giftcard,
                      title: LocaleKey.birthday.tr,
                      value: DateFormat.yMMMd().format(birthday),
                    ),
                  ],
                  const SizedBox(height: 16),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
