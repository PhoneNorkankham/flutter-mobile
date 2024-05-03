import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/choice_every_day_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_input_type.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/utils/app_constants.dart';

part 'new_chat_bloc.freezed.dart';
part 'new_chat_event.dart';
part 'new_chat_state.dart';

class NewChatBloc extends Bloc<NewChatEvent, NewChatState> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNoController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final _createContactStateMapper = CreateContactStateMapper();

  final SupabaseRepository _supabaseRepository;
  final CreateContactUseCase _createContactUseCase;

  NewChatBloc(
    this._supabaseRepository,
    this._createContactUseCase,
  ) : super(const NewChatState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedTabType>(_onChangedTabType);
    on<_OnChangedKeyword>(_onChangedKeyword);
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
    on<_OnChangedGroupName>((event, emit) => emit(state.copyWith(groupName: event.groupName)));
    on<_OnCreateNewGroup>(_onCreateNewGroup);
    on<_OnIntervalChanged>((event, emit) => emit(state.copyWith(interval: event.interval)));
    on<_OnFrequencyChanged>((event, emit) => emit(state.copyWith(everyDays: event.frequency)));
    on<_OnInputChanged>(_onInputChanged);
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewChatState> emit) async {
    await _supabaseRepository.getContacts();
    await emit.forEach<List<Contact>>(
      _supabaseRepository.watchContacts(),
      onData: (contacts) {
        NewChatState state = this.state.copyWith();
        final String keyword = state.keyword;
        final List<Contact> filterContacts;
        if (keyword.isEmpty) {
          filterContacts = [...contacts];
        } else {
          filterContacts = [
            ...contacts
                .where((element) => element.name.toLowerCase().contains(keyword.toLowerCase()))
                .toList()
          ];
        }
        return state.copyWith(
          contacts: contacts,
          filterContacts: filterContacts,
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

  FutureOr<void> _onChangedTabType(_OnChangedTabType event, Emitter<NewChatState> emit) {
    NewChatState newState = state.copyWith(tabType: event.type);
    switch (event.type) {
      case NewChatTabType.newChat:
      case NewChatTabType.addMembers:
        nameController.text = '';
        emailController.text = '';
        phoneNoController.text = '';
        dateOfBirthController.text = '';
        newState = newState.copyWith(
          interval: 0,
          everyDays: AppConstants.defaultEveryDays,
          request: const ContactRequest(),
        );
        break;
      case NewChatTabType.newGroup:
      case NewChatTabType.newContact:
        break;
    }
    emit(newState);
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

  FutureOr<void> _onCreateNewGroup(_OnCreateNewGroup event, Emitter<NewChatState> emit) async {
    emit(state.copyWith(isLoading: true));
    final request = state.request.copyWith(
      expiration: DateTime.now().add(Duration(days: state.interval.toInt())),
      frequency: state.everyDays.map((e) => e.isActive).toList(),
    );
    final result = await _createContactUseCase.run(request);
    emit(_createContactStateMapper.mapResultToState(state, result));
  }

  FutureOr<void> _onInputChanged(_OnInputChanged event, Emitter<NewChatState> emit) {
    NewChatState newState;
    switch (event.inputType) {
      case NewChatInputType.name:
        newState = state.copyWith.request(name: event.value);
        break;
      case NewChatInputType.email:
        newState = state.copyWith.request(email: event.value);
        break;
      case NewChatInputType.phoneNo:
        newState = state.copyWith.request(phoneNo: event.value);
        break;
      case NewChatInputType.dateOfBirth:
        newState = state.copyWith.request(dateOfBirth: DateTime.tryParse(event.value));
        break;
    }
    emit(newState);
  }
}
