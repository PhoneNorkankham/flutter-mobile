import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_page_command.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
    on<_GotoMain>(_onGotoMain);
  }

  Future<void> _initial(_Initial event, Emitter<OnboardingState> emit) async {}

  FutureOr<void> _onGotoMain(_GotoMain event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.pushAndRemoveUntilPage(AppPages.home, (route) => false),
    ));
  }
}
