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
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/group_detail/mappers/delete_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/get_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/mappers/update_group_state_mapper.dart';
import 'package:keepup/src/ui/group_detail/usecases/get_group_use_case.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/use_cases/add_contacts_use_case.dart';
import 'package:keepup/src/use_cases/delete_group_use_case.dart';
import 'package:keepup/src/use_cases/update_group_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'group_detail_bloc.freezed.dart';
part 'group_detail_event.dart';
part 'group_detail_state.dart';

class GroupDetailBloc extends Bloc<GroupDetailEvent, GroupDetailState> {
  final nameController = TextEditingController();

  final SupabaseRepository _supabaseRepository;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final GetGroupUseCase _getGroupUseCase;
  final GetGroupStateMapper _getGroupStateMapper;
  final UpdateGroupUseCase _updateGroupUseCase;
  final UpdateGroupStateMapper _updateGroupStateMapper;
  final DeleteGroupUseCase _deleteGroupUseCase;
  final DeleteGroupStateMapper _deleteGroupStateMapper;
  final AddContactsUseCase _addContactsUseCase;

  GroupDetailBloc(
    this._supabaseRepository,
    this._uploadAvatarUseCase,
    this._getGroupUseCase,
    this._getGroupStateMapper,
    this._updateGroupUseCase,
    this._updateGroupStateMapper,
    this._deleteGroupUseCase,
    this._deleteGroupStateMapper,
    this._addContactsUseCase,
  ) : super(const GroupDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnFrequencyIntervalChanged>((event, emit) => emit(state.copyWith.request(
          frequencyInterval: event.frequencyIntervalType,
        )));
    on<_OnNameChanged>((event, emit) => emit(state.copyWith.request(name: event.value)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnSavePressed>(_onSavePressed);
    on<_OnCancelPressed>(
        (_, emit) => emit(state.copyWith(pageCommand: PageCommandNavigation.pop())));
    on<_OnChangedAvatar>((event, emit) => emit(state.copyWith(avatar: event.file)));
    on<_OnRemoveContact>(_onRemoveContact);
    on<_OnDeleteGroup>(_onDeleteGroup);
    on<_OnChangedContacts>((event, emit) => emit(state.copyWith(contacts: event.contacts)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupDetailState> emit) async {
    final arguments = Get.arguments;
    final String groupId = arguments is Group
        ? arguments.id
        : arguments is String
            ? arguments
            : '';
    if (groupId.isEmpty) {
      emit(state.copyWith(
        pageState: PageState.success,
        pageCommand: PageCommandNavigation.pop(
          result: PopResult(
            status: false,
            resultFromPage: AppPages.groupDetail,
            data: LocaleKey.theGroupDoesNotExist.tr,
          ),
        ),
      ));
    } else {
      final result = await _getGroupUseCase.run(groupId);
      emit(_getGroupStateMapper.mapResultToState(state, result));
      nameController.text = state.request.name;
      final List<String> contactIds = state.request.contacts;
      final List<ContactRequest> contacts = await _supabaseRepository
          .getDBContactByIds(contactIds)
          .then((value) => value.map((e) => ContactRequest.fromJson(e.toJson())).toList());
      emit(state.copyWith(contacts: contacts));
    }
  }

  FutureOr<void> _onSavePressed(_OnSavePressed event, Emitter<GroupDetailState> emit) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));

    GroupRequest request = state.request.copyWith();

    // #1. Upload Avatar of Group
    final File? avatarFile = state.avatar;
    if (avatarFile != null) {
      final DataResult<String> result = await _uploadAvatarUseCase.run(avatarFile);
      if (result.isValue) {
        request = request.copyWith(avatar: result.valueOrNull ?? '');
      } else {
        final PageError pageError = result.asError!.error;
        return emit(state.copyWith(
          isLoading: false,
          pageCommand: pageError.toPageCommand(),
        ));
      }
    }

    // #2. Remove groupId in the group's old contacts
    final List<String> contactIds = request.contacts;
    if (contactIds.isNotEmpty) {
      // Get old contacts of group
      final List<Contact> oldContacts = await _supabaseRepository.getDBContactByIds(contactIds);
      // Get requests of contacts
      final List<ContactRequest> oldContactRequests = oldContacts.map((e) {
        // Remove groupId
        final Contact contact = e.copyWith(groupId: '');
        return ContactRequest.fromJson(contact.toJson());
      }).toList();
      if (oldContactRequests.isNotEmpty) {
        final result = await _addContactsUseCase.run(oldContactRequests);
        if (result.isValue) {
          // Remove contacts in group request
          request = request.copyWith(contacts: []);
        }
      }
    }

    // #3. Add new contacts
    final List<ContactRequest> contacts = state.contacts
        .map((e) => e.copyWith(
              groupId: state.request.groupId,
              expiration: state.request.frequencyInterval.toExpirationDate(),
            ))
        .toList();
    if (contacts.isNotEmpty) {
      final result = await _addContactsUseCase.run(contacts);
      final List<String> contactIds = result.valueOrNull?.map((e) => e.id).toList() ?? [];
      // Add new contacts to group request
      request = request.copyWith(contacts: contactIds);
    }

    // #4. Update group
    final result = await _updateGroupUseCase.run(request);
    emit(_updateGroupStateMapper.mapResultToState(state, result));
  }

  FutureOr<void> _onRemoveContact(_OnRemoveContact event, Emitter<GroupDetailState> emit) {
    final List<ContactRequest> contacts = [...state.contacts]..remove(event.contact);
    emit(state.copyWith(contacts: contacts));
  }

  FutureOr<void> _onDeleteGroup(_OnDeleteGroup event, Emitter<GroupDetailState> emit) async {
    final Group? group = state.groupDetail;
    if (group == null || state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    final VoidResult result = await _deleteGroupUseCase.run(group);
    emit(_deleteGroupStateMapper.mapResultToState(state, result));
  }
}
