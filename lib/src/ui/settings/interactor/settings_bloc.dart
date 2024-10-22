import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/use_cases/upload_contact_avatar_manager.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SupabaseRepository _supabaseRepository;
  final UploadContactAvatarManager _uploadContactAvatarManager;

  SettingsBloc(
    this._supabaseRepository,
    this._uploadContactAvatarManager,
  ) : super(const SettingsState()) {
    on<_ClearPageCommand>((event, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnConfirmedResetData>(_onConfirmedResetData);
  }

  FutureOr<void> _onConfirmedResetData(
    _OnConfirmedResetData event,
    Emitter<SettingsState> emit,
  ) async {
    _uploadContactAvatarManager.clearAll();
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.resetData();
    emit(state.copyWith(
      isLoading: false,
      pageCommand: resource.isSuccess
          ? PageCommandMessage.showSuccess(LocaleKey.dataResetSuccessful.tr)
          : PageCommandMessage.showError(resource.message ?? LocaleKey.dataResetFailed.tr),
    ));
  }
}
