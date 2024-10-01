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
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_category_type.dart';
import 'package:rxdart/rxdart.dart';

part 'new_chat_bloc.freezed.dart';
part 'new_chat_event.dart';
part 'new_chat_state.dart';

class NewChatBloc extends Bloc<NewChatEvent, NewChatState> {
  final keywordController = TextEditingController();

  final SupabaseRepository _supabaseRepository;

  NewChatBloc(this._supabaseRepository) : super(const NewChatState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewChatState> emit) {
    return emit.forEach<_DispatchNewChatState>(
      Rx.combineLatest2(
        _supabaseRepository.watchDBGroups(),
        _supabaseRepository.watchDBContacts(),
        (groups, contacts) => _DispatchNewChatState(
          groups,
          contacts,
        ),
      ),
      onData: (viewState) => state.copyWith(
        contacts: viewState.contacts,
        categories: viewState.groups.isEmpty
            ? [NewChatCategoryType.newGroup, NewChatCategoryType.newContact]
            : NewChatCategoryType.values,
        pageState: PageState.success,
      ),
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showError(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
      ),
    );
  }

  Future<int> getDaysOfFrequency(String groupId) async {
    if (groupId.isNotEmpty) {
      final Group? group = await _supabaseRepository.getDBGroup(groupId);
      if (group != null) {
        return group.frequencyInterval.days;
      }
    }
    return 0;
  }

  @override
  Future<void> close() {
    keywordController.dispose();
    return super.close();
  }
}

class _DispatchNewChatState {
  final List<Group> groups;
  final List<Contact> contacts;

  _DispatchNewChatState(this.groups, this.contacts);
}
