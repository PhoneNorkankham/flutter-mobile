import 'package:flutter/material.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';

class NewContactHeader extends StatelessWidget {
  const NewContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      constraints: const BoxConstraints(minHeight: 216),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 26),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.av_timer,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              Expanded(
                child: Text(
                  '0 Days left',
                  style: context.appTextTheme.medium14.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const AppCircleAvatar(url: '', radius: 50),
          const SizedBox(height: 26),
        ],
      ),
    );
  }
}
