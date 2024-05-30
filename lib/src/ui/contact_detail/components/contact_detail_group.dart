import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class ContactDetailGroup extends StatelessWidget {
  const ContactDetailGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactDetailBloc bloc = context.read();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LocaleKey.group.tr,
          style: context.appTextTheme.bold14.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 10),
        BlocBuilder<ContactDetailBloc, ContactDetailState>(
          buildWhen: (previous, current) =>
              previous.selectedGroup != current.selectedGroup || previous.groups != current.groups,
          builder: (context, state) {
            final Group? selectedGroup = state.selectedGroup;
            return PopupMenuButton<Group>(
              onSelected: (value) => bloc.add(ContactDetailEvent.onSelectedGroup(value)),
              initialValue: selectedGroup,
              child: Container(
                constraints: const BoxConstraints(minHeight: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.unselectedItemColor),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        selectedGroup?.name ?? LocaleKey.group.tr,
                        style: context.appTextTheme.medium14.copyWith(
                          color: selectedGroup == null ? AppColors.grey600 : null,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Icon(Icons.keyboard_arrow_down_rounded),
                  ],
                ),
              ),
              itemBuilder: (context) => state.groups
                  .map((e) => PopupMenuItem<Group>(
                        value: e,
                        child: Row(
                          children: [
                            Icon(
                              Icons.check,
                              size: 20,
                              color: selectedGroup == e
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.transparent,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              e.name,
                              style: context.appTextTheme.medium16.copyWith(
                                color: selectedGroup == e
                                    ? Theme.of(context).colorScheme.primary
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            );
          },
        ),
      ],
    );
  }
}
