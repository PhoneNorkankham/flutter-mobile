import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/components/new_contact_input_type.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/mappers/create_contact_state_mapper.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/mappers/create_group_state_mapper.dart';
import 'package:keepup/src/use_cases/create_contact_use_case.dart';
import 'package:keepup/src/use_cases/create_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';

part 'new_chat_bloc.freezed.dart';
part 'new_chat_event.dart';
part 'new_chat_state.dart';

class NewChatBloc extends Bloc<NewChatEvent, NewChatState> {
  final keywordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNoController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final _createContactStateMapper = CreateContactStateMapper();
  final _createGroupStateMapper = CreateGroupStateMapper();

  final SupabaseRepository _supabaseRepository;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final CreateContactUseCase _createContactUseCase;
  final CreateGroupUseCase _createGroupUseCase;

  NewChatBloc(
    this._supabaseRepository,
    this._uploadAvatarUseCase,
    this._createContactUseCase,
    this._createGroupUseCase,
  ) : super(const NewChatState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedTabType>(_onChangedTabType);
    on<_OnChangedKeyword>(_onChangedKeyword);
    on<_OnSelectedContact>(_onSelectedContact);
    on<_OnRemovedContact>(_onRemovedContact);
    on<_OnChangedGroupName>((event, emit) => emit(state.copyWith.groupRequest(name: event.name)));
    on<_OnCreateNewGroup>(_onCreateNewGroup);
    on<_OnCreateNewContact>(_onCreateNewContact);
    on<_OnFrequencyIntervalChanged>((event, emit) => emit(state.copyWith.groupRequest(
          frequencyInterval: event.frequencyIntervalType,
        )));
    on<_OnInputChanged>(_onInputChanged);
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<NewChatState> emit) async {
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
          avatar: null,
          selectedContacts: [],
          groupRequest: const GroupRequest(),
          contactRequest: const ContactRequest(),
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
    final File? avatarFile = state.avatar;
    String avatarUrl = '';
    if (avatarFile != null) {
      final DataResult<String> result = await _uploadAvatarUseCase.run(avatarFile);
      if (result.isValue) {
        avatarUrl = result.valueOrCrash;
      } else {
        final PageError pageError = result.asError!.error;
        emit(state.copyWith(
          isLoading: false,
          pageCommand: pageError.pageErrorType == NetworkError.token
              ? PageCommandDialog.showExpirationSession()
              : PageCommandMessage.showError(pageError.message),
        ));
        return;
      }
    }
    final request = state.groupRequest.copyWith(
      avatar: avatarUrl,
      contacts: state.selectedContacts.map((e) => e.id).toList(),
    );
    final result = await _createGroupUseCase.run(request);
    emit(_createGroupStateMapper.mapResultToState(state, result));
    nameController.text = '';
  }

  FutureOr<void> _onCreateNewContact(_OnCreateNewContact event, Emitter<NewChatState> emit) async {
    final Group? group = state.group;
    if (group == null) {
      emit(state.copyWith(
        pageCommand: PageCommandMessage.showError(LocaleKey.pleaseChooseAGroup.tr),
      ));
      return;
    }
    emit(state.copyWith(isLoading: true));
    final File? avatarFile = state.avatar;
    String avatarUrl = '';
    if (avatarFile != null) {
      final DataResult<String> result = await _uploadAvatarUseCase.run(avatarFile);
      if (result.isValue) {
        avatarUrl = result.valueOrCrash;
      } else {
        final PageError pageError = result.asError!.error;
        emit(state.copyWith(
          isLoading: false,
          pageCommand: pageError.pageErrorType == NetworkError.token
              ? PageCommandDialog.showExpirationSession()
              : PageCommandMessage.showError(pageError.message),
        ));
        return;
      }
    }
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final DateTime expiration;
    switch (group.frequencyInterval) {
      case FrequencyIntervalType.everyDay:
        expiration = now.add(const Duration(days: 1));
        break;
      case FrequencyIntervalType.everyWeek:
        expiration = now.add(const Duration(days: 7));
        break;
      case FrequencyIntervalType.everyTwoWeeks:
        expiration = now.add(const Duration(days: 14));
        break;
      case FrequencyIntervalType.everyMonth:
        expiration = now.copyWith(month: now.month + 1);
        break;
      case FrequencyIntervalType.everyThreeMonths:
        expiration = now.copyWith(month: now.month + 3);
        break;
      case FrequencyIntervalType.everySixMonths:
        expiration = now.copyWith(month: now.month + 6);
        break;
      case FrequencyIntervalType.everyYear:
        expiration = now.copyWith(year: now.year + 1);
        break;
      default:
        expiration = now;
        break;
    }

    final request = state.contactRequest.copyWith(
      avatar: avatarUrl,
      expiration: expiration,
    );
    final result = await _createContactUseCase.run(request);
    emit(_createContactStateMapper.mapResultToState(state, result));
    nameController.text = '';
    emailController.text = '';
    phoneNoController.text = '';
    dateOfBirthController.text = '';
  }

  FutureOr<void> _onInputChanged(_OnInputChanged event, Emitter<NewChatState> emit) {
    NewChatState newState;
    switch (event.inputType) {
      case NewChatInputType.name:
        newState = state.copyWith.contactRequest(name: event.value);
        break;
      case NewChatInputType.email:
        newState = state.copyWith.contactRequest(email: event.value);
        break;
      case NewChatInputType.phoneNo:
        newState = state.copyWith.contactRequest(phoneNo: event.value);
        break;
      case NewChatInputType.dateOfBirth:
        newState = state.copyWith.contactRequest(dateOfBirth: DateTime.tryParse(event.value));
        break;
    }
    emit(newState);
  }

  @override
  Future<void> close() {
    keywordController.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneNoController.dispose();
    dateOfBirthController.dispose();
    return super.close();
  }
}
