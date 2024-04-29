import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';

part 'new_chat_bloc.freezed.dart';
part 'new_chat_event.dart';
part 'new_chat_state.dart';

class NewChatBloc extends Bloc<NewChatEvent, NewChatState> {
  NewChatBloc() : super(const NewChatState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedTabType>(_onChangedTabType);
    on<_OnChangedKeyword>(_onChangedKeyword);
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewChatState> emit) {
    final contacts = [
      Contact(name: 'Vanisa Legon'),
      Contact(name: 'Permir Jinkan'),
      Contact(name: 'Peiris Gao'),
      Contact(name: 'Valerie Tang'),
      Contact(name: 'Jamison Shaffer'),
      Contact(name: 'Kyro Peters'),
      Contact(name: 'Leila Hurley'),
      Contact(name: 'Van Calhoun'),
      Contact(name: 'Andrew Lyons'),
    ];
    emit(state.copyWith(
      contacts: contacts,
      filterContacts: contacts,
      selectedContacts: [],
      keyword: '',
    ));
  }

  FutureOr<void> _onChangedTabType(_OnChangedTabType event, Emitter<NewChatState> emit) {
    if (event.type == NewChatTabType.newGroup || event.type == NewChatTabType.newContact) {
      return Future.value();
    }
    emit(state.copyWith(tabType: event.type));
  }

  FutureOr<void> _onChangedKeyword(_OnChangedKeyword event, Emitter<NewChatState> emit) {
    NewChatState state = this.state.copyWith();
    final String keyword = event.keyword;
    if (keyword.isEmpty) {
      state = state.copyWith(filterContacts: state.contacts);
    } else {
      state = state.copyWith(
        filterContacts: state.contacts
            .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
            .toList(),
      );
    }
    emit(state.copyWith(keyword: keyword));
  }

  FutureOr<void> _onSelectedContact(_OnSelectedContact event, Emitter<NewChatState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts, event.contact]));
  }

  FutureOr<void> _onRemovedContact(_OnRemovedContact event, Emitter<NewChatState> emit) {
    emit(state.copyWith(selectedContacts: [...state.selectedContacts]..remove(event.contact)));
  }
}
