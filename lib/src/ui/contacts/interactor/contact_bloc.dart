import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'contact_bloc.freezed.dart';
part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final SupabaseRepository _supabaseRepository;

  ContactBloc(
    this._supabaseRepository,
  ) : super(const ContactState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnGotoNewContact>(_onGotoNewContact);
    on<_OnGotoContactDetails>(_onGotoContactDetails);
  }

  FutureOr<void> _initial(_Initial event, Emitter<ContactState> emit) async {
    await emit.forEach<List<Contact>>(
      _supabaseRepository.watchContacts(),
      onData: (contacts) => state.copyWith(
        contacts: contacts,
        pageState: PageState.success,
      ),
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
      ),
    );
  }

  FutureOr<void> _onGotoNewContact(_OnGotoNewContact event, Emitter<ContactState> emit) {
    emit(state.copyWith(pageCommand: PageCommandNavigation.toPage(AppPages.contactDetail)));
  }

  FutureOr<void> _onGotoContactDetails(_OnGotoContactDetails event, Emitter<ContactState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.toPage(
        AppPages.contactDetail,
        argument: event.contact,
      ),
    ));
  }
}
