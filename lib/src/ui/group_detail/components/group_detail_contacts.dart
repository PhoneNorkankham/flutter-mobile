import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_add_contact.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_contact_item.dart';
import 'package:keepup/src/ui/group_detail/components/group_detail_see_all_contacts.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailContacts extends StatelessWidget {
  const GroupDetailContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocBuilder<GroupDetailBloc, GroupDetailState>(
        buildWhen: (previous, current) => previous.contacts != current.contacts,
        builder: (context, state) {
          final int length = state.contacts.length;
          final List<Contact> contacts = state.contacts;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$length ${length == 1 ? LocaleKey.contact.tr : LocaleKey.contacts.tr}',
                style: context.appTextTheme.medium18,
              ),
              const SizedBox(height: 6),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const GroupDetailAddContact(),
                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 64,
                      color: Theme.of(context).dividerColor,
                    ),
                    BlocBuilder<GroupDetailBloc, GroupDetailState>(
                      buildWhen: (previous, current) =>
                          previous.openedSeeAll != current.openedSeeAll,
                      builder: (context, state) => ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.openedSeeAll ? contacts.length : min(3, contacts.length),
                        itemBuilder: (context, index) {
                          final Contact contact = contacts.elementAt(index);
                          return GroupDetailContactItem(contact: contact);
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 1,
                          thickness: 1,
                          indent: 64,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                    const GroupDetailSeeAllContacts(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
