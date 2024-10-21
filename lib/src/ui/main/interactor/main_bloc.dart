import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/logged_in_data.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/design/components/dialogs/dialog_type.dart';
import 'package:keepup/src/enums/app_drawer_type.dart';
import 'package:keepup/src/enums/bottom_nav_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/main/usecases/confirm_linked_identity_use_case.dart';
import 'package:keepup/src/use_cases/upload_contact_avatar_manager.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final SupabaseRepository _supabaseRepository;
  final ConfirmLinkedIdentityUseCase _confirmLinkedIdentityUseCase;
  final UploadContactAvatarManager _uploadContactAvatarManager;
  final AppLinks _appLinks = AppLinks(); // AppLinks is singleton
  StreamSubscription<Uri>? _uriLinkSubs;

  MainBloc(
    this._supabaseRepository,
    this._confirmLinkedIdentityUseCase,
    this._uploadContactAvatarManager,
  ) : super(const MainState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnSelectedTabType>((event, emit) => emit(state.copyWith(
          type: event.type,
          pageCommand: PageCommandNavigation.popUntil(AppPages.main),
        )));
    on<_OnDrawerItemPressed>(_onDrawerItemPressed);
    on<_OnConfirmedResetData>(_onConfirmedResetData);
    on<_OnConfirmedDeleteAccount>(_onConfirmedDeleteAccount);
    on<_OnConfirmedLogout>(_onConfirmedLogout);
    on<_OnHandlerAuthCallback>(_onHandlerAuthCallback);
  }

  @override
  Future<void> close() {
    _uriLinkSubs?.cancel();
    return super.close();
  }

  FutureOr<void> _initial(_Initial event, Emitter<MainState> emit) async {
    final parameter = Get.parameters["index"];
    if (parameter != null && parameter.isNotEmpty) {
      int index = int.tryParse(parameter) ?? 0;
      emit(state.copyWith(type: BottomNavType.values[index]));
    }
    _supabaseRepository.getGroups();
    _supabaseRepository.getContacts();
    _supabaseRepository.getCategories();
    _supabaseRepository.getInteractions();

    // Subscribe to all events (initial link and further)
    _uriLinkSubs = _appLinks.uriLinkStream.listen((uri) {
      debugPrint("+++ Subscribed to ${uri.toString()}");
      if (uri.host == 'auth-callback') {
        final code = uri.queryParameters['code'] ?? '';
        final errorDescription = uri.queryParameters['error_description'] ?? '';
        add(MainEvent.onHandlerAuthCallback(code, errorDescription));
      }
    });

    return emit.forEach(
      _supabaseRepository.watchLoggedInData,
      onData: (loggedInData) => state.copyWith(loggedInData: loggedInData),
    );
  }

  FutureOr<void> _onDrawerItemPressed(_OnDrawerItemPressed event, Emitter<MainState> emit) {
    switch (event.type) {
      case AppDrawerType.resetData:
        emit(state.copyWith(pageCommand: PageCommandDialog(DialogType.resetData)));
        break;
      case AppDrawerType.deleteAccount:
        emit(state.copyWith(pageCommand: PageCommandDialog(DialogType.deleteAccount)));
        break;
      case AppDrawerType.logout:
        emit(state.copyWith(pageCommand: PageCommandDialog(DialogType.logout)));
        break;
      // case AppDrawerType.socialLogin:
      //   emit(state.copyWith(pageCommand: PageCommandNavigation.toPage(AppPages.onboarding)));
      //   break;
      case _:
        break;
    }
  }

  FutureOr<void> _onConfirmedResetData(_OnConfirmedResetData event, Emitter<MainState> emit) async {
    _uploadContactAvatarManager.clearAll();
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.resetData();
    // if (resource.isSuccess) {
    //   // Create default groups after reset data
    //   await _createDefaultGroupsUseCase.run();
    // }
    emit(state.copyWith(
      isLoading: false,
      pageCommand: resource.isSuccess
          ? PageCommandMessage.showSuccess(LocaleKey.resetDataSuccessfully.tr)
          : PageCommandMessage.showError(resource.message ?? LocaleKey.resetDataFailed.tr),
    ));
  }

  FutureOr<void> _onConfirmedDeleteAccount(
    _OnConfirmedDeleteAccount event,
    Emitter<MainState> emit,
  ) async {
    _uploadContactAvatarManager.clearAll();
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.deleteAccount();
    if (resource.isSuccess) {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.pushAndRemoveUntilPage(
          AppPages.onboarding,
          (route) => false,
        ),
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandMessage.showError(LocaleKey.deleteAccountFailed.tr),
      ));
    }
  }

  FutureOr<void> _onConfirmedLogout(_OnConfirmedLogout event, Emitter<MainState> emit) async {
    _uploadContactAvatarManager.clearAll();
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.logout();
    if (resource.isSuccess) {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.pushAndRemoveUntilPage(
          AppPages.onboarding,
          (route) => false,
        ),
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        pageCommand: PageCommandMessage.showError(LocaleKey.logoutFailed.tr),
      ));
    }
  }

  FutureOr<void> _onHandlerAuthCallback(
    _OnHandlerAuthCallback event,
    Emitter<MainState> emit,
  ) async {
    if (event.code.isNotEmpty) {
      emit(state.copyWith(isLoading: true));
      final result = await _confirmLinkedIdentityUseCase.run(event.code);
      if (result.isValue) {
        emit(state.copyWith(
          isLoading: false,
          pageCommand: PageCommandDialog.showSuccess(
            LocaleKey.identityHasBeenLinkedSuccessfully.tr,
          ),
        ));
      } else {
        final PageError pageError = result.asError!.error;
        emit(state.copyWith(
          isLoading: false,
          pageCommand: pageError.toPageCommand(),
        ));
      }
    } else if (event.errorDescription.isNotEmpty) {
      emit(state.copyWith(pageCommand: PageCommandDialog.showError(event.errorDescription)));
    }
  }
}
