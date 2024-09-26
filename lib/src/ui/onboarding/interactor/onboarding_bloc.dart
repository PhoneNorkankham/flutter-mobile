import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/enums/social_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/onboarding/usecases/create_anonymous_account_use_case.dart';
import 'package:keepup/src/use_cases/check_logged_in_use_case.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_page_command.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final GetLoggedInDataUseCase _getLoggedInDataUseCase;
  final CreateAnonymousAccountUseCase _createAnonymousAccountUseCase;
  // final CreateDefaultGroupsUseCase _createDefaultGroupsUseCase;

  OnboardingBloc(
    this._getLoggedInDataUseCase,
    this._createAnonymousAccountUseCase,
    // this._createDefaultGroupsUseCase,
  ) : super(const OnboardingState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnLoginLater>(_onLoginLater);
    on<_OnSignInWithSocial>(_onSignInWithSocial);
  }

  Future<void> _initial(_Initial event, Emitter<OnboardingState> emit) async {
    emit(state.copyWith(isLoading: true));
    // #1. Get logged in data
    DataResult<LoggedInData> result = await _getLoggedInDataUseCase.run();
    LoggedInData? loggedInData = result.valueOrNull;

    if (loggedInData == null || !loggedInData.isLoggedIn || loggedInData.isExpired) {
      // #2. Create Anonymous Account
      result = await _createAnonymousAccountUseCase.run();
      loggedInData = result.valueOrNull;
    }

    if (result.isValue && loggedInData != null && loggedInData.isLoggedIn) {
      emit(state.copyWith(loggedInData: loggedInData));

      // #3. Create Default Groups
      // final ListResult<Group> result = await _createDefaultGroupsUseCase.run();
      // final List<Group> groups = result.valueOrNull ?? [];
      // if (result.isValue && groups.isNotEmpty) {
      //   emit(state.copyWith(
      //     isLoading: false,
      //     groups: groups,
      //     loggedInData: loggedInData.copyWith(isJoinedGroup: true),
      //   ));
      // } else {
      //   emit(state.copyWith(
      //     isLoading: false,
      //     pageCommand: result.asError?.error.toPageCommand(),
      //   ));
      // }
    } else {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: result.asError?.error.toPageCommand(),
      ));
    }
  }

  FutureOr<void> _onLoginLater(_OnLoginLater event, Emitter<OnboardingState> emit) {
    emit(state.copyWith(pageCommand: PageCommandNavigation.replacePage(AppPages.main)));
  }

  FutureOr<void> _onSignInWithSocial(_OnSignInWithSocial event, Emitter<OnboardingState> emit) {}
}
