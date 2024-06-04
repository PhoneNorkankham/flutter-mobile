import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/bottom_sheet/select_group/components/select_group_view.dart';
import 'package:keepup/src/ui/bottom_sheet/select_group/interactor/select_group_bloc.dart';

class SelectGroupBottomSheet extends StatelessWidget {
  static Future<dynamic> show() => Get.bottomSheet(
        isScrollControlled: true,
        ignoreSafeArea: false,
        const SelectGroupBottomSheet(),
      );

  const SelectGroupBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectGroupBloc(Get.find())..add(const SelectGroupEvent.initial()),
      child: BlocConsumer<SelectGroupBloc, SelectGroupState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            final SelectGroupBloc bloc = context.read();
            bloc.add(const SelectGroupEvent.clearPageCommand());
            pageCommandListeners(pageCommand);
          }
        },
        builder: (context, state) => const SelectGroupView(),
      ),
    );
  }
}
