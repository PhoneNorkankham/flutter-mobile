import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/locale/translation_manager.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_page_command.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final TranslationManager _translationManager;

  SplashBloc(
    this._translationManager,
  ) : super(const SplashState()) {
    on<_Initial>(_initial);
    on<_OnGetStarted>(_onGetStarted);
    on<_ClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
  }

  Future<void> _initial(_Initial event, Emitter<SplashState> emit) async {
    await _checkLocale();
  }

  FutureOr<void> _checkLocale() {
    return _translationManager.updateLocale(TranslationManager.fallbackLocaleUS);
  }

  FutureOr<void> _onGetStarted(_OnGetStarted event, Emitter<SplashState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.pushAndRemoveUntilPage(
        AppPages.onboarding,
        (route) => false,
      ),
    ));
  }
}
