import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'keep_up_soon_bloc.freezed.dart';
part 'keep_up_soon_event.dart';
part 'keep_up_soon_state.dart';

class KeepUpSoonBloc extends Bloc<KeepUpSoonEvent, KeepUpSoonState> {
  KeepUpSoonBloc() : super(const KeepUpSoonState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<KeepUpSoonState> emit) async {
    // Show Search settings guide Dialog if allowed
  }
}
