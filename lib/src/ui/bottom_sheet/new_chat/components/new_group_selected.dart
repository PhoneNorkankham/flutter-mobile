import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/keep_up/keep_up_item.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class NewGroupSelected extends StatelessWidget {
  const NewGroupSelected({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewChatBloc>();
    return BlocBuilder<NewChatBloc, NewChatState>(
      buildWhen: (previous, current) => previous.selectedContacts != current.selectedContacts,
      builder: (context, state) {
        final List<ContactRequest> contacts = state.selectedContacts;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      LocaleKey.members.tr,
                      style: context.appTextTheme.medium18.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => bloc.add(
                          const NewChatEvent.onChangedTabType(NewChatTabType.addContactsToGroup)),
                      child: Text(
                        LocaleKey.addMember.tr,
                        style: context.appTextTheme.medium14.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: contacts
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                          child: KeepUpItem(
                            name: e.name,
                            action: GestureDetector(
                              onTap: () => bloc.add(NewChatEvent.onRemovedContact(e)),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: AppColors.orange,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: AppColors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
