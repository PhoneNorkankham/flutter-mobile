import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/contact_grid_item.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interaction_bottom_sheet.dart';
import 'package:keepup/src/ui/keep_up_today/interactor/keep_up_today_bloc.dart';

class KeepUpTodayContacts extends StatelessWidget {
  const KeepUpTodayContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeepUpTodayBloc, KeepUpTodayState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading || previous.contacts != current.contacts,
      builder: (context, state) {
        final List<Contact> contacts = state.contacts;
        return Column(
          children: [
            const SizedBox(height: 28),
            KeepUpGroup(
              title: LocaleKey.contacts.tr,
              child: contacts.isNotEmpty
                  ? Wrap(
                      children: contacts
                          .map((contact) => AppGridItem(
                                onPressed: () => InteractionBottomSheet.show(contact: contact),
                                avatarUrl: contact.avatar,
                                title: contact.name,
                                titleColor: Theme.of(context).colorScheme.onPrimary,
                                expiration: contact.expiration,
                              ))
                          .toList(),
                    )
                  : state.isLoading
                      ? const Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Center(child: CustomCircularProgress()),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Center(
                            child: Text(
                              LocaleKey.noContactsNeedKeepUpToday.tr,
                              style: context.appTextTheme.bold16.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
            ),
          ],
        );
      },
    );
  }
}
