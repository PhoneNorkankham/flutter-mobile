import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'contact_bloc.freezed.dart';
part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<ContactState> emit) async {
    // Show Search settings guide Dialog if allowed
  }
}
