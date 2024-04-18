import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'keep_up_today_bloc.freezed.dart';
part 'keep_up_today_event.dart';
part 'keep_up_today_state.dart';

class KeepUpTodayBloc extends Bloc<KeepUpTodayEvent, KeepUpTodayState> {
  KeepUpTodayBloc() : super(const KeepUpTodayState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<KeepUpTodayState> emit) async {
    // Show Search settings guide Dialog if allowed
  }
}
