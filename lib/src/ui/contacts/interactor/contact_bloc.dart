import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/contacts/components/contact_item.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'contact_bloc.freezed.dart';
part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnGotoNewContact>(_onGotoNewContact);
    on<_OnGotoContactDetails>(_onGotoContactDetails);
  }

  FutureOr<void> _initial(_Initial event, Emitter<ContactState> emit) async {}

  FutureOr<void> _onGotoNewContact(_OnGotoNewContact event, Emitter<ContactState> emit) {
    emit(state.copyWith(pageCommand: PageCommandNavigation.toPage(AppPages.contactDetail)));
  }

  FutureOr<void> _onGotoContactDetails(_OnGotoContactDetails event, Emitter<ContactState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.toPage(
        AppPages.contactDetail,
        argument: event.contact.name, // TODO(Q.Thang): replace to Contact ID
      ),
    ));
  }
}
