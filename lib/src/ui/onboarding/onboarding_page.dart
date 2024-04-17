import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_command_listeners.dart';
import 'package:keepup/src/ui/onboarding/components/onboarding_view.dart';
import 'package:keepup/src/ui/onboarding/interactor/onboarding_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OnboardingBloc bloc = Get.find<OnboardingBloc>();
    return BlocProvider(
      create: (context) => bloc..add(const OnboardingEvent.initial()),
      child: BlocListener<OnboardingBloc, OnboardingState>(
        listenWhen: (previous, current) => previous.pageCommand != current.pageCommand,
        listener: (context, state) {
          final PageCommand? pageCommand = state.pageCommand;
          if (pageCommand != null) {
            pageCommandListeners(pageCommand);
            Get.find<OnboardingBloc>().add(const OnboardingEvent.clearPageCommand());
          }
        },
        child: const OnboardingView(),
      ),
    );
  }
}
