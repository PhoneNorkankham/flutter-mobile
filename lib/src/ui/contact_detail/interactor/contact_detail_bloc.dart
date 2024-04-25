import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/enums/contact_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'contact_detail_bloc.freezed.dart';
part 'contact_detail_event.dart';
part 'contact_detail_state.dart';

class ContactDetailBloc extends Bloc<ContactDetailEvent, ContactDetailState> {
  ContactDetailBloc() : super(const ContactDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<ContactDetailState> emit) async {
    final ContactType contactType =
        Get.arguments is ContactType ? Get.arguments : ContactType.newContact;
    emit(state.copyWith(contactType: contactType));
  }
}
