import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/interactor/new_group_bloc.dart';

class NewGroupSelectedItem extends StatelessWidget {
  final Contact contact;

  const NewGroupSelectedItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewGroupBloc>();
    return Container(
      width: 92,
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppCircleAvatar(
                url: '',
                radius: 27,
                backgroundColor: AppColors.grey350,
                foregroundColor: AppColors.white,
              ),
              const SizedBox(height: 4),
              Text(
                contact.name,
                style: context.appTextTheme.medium12.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => bloc.add(NewGroupEvent.onRemovedContact(contact)),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grey600,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(4),
                child: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
