import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/avatars/app_circle_avatar.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/home/interactor/home_bloc.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppCircleAvatar(
                radius: 45,
                url: '',
              ),
              const SizedBox(height: 12),
              Text(
                LocaleKey.hiNameKeepUpToday.trParams({'name': 'Join'}),
                style: context.appTextTheme.bold16.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: IconButton(
            onPressed: () =>
                context.read<HomeBloc>().add(const HomeEvent.onOpenNewChatBottomSheet()),
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.add_circle,
              size: 48,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
