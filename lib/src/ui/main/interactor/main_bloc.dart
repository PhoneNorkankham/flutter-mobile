import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<_OnInitial>(_onInitial);
    on<_OnBottomNavigationPageTapped>(_onBottomNavigationPageTapped);
    on<_OnClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _onInitial(_OnInitial event, Emitter<MainState> emit) async {
    final parameter = Get.parameters["index"];
    if (parameter != null && parameter.isNotEmpty) {
      int index = int.tryParse(parameter) ?? 0;
      emit(state.copyWith(currentPage: BottomNavType.values[index]));
    }
  }

  void _onBottomNavigationPageTapped(_OnBottomNavigationPageTapped event, Emitter<MainState> emit) {
    emit(state.copyWith(currentPage: event.page));
  }
}
