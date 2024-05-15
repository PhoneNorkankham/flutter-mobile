import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';

part 'add_member_bloc.freezed.dart';
part 'add_member_event.dart';
part 'add_member_state.dart';

class AddMemberBloc extends Bloc<AddMemberEvent, AddMemberState> {
  final SupabaseRepository _supabaseRepository;

  AddMemberBloc(
    this._supabaseRepository,
  ) : super(const AddMemberState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
  }

  FutureOr<void> _initial(_Initial event, Emitter<AddMemberState> emit) {
    emit(state.copyWith(groupId: event.groupId));
    return emit.forEach<List<Contact>>(
      _supabaseRepository.watchContacts(),
      onData: (contacts) {
        // Get all contacts that don't belong to any other group
        final List<Contact> newContacts = contacts
            .where((element) => element.groupId.isEmpty || element.groupId == state.groupId)
            .toList();

        // Get all selected contacts
        final List<Contact> selectedContacts = newContacts
            .where((element) => event.selectedContacts.map((e) => e.id).contains(element.id))
            .toList();

        return state.copyWith(
          contacts: newContacts,
          selectedContacts: selectedContacts,
          pageState: PageState.success,
          isLoading: false,
        );
      },
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
        isLoading: false,
      ),
    );
  }

  FutureOr<void> _onSelectedContact(_OnSelectedContact event, Emitter<AddMemberState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<AddMemberState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }
}
