import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/keep_up_today/components/keep_up_today_contact_item.dart';
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
              children: contacts.isNotEmpty
                  ? contacts.map((e) => KeepUpTodayContactItem(contact: e)).toList()
                  : [
                      state.isLoading
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
                            )
                    ],
            ),
            if (contacts.isNotEmpty) ...[
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 110,
                  child: AppButton(
                    onPressed: () => _onShowConfirmDialog(context),
                    buttonType: AppButtonType.greenKeepUp,
                    title: LocaleKey.keepUp.tr,
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }

  void _onShowConfirmDialog(BuildContext context) {
    AppDialogs(
      title: LocaleKey.keepUp.tr,
      message: LocaleKey.keepUpAllTheContactsTodayConfirm.tr,
      contentPadding: const EdgeInsets.all(34).copyWith(top: 34),
      cancelTitle: LocaleKey.cancel.tr,
      confirmTitle: LocaleKey.keepUp.tr,
      onConfirmed: () {
        Get.back();
        context.read<KeepUpTodayBloc>().add(const KeepUpTodayEvent.onKeepUpAllContacts());
      },
    ).show();
  }
}
