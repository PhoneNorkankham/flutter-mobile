import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/components/dialogs/app_dialogs.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/components/interaction_action_item.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/components/interaction_info_item.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_bloc.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_menu_type.dart';
import 'package:timeago/timeago.dart';

class InteractionView extends StatelessWidget {
  const InteractionView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<InteractionBloc>();
    return Container(
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: BlocBuilder<InteractionBloc, InteractionState>(
        buildWhen: (previous, current) => previous.contact != current.contact,
        builder: (context, state) {
          final Contact? contact = state.contact;
          if (contact == null) return const SizedBox();
          final DateTime? birthday = contact.dateOfBirth;
          return Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: contact.expiration?.urgentColor ??
                            Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(90),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 4,
                        ),
                      ),
                      padding: const EdgeInsets.all(6),
                      child: AppCircleAvatar(
                        radius: 28,
                        url: contact.avatar,
                        text: contact.name,
                        backgroundColor: AppColors.grey350,
                      ),
                    ),
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
                  FutureBuilder<DateTime?>(
                    future: bloc.getLastKeepUpDateTime(contact),
                    builder: (context, snapshot) {
                      final DateTime? datetime = snapshot.data;
                      return InteractionInfoItem(
                        icon: Icons.event_available,
                        title: LocaleKey.lastKeepUp.tr,
                        value:
                            datetime == null ? '' : '${format(datetime, locale: 'en_short')} ago',
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
              Positioned(
                top: 16,
                right: 4,
                child: PopupMenuButton<InteractionMenuType>(
                  onSelected: (value) {
                    switch (value) {
                      case InteractionMenuType.edit:
                        bloc.add(const InteractionEvent.onInteraction(
                          InteractionMethodType.Contact,
                        ));
                        break;
                      case InteractionMenuType.delete:
                        _onShowDeleteConfirmDialog(bloc, contact);
                        break;
                    }
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: Icon(
                      Icons.settings,
                      size: 16,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  itemBuilder: (context) => InteractionMenuType.values
                      .map((e) => PopupMenuItem<InteractionMenuType>(
                            value: e,
                            child: Row(
                              children: [
                                Icon(
                                  e.icon,
                                  color: e.color,
                                  size: 20,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  e.title,
                                  style: context.appTextTheme.medium16.copyWith(color: e.color),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _onShowDeleteConfirmDialog(InteractionBloc bloc, Contact contact) {
    showConfirmDialog(
      LocaleKey.deleteContactDescription.tr,
      title: LocaleKey.deleteContact.tr,
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.delete.tr,
      onConfirmed: () {
        Get.back();
        bloc.add(InteractionEvent.onDeleteContact(contact));
      },
    );
  }
}
