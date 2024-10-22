import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/bing_search_image_data.dart';
import 'package:keepup/src/core/model/user_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/user_request.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/profile/usecases/update_profile_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_from_url_use_case.dart';
import 'package:keepup/src/use_cases/upload_avatar_use_case.dart';
import 'package:keepup/src/use_cases/upload_contact_avatar_manager.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final TextEditingController nameController = TextEditingController();

  final SupabaseRepository _supabaseRepository;
  final UploadContactAvatarManager _uploadContactAvatarManager;
  final UploadAvatarUseCase _uploadAvatarUseCase;
  final UploadAvatarFromUrlUseCase _uploadAvatarFromUrlUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;

  ProfileBloc(
    this._supabaseRepository,
    this._uploadContactAvatarManager,
    this._uploadAvatarUseCase,
    this._uploadAvatarFromUrlUseCase,
    this._updateProfileUseCase,
  ) : super(const ProfileState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedAvatar>(_onChangedAvatar);
    on<_OnChangedAvatarFromUrl>(_onChangedAvatarFromUrl);
    on<_OnChangedName>(_onChangedName);
    on<_OnConfirmedDeleteAccount>(_onConfirmedDeleteAccount);
    on<_OnConfirmedLogout>(_onConfirmedLogout);
  }

  @override
  Future<void> close() {
    nameController.dispose();
    return super.close();
  }

  FutureOr<void> _initial(_Initial event, Emitter<ProfileState> emit) {
    return emit.forEach(
      _supabaseRepository.watchLoggedInData,
      onData: (loggedInData) => state.copyWith(userData: loggedInData.userData ?? const UserData()),
    );
  }

  FutureOr<void> _onChangedAvatar(_OnChangedAvatar event, Emitter<ProfileState> emit) async {
    if (state.isLoading) return;
    final File avatarFile = event.file;
    emit(state.copyWith(isLoading: true, avatarFile: avatarFile));
    final DataResult<String> uploadAvatarResult = await _uploadAvatarUseCase.run(avatarFile);
    final String avatarUrl = uploadAvatarResult.valueOrNull ?? '';
    final PageCommand pageCommand;
    if (uploadAvatarResult.isValue) {
      UserRequest request = UserRequest(id: state.userData.id, avatar: avatarUrl);
      final updateResult = await _updateProfileUseCase.run(request);
      if (updateResult.isValue) {
        pageCommand = PageCommandMessage.showSuccess(LocaleKey.avatarUpdatedSuccessfully.tr);
      } else {
        final PageError pageError = updateResult.asError!.error;
        pageCommand = pageError.toPageCommand();
      }
    } else {
      final PageError pageError = uploadAvatarResult.asError!.error;
      pageCommand = pageError.toPageCommand();
    }
    return emit(state.copyWith(
      isLoading: false,
      pageCommand: pageCommand,
    ));
  }

  FutureOr<void> _onChangedAvatarFromUrl(
    _OnChangedAvatarFromUrl event,
    Emitter<ProfileState> emit,
  ) async {
    if (state.isLoading) return;
    final String newAvatar = event.data.contentUrl;
    emit(state.copyWith(isLoading: true));
    final DataResult<String> uploadAvatarResult = await _uploadAvatarFromUrlUseCase.run(newAvatar);
    final String avatarUrl = uploadAvatarResult.valueOrNull ?? '';
    final PageCommand pageCommand;
    if (uploadAvatarResult.isValue) {
      UserRequest request = UserRequest(id: state.userData.id, avatar: avatarUrl);
      final updateResult = await _updateProfileUseCase.run(request);
      if (updateResult.isValue) {
        pageCommand = PageCommandMessage.showSuccess(LocaleKey.avatarUpdatedSuccessfully.tr);
      } else {
        final PageError pageError = updateResult.asError!.error;
        pageCommand = pageError.toPageCommand();
      }
    } else {
      final PageError pageError = uploadAvatarResult.asError!.error;
      pageCommand = pageError.toPageCommand();
    }
    return emit(state.copyWith(
      isLoading: false,
      pageCommand: pageCommand,
    ));
  }

  FutureOr<void> _onChangedName(_OnChangedName event, Emitter<ProfileState> emit) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true, userData: state.userData.copyWith(name: event.value)));
    UserRequest request = UserRequest(id: state.userData.id, name: event.value);
    final updateResult = await _updateProfileUseCase.run(request);
    final PageCommand pageCommand;
    if (updateResult.isValue) {
      pageCommand = PageCommandMessage.showSuccess(LocaleKey.profileUpdatedSuccessfully.tr);
    } else {
      final PageError pageError = updateResult.asError!.error;
      pageCommand = pageError.toPageCommand();
    }
    return emit(state.copyWith(
      isLoading: false,
      pageCommand: pageCommand,
    ));
  }

  FutureOr<void> _onConfirmedDeleteAccount(
    _OnConfirmedDeleteAccount event,
    Emitter<ProfileState> emit,
  ) async {
    _uploadContactAvatarManager.clearAll();
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.deleteAccount();
    emit(state.copyWith(
      isLoading: false,
      pageCommand: resource.isSuccess
          ? PageCommandNavigation.pushAndRemoveUntilPage(AppPages.onboarding, (route) => false)
          : PageCommandMessage.showError(LocaleKey.deleteAccountFailed.tr),
    ));
  }

  FutureOr<void> _onConfirmedLogout(_OnConfirmedLogout event, Emitter<ProfileState> emit) async {
    _uploadContactAvatarManager.clearAll();
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.logout();
    emit(state.copyWith(
      isLoading: false,
      pageCommand: resource.isSuccess
          ? PageCommandNavigation.pushAndRemoveUntilPage(AppPages.onboarding, (route) => false)
          : PageCommandMessage.showError(LocaleKey.logoutFailed.tr),
    ));
  }
}
