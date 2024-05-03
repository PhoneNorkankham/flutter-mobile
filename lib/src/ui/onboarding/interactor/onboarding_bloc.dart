import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/onboarding/usecases/create_anonymous_account_use_case.dart';
import 'package:keepup/src/ui/onboarding/usecases/join_group_use_case.dart';
import 'package:keepup/src/use_cases/check_logged_in_use_case.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_page_command.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final GetLoggedInDataUseCase _getLoggedInDataUseCase;
  final CreateAnonymousAccountUseCase _createAnonymousAccountUseCase;
  final JoinGroupUseCase _joinGroupUseCase;

  OnboardingBloc(
    this._getLoggedInDataUseCase,
    this._createAnonymousAccountUseCase,
    this._joinGroupUseCase,
  ) : super(const OnboardingState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
    on<_GotoMain>(_onGotoMain);
    on<_OnJoinGroup>(_onJoinGroup);
  }

  Future<void> _initial(_Initial event, Emitter<OnboardingState> emit) async {
    final DataResult<LoggedInData> result = await _getLoggedInDataUseCase.run();
    if (result.isValue) {
      final LoggedInData? loggedInData = result.valueOrNull;
      emit(state.copyWith(
        groups: AppConstants.onBoardingGroups,
        loggedInData: loggedInData ?? state.loggedInData,
      ));
    } else {
      final String message = result.asError?.error.message ?? '';
      emit(state.copyWith(pageCommand: PageCommandDialog.showError(message)));
    }
  }

  FutureOr<void> _onGotoMain(_GotoMain event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(pageCommand: PageCommandNavigation.replacePage(AppPages.home)));
  }

  FutureOr<void> _onJoinGroup(_OnJoinGroup event, Emitter<OnboardingState> emit) async {
    emit(state.copyWith(isLoading: true));
    if (!state.loggedInData.isLoggedIn) {
      final DataResult<LoggedInData> accountResult = await _createAnonymousAccountUseCase.run();
      if (accountResult.isError) {
        emit(state.copyWith(
          isLoading: false,
          pageCommand: PageCommandDialog.showError(
            accountResult.asError?.error.message ?? LocaleKey.creatingAnonymousAccountFailed.tr,
          ),
        ));
        return;
      } else {
        emit(state.copyWith(loggedInData: accountResult.valueOrCrash));
      }
    }
    final VoidResult result = await _joinGroupUseCase.run(event.group);
    if (result.isValue) {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.replacePage(AppPages.home),
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandDialog.showError(
          result.asError?.error.message ?? LocaleKey.joiningGroupFailed.tr,
        ),
      ));
    }
  }
}
