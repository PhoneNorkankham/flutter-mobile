import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/design/components/popup_menu/choose_application_popup.dart';
import 'package:keepup/src/design/components/popup_menu/choose_phone_popup.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/use_cases/delete_contact_use_case.dart';
import 'package:keepup/src/use_cases/update_contact_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_from_url_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:keepup/src/utils/app_async_action.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'interaction_bloc.freezed.dart';
part 'interaction_event.dart';
part 'interaction_state.dart';

class InteractionBloc extends Bloc<InteractionEvent, InteractionState> {
  final SupabaseRepository _supabaseRepository;
  final DeleteContactUseCase _deleteContactUseCase;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final UploadAvatarFromUrlUseCase _uploadAvatarFromUrlUseCase;
  final UpdateContactUseCase _updateContactUseCase;

  InteractionBloc(
    this._supabaseRepository,
    this._deleteContactUseCase,
    this._uploadAvatarUseCase,
    this._uploadAvatarFromUrlUseCase,
    this._updateContactUseCase,
  ) : super(const InteractionState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnInteraction>(_onInteraction);
    on<_OnDeleteContact>(_onDeleteContact);
    on<_OnChangedAvatar>(_onChangedAvatar);
    on<_OnChangedAvatarFromUrl>(_onChangedAvatarFromUrl);
  }

  FutureOr<void> _initial(_Initial event, Emitter<InteractionState> emit) {
    emit(state.copyWith(contact: event.contact));
    return emit.forEach(
      _supabaseRepository.watchDBContactById(event.contact.id),
      onData: (contact) => state.copyWith(contact: contact),
    );
  }

  FutureOr<void> _onInteraction(_OnInteraction event, Emitter<InteractionState> emit) async {
    final Contact? contact = state.contact;
    if (contact == null || state.isLoading) return;
    switch (event.type) {
      case InteractionMethodType.Message:
      case InteractionMethodType.Call:
        emit(state.copyWith(isLoading: true));
        bool isMessage = event.type == InteractionMethodType.Message;
        bool isSupportedWhatsApp = await AppAsyncAction.instance.isSupportedWhatsApp();
        emit(state.copyWith(isLoading: false));

        ApplicationType shareType = ApplicationType.normal;
        if (isSupportedWhatsApp) {
          shareType = await ChooseApplicationPopup.show(isMessage: isMessage);
        }
        if (shareType == ApplicationType.none) return;

        String phoneNo = contact.phoneNo;
        if (contact.phones.length > 1) {
          phoneNo = await ChoosePhonePopup.show(contact.contactPhones);
        }
        if (phoneNo.isEmpty) return;

        emit(state.copyWith(isLoading: true));
        switch (shareType) {
          case ApplicationType.none:
          case ApplicationType.normal:
            if (isMessage) {
              AppAsyncAction.instance.sendSMS(phoneNo);
            } else {
              AppAsyncAction.instance.callPhoneNumber(phoneNo);
            }
            break;
          case ApplicationType.whatsapp:
            AppAsyncAction.instance.openWhatsapp(phoneNo);
            break;
        }
        emit(state.copyWith(isLoading: false));
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

  Future<DateTime?> getLastKeepUpDateTime(Contact contact) async {
    final Interaction? interaction =
        await _supabaseRepository.getDBLastInteractionByContactId(contact.id);
    if (interaction == null) return null;
    return interaction.dateCompleted;
  }

  Future<String> getFrequency(Contact? contact) async {
    if (contact != null) {
      final Group? group = await _supabaseRepository.getDBGroup(contact.groupId);
      if (group != null) {
        return group.frequencyInterval.title;
      }
    }
    return '';
  }

  Future<int> getDaysOfFrequency(String groupId) async {
    if (groupId.isNotEmpty) {
      final Group? group = await _supabaseRepository.getDBGroup(groupId);
      if (group != null) {
        return group.frequencyInterval.days;
      }
    }
    return 0;
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

  FutureOr<void> _onChangedAvatar(_OnChangedAvatar event, Emitter<InteractionState> emit) async {
    final Contact? contact = state.contact;
    if (contact == null || state.isLoading) return;
    final File avatarFile = event.file;
    emit(state.copyWith(isLoading: true, avatar: avatarFile));
    final DataResult<String> uploadAvatarResult = await _uploadAvatarUseCase.run(avatarFile);
    final PageError pageError;
    if (uploadAvatarResult.isValue) {
      final String avatarUrl = uploadAvatarResult.valueOrNull ?? '';
      final request = ContactRequest.fromJson(contact.toJson()).copyWith(avatar: avatarUrl);
      final updateResult = await _updateContactUseCase.run(request);
      if (updateResult.isValue) {
        return emit(state.copyWith(
          isLoading: false,
          contact: updateResult.valueOrNull ?? state.contact,
          pageCommand: PageCommandMessage.showSuccess(LocaleKey.avatarUpdatedSuccessfully.tr),
        ));
      } else {
        pageError = updateResult.asError!.error;
      }
    } else {
      pageError = uploadAvatarResult.asError!.error;
    }
    emit(state.copyWith(
      isLoading: false,
      avatar: null,
      pageCommand: pageError.toPageCommand(),
    ));
  }

  FutureOr<void> _onChangedAvatarFromUrl(
    _OnChangedAvatarFromUrl event,
    Emitter<InteractionState> emit,
  ) async {
    final Contact? contact = state.contact;
    if (contact == null || state.isLoading) return;
    final String oldAvatar = contact.avatar;
    final String newAvatar = event.data.contentUrl;
    emit(state.copyWith(isLoading: true, contact: contact.copyWith(avatar: newAvatar)));
    DataResult<String> uploadAvatarResult = await _uploadAvatarFromUrlUseCase.run(newAvatar);
    PageError pageError;
    if (uploadAvatarResult.isValue) {
      final String avatarUrl = uploadAvatarResult.valueOrNull ?? '';
      final request = ContactRequest.fromJson(contact.toJson()).copyWith(avatar: avatarUrl);
      final updateResult = await _updateContactUseCase.run(request);
      if (updateResult.isValue) {
        return emit(state.copyWith(
          isLoading: false,
          contact: updateResult.valueOrNull ?? state.contact,
          pageCommand: PageCommandMessage.showSuccess(LocaleKey.avatarUpdatedSuccessfully.tr),
        ));
      } else {
        pageError = updateResult.asError!.error;
      }
    } else {
      pageError = uploadAvatarResult.asError!.error;
    }
    emit(state.copyWith(
      isLoading: false,
      contact: contact.copyWith(avatar: oldAvatar),
      pageCommand: pageError.toPageCommand(),
    ));
  }
}
