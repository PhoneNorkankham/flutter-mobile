import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final SupabaseRepository _supabaseRepository;

  MainBloc(this._supabaseRepository) : super(const MainState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnSelectedTabType>((event, emit) => emit(state.copyWith(
          type: event.type,
          pageCommand: PageCommandNavigation.popUntil(AppPages.main),
        )));
  }

  FutureOr<void> _initial(_Initial event, Emitter<MainState> emit) async {
    final parameter = Get.parameters["index"];
    if (parameter != null && parameter.isNotEmpty) {
      int index = int.tryParse(parameter) ?? 0;
      emit(state.copyWith(type: BottomNavType.values[index]));
    }
    await _supabaseRepository.getContacts();
    await _supabaseRepository.getGroups();
    await _supabaseRepository.getInteractions();
  }
}
