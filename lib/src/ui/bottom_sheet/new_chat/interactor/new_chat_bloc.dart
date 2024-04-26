import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/enums/new_chat_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';

part 'new_chat_bloc.freezed.dart';
part 'new_chat_event.dart';
part 'new_chat_state.dart';

class NewChatBloc extends Bloc<NewChatEvent, NewChatState> {
  NewChatBloc() : super(const NewChatState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
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
    emit(state.copyWith(contacts: contacts));
  }
}
