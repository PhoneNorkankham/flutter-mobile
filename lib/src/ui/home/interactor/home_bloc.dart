import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/enums/sheet_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnOpenNewChatBottomSheet>(_onOpenNewChatBottomSheet);
  }

  FutureOr<void> _initial(_Initial event, Emitter<HomeState> emit) async {
    // Show Search settings guide Dialog if allowed
  }

  FutureOr<void> _onOpenNewChatBottomSheet(
    _OnOpenNewChatBottomSheet event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(pageCommand: PageCommandShowBottomSheet(sheetType: SheetType.newChat)));
  }
}
