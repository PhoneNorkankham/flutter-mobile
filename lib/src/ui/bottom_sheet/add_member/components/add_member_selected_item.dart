import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/ui/bottom_sheet/add_member/interactor/add_member_bloc.dart';

class AddMemberSelectedItem extends StatelessWidget {
  final ContactRequest contact;

  const AddMemberSelectedItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddMemberBloc>();
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
              Center(
                child: contact.file != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.file(
                          contact.file!,
                          width: 54,
                          height: 54,
                        ),
                      )
                    : contact.avatar.isNotEmpty
                        ? AppCircleAvatar(url: contact.avatar, radius: 27)
                        : Initicon(
                            text: contact.name,
                            size: 54,
                            borderRadius: BorderRadius.circular(27),
                            backgroundColor: AppColors.grey350,
                          ),
              ),
              const SizedBox(height: 4),
              Text(
                contact.name,
                style: context.appTextTheme.medium12.copyWith(
                  color: Theme.of(context).colorScheme.primary,
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
              onTap: () => bloc.add(AddMemberEvent.onRemovedContact(contact)),
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
