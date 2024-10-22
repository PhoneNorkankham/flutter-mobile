import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/profile/components/profile_view.dart';
import 'package:keepup/src/ui/profile/interactor/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Get.find<ProfileBloc>();
    return BlocProvider(
      create: (context) => bloc..add(const ProfileEvent.initial()),
      child: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            bloc.add(const ProfileEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const ProfileView(),
      ),
    );
  }
}
