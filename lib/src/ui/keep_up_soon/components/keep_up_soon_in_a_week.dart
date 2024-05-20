import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_group.dart';
import 'package:keepup/src/design/components/process_indicators/custom_circular_progress.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/keep_up_soon/components/keep_up_soon_item.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_type.dart';

class KeepUpSoonInAWeek extends StatelessWidget {
  const KeepUpSoonInAWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
      buildWhen: (previous, current) =>
          previous.type != current.type || previous.weekContacts != current.weekContacts,
      builder: (context, state) {
        final KeepUpSoonBloc bloc = context.read();
        List<Widget> children = [];
        if (state.type == KeepUpSoonType.individual) {
          // Add all contacts item to children
          children = [
            ...state.weekContacts
                .map((e) => KeepUpSoonItem(
                      name: e.name,
                      avatar: e.avatar,
                      onPressed: () => bloc.add(KeepUpSoonEvent.onKeepUpContact(e)),
                    ))
                .toList()
          ];
        }
        return FutureBuilder<List<Group>>(
          future: state.type == KeepUpSoonType.groups
              ? bloc.getGroupsByContacts(state.weekContacts)
              : Future.value([]),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const SizedBox();
            }
            final List<Group> groups = snapshot.data ?? [];
            // Add all groups item to children
            if (state.type == KeepUpSoonType.groups && groups.isNotEmpty) {
              children = [
                ...groups
                    .map((e) => KeepUpSoonItem(
                          name: e.name,
                          avatar: e.avatar,
                          onPressed: () => bloc.add(KeepUpSoonEvent.onKeepUpGroup(e)),
                        ))
                    .toList()
              ];
            }
            return KeepUpGroup(
              title: LocaleKey.inAWeek.tr,
              children: children.isNotEmpty
                  ? children
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
                                  state.type.inAWeekEmptyMessage,
                                  style: context.appTextTheme.bold16.copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                    ],
            );
          },
        );
      },
    );
  }
}
