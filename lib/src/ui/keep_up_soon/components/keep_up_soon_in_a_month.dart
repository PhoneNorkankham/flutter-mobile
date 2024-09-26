import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_contacts.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_groups.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_type.dart';

class KeepUpSoonInAMonth extends StatelessWidget {
  const KeepUpSoonInAMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return KeepUpGroup(
      title: LocaleKey.inAMonth.tr,
      child: BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
        buildWhen: (previous, current) =>
            previous.type != current.type || previous.monthContacts != current.monthContacts,
        builder: (context, state) {
          final KeepUpSoonType type = state.type;
          final List<Contact> contacts = state.monthContacts;
          if (state.isLoading) {
            return const Padding(
              padding: EdgeInsets.all(24.0),
              child: Center(child: CustomCircularProgress()),
            );
          } else if (contacts.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Text(
                  type.inAMonthEmptyMessage,
                  style: context.appTextTheme.bold16,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          } else if (type == KeepUpSoonType.individual) {
            return KeepUpSoonContacts(contacts: contacts);
          } else {
            return KeepUpSoonGroups(groups: state.getGroupsByContacts(contacts));
          }
        },
      ),
    );
  }
}
