import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/settings/components/settings_view.dart';
import 'package:keepup/src/ui/settings/interactor/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Get.find<SettingsBloc>();
    return BlocProvider(
      create: (context) => bloc,
      child: BlocListener<SettingsBloc, SettingsState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            bloc.add(const SettingsEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        child: const SettingsView(),
      ),
    );
  }
}
