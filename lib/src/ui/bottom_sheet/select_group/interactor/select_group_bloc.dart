import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart' hide Rx;
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';

part 'select_group_bloc.freezed.dart';
part 'select_group_event.dart';
part 'select_group_state.dart';

class SelectGroupBloc extends Bloc<SelectGroupEvent, SelectGroupState> {
  final keywordController = TextEditingController();

  final SupabaseRepository _supabaseRepository;

  SelectGroupBloc(
    this._supabaseRepository,
  ) : super(const SelectGroupState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<SelectGroupState> emit) async {
    await emit.forEach<List<Group>>(
      _supabaseRepository.watchDBGroups(),
      onData: (groups) => state.copyWith(
        groups: groups,
        pageState: PageState.success,
      ),
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showError(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
      ),
    );
  }

  @override
  Future<void> close() {
    keywordController.dispose();
    return super.close();
  }
}
