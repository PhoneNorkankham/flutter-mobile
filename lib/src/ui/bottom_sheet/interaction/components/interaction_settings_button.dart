import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/components/dialogs/app_dialogs.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_bloc.dart';
import 'package:keepup/src/ui/bottom_sheet/interaction/interactor/interaction_menu_type.dart';

class InteractionSettingsButton extends StatelessWidget {
  final Contact contact;

  const InteractionSettingsButton({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<InteractionBloc>();
    return PopupMenuButton<InteractionMenuType>(
      onSelected: (value) {
        switch (value) {
          case InteractionMenuType.edit:
            bloc.add(const InteractionEvent.onInteraction(InteractionMethodType.Contact));
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
