import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'group_bloc.freezed.dart';
part 'group_event.dart';
part 'group_state.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc() : super(const GroupState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupState> emit) async {
    // Show Search settings guide Dialog if allowed
  }
}
