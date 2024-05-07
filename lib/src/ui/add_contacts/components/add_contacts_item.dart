import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/add_contact_request.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';

class AddContactsItem extends StatelessWidget {
  final AddContactRequest contact;
  final ValueChanged<AddContactRequest>? onChanged;

  const AddContactsItem({
    super.key,
    required this.contact,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final AddContactsBloc bloc = context.read();
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Theme.of(context).colorScheme.onPrimary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: _onToggleItem,
            child: Container(
              constraints: const BoxConstraints(minHeight: 60),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const AppCircleAvatar(radius: 15, url: ''),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      contact.name,
                      style: context.appTextTheme.bold16.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  if (!contact.isExpanded)
                    Icon(
                      contact.isSelected ? Icons.remove_circle_outline : Icons.add_circle_outline,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                ],
              ),
            ),
          ),
          if (contact.isExpanded) ...[
            Container(
              height: 1,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              child: Text(
                LocaleKey.groups.tr,
                style: context.appTextTheme.regular14.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: bloc.state.groups
                    .map((e) => InkWell(
                          onTap: () => _onChangedGroup(e),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              e.name,
                              style: context.appTextTheme.bold16.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary
                                    .withOpacity(contact.groupIds.contains(e.id) ? 1 : 0.5),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }

  void _onToggleItem() => onChanged?.call(contact.copyWith(
        isExpanded: !contact.isExpanded,
        isSelected: true,
      ));

  _onChangedGroup(Group group) {
    final List<String> groupIds = [...contact.groupIds];
    if (groupIds.contains(group.id)) {
      groupIds.remove(group.id);
    } else {
      groupIds.add(group.id);
    }
    onChanged?.call(contact.copyWith(groupIds: groupIds));
  }
}
