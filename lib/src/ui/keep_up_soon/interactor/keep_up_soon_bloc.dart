import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_type.dart';

part 'keep_up_soon_bloc.freezed.dart';
part 'keep_up_soon_event.dart';
part 'keep_up_soon_state.dart';

class KeepUpSoonBloc extends Bloc<KeepUpSoonEvent, KeepUpSoonState> {
  final SupabaseRepository _supabaseRepository;

  KeepUpSoonBloc(this._supabaseRepository) : super(const KeepUpSoonState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnFetchWeekContacts>(_onFetchWeekContacts);
    on<_OnFetchMonthContacts>(_onFetchMonthContacts);
    on<_OnChangedType>((event, emit) => emit(state.copyWith(type: event.type)));
    on<_OnKeepUpGroup>(_onKeepUpGroup);
    on<_OnKeepUpContact>(_onKeepUpContact);
  }

  FutureOr<void> _initial(_Initial event, Emitter<KeepUpSoonState> emit) {
    add(const KeepUpSoonEvent.onFetchWeekContacts());
    add(const KeepUpSoonEvent.onFetchMonthContacts());
  }

  FutureOr<void> _onFetchWeekContacts(
    _OnFetchWeekContacts event,
    Emitter<KeepUpSoonState> emit,
  ) {
    return emit.forEach(
      _supabaseRepository.watchInAWeekContacts(),
      onData: (contacts) => state.copyWith(weekContacts: contacts),
    );
  }

  FutureOr<void> _onFetchMonthContacts(
    _OnFetchMonthContacts event,
    Emitter<KeepUpSoonState> emit,
  ) {
    return emit.forEach(
      _supabaseRepository.watchInAMonthContacts(),
      onData: (contacts) => state.copyWith(monthContacts: contacts),
    );
  }

  Future<List<Group>> getGroupsByContacts(List<Contact> contacts) =>
      _supabaseRepository.getGroupsByContacts(contacts);

  FutureOr<void> _onKeepUpGroup(_OnKeepUpGroup event, Emitter<KeepUpSoonState> emit) {}

  FutureOr<void> _onKeepUpContact(_OnKeepUpContact event, Emitter<KeepUpSoonState> emit) {}
}
