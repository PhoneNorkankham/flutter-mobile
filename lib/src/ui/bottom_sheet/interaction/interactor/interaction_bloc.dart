import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/use_cases/delete_contact_use_case.dart';
import 'package:keepup/src/utils/app_async_action.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'interaction_bloc.freezed.dart';
part 'interaction_event.dart';
part 'interaction_state.dart';

class InteractionBloc extends Bloc<InteractionEvent, InteractionState> {
  final SupabaseRepository _supabaseRepository;
  final DeleteContactUseCase _deleteContactUseCase;

  InteractionBloc(
    this._supabaseRepository,
    this._deleteContactUseCase,
  ) : super(const InteractionState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnInteraction>(_onInteraction);
    on<_OnDeleteContact>(_onDeleteContact);
  }

  FutureOr<void> _initial(_Initial event, Emitter<InteractionState> emit) {
    emit(state.copyWith(contact: event.contact));
  }

  FutureOr<void> _onInteraction(_OnInteraction event, Emitter<InteractionState> emit) async {
    final Contact? contact = state.contact;
    if (contact == null) return;
    switch (event.type) {
      case InteractionMethodType.Message:
        AppAsyncAction.instance.sendSMS(phoneNumber: contact.phoneNo);
        break;
      case InteractionMethodType.Call:
        AppAsyncAction.instance.callPhoneNumber(contact.phoneNo);
        break;
      case InteractionMethodType.Contact:
        emit(state.copyWith(
          pageCommand: PageCommandNavigation.toPage(
            AppPages.contactDetail,
            argument: contact,
          ),
        ));
        break;
      case InteractionMethodType.KeepUp:
        emit(state.copyWith(isLoading: true));
        final resource = await _supabaseRepository.keepUpContact(contact);
        PageCommand pageCommand;
        if (resource.isSuccess) {
          pageCommand = PageCommandMessage.showSuccess(
            LocaleKey.keepUpContactSuccessfully.tr,
          );
        } else {
          pageCommand = PageCommandMessage.showError(
            resource.message ?? LocaleKey.keepUpContactFailed.tr,
          );
        }
        emit(state.copyWith(
          isLoading: false,
          pageCommand: pageCommand,
        ));
        break;
    }
  }

  Future<DateTime?> getLastKeepUpDateTime(Contact? contact) async {
    if (contact != null) {
      final Interaction? interaction =
          await _supabaseRepository.getDBLastInteractionByContactId(contact.id);
      if (interaction != null) {
        return interaction.dateCompleted;
      }
    }
    return contact?.dateCreated;
  }

  Future<String> getFrequency(Contact? contact) async {
    if (contact != null) {
      final Group? group = await _supabaseRepository.getDBGroup(contact.id);
      if (group != null) {
        return group.frequencyInterval.title;
      }
    }
    return FrequencyIntervalType.everyDay.title;
  }

  FutureOr<void> _onDeleteContact(_OnDeleteContact event, Emitter<InteractionState> emit) async {
    emit(state.copyWith(isLoading: true));
    final VoidResult result = await _deleteContactUseCase.run(event.contact.id);
    if (result.isError) {
      final PageError pageError = result.asError!.error;
      emit(state.copyWith(
        isLoading: false,
        pageCommand: pageError.toPageCommand(),
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.pop(
          result: PopResult(
            status: true,
            resultFromPage: '',
            data: LocaleKey.contactDeletedSuccessfully.tr,
          ),
        ),
      ));
    }
  }
}
