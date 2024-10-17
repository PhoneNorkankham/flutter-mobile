import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/enums/social_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/onboarding/usecases/sign_in_with_anonymous_use_case.dart';
import 'package:keepup/src/ui/onboarding/usecases/sign_in_with_google_use_case.dart';
import 'package:keepup/src/use_cases/check_logged_in_use_case.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final GetLoggedInDataUseCase _getLoggedInDataUseCase;
  final SignInWithAnonymousUseCase _signInWithAnonymousUseCase;
  final SignInWithGoogleUseCase _signInWithGoogleUseCase;

  OnboardingBloc(
    this._getLoggedInDataUseCase,
    this._signInWithAnonymousUseCase,
    this._signInWithGoogleUseCase,
  ) : super(const OnboardingState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnLoginLater>(_onLoginLater);
    on<_OnSignInWithSocial>(_onSignInWithSocial);
  }

  Future<void> _initial(_Initial event, Emitter<OnboardingState> emit) async {
    emit(state.copyWith(isLoading: true));
    DataResult<LoggedInData> result = await _getLoggedInDataUseCase.run();
    LoggedInData? loggedInData = result.valueOrNull;
    if (result.isValue && loggedInData != null) {
      emit(state.copyWith(
        isLoading: false,
        loggedInData: loggedInData,
      ));
    }
  }

  FutureOr<void> _onLoginLater(_OnLoginLater event, Emitter<OnboardingState> emit) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    // #1. Get logged in data
    LoggedInData loggedInData = state.loggedInData;
    if (loggedInData.isLoggedIn) {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.pop(),
      ));
    } else {
      // #2. Sign In with Anonymous
      DataResult<LoggedInData> result = await _signInWithAnonymousUseCase.run();
      LoggedInData? loggedInData = result.valueOrNull;
      if (result.isValue && loggedInData != null && loggedInData.isLoggedIn) {
        emit(state.copyWith(
          isLoading: false,
          pageCommand: PageCommandNavigation.replacePage(AppPages.main),
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          pageCommand: result.asError?.error.toPageCommand(),
        ));
      }
    }
  }

  FutureOr<void> _onSignInWithSocial(
    _OnSignInWithSocial event,
    Emitter<OnboardingState> emit,
  ) async {
    if (state.isLoading) return;
    bool isLinked = false;
    // #1. Get logged in data
    LoggedInData loggedInData = state.loggedInData;
    if (loggedInData.isLoggedIn) {
      isLinked = true;
    }
    switch (event.type) {
      case SocialType.facebook:
        // TODO: Handle this case.
        break;
      case SocialType.linking:
        // TODO: Handle this case.
        break;
      case SocialType.google:
        emit(state.copyWith(isLoading: true));
        DataResult<LoggedInData> result = await _signInWithGoogleUseCase.run();
        if (result.isValue) {
          emit(state.copyWith(
            isLoading: false,
            pageCommand: isLinked
                ? PageCommandNavigation.pop()
                : PageCommandNavigation.replacePage(AppPages.main),
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            pageCommand: result.asError?.error.toPageCommand(),
          ));
        }
        break;
    }
  }
}
