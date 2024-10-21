import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/extensions/contact_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_type.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'keep_up_soon_bloc.freezed.dart';
part 'keep_up_soon_event.dart';
part 'keep_up_soon_state.dart';

class KeepUpSoonBloc extends Bloc<KeepUpSoonEvent, KeepUpSoonState> {
  final SupabaseRepository _supabaseRepository;

  KeepUpSoonBloc(this._supabaseRepository) : super(const KeepUpSoonState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnFetchGroups>(_onFetchGroups);
    on<_OnFetchContacts>(_onFetchContacts);
    on<_OnChangedType>((event, emit) => emit(state.copyWith(type: event.type)));
    on<_OnKeepUpGroup>(_onKeepUpGroup);
    on<_OnKeepUpContact>(_onKeepUpContact);
    on<_OnGotoGroupDetails>(_onGotoGroupDetails);
    on<_OnFilter>((event, emit) => emit(state.copyWith(selectedCategory: event.category)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<KeepUpSoonState> emit) async {
    add(const KeepUpSoonEvent.onFetchGroups());
    add(const KeepUpSoonEvent.onFetchContacts());

    // Get categories
    final Resource<List<Category>> resource = await _supabaseRepository.getCategories();
    final List<Category> categories = resource.data ?? [];
    emit(state.copyWith(categories: [
      const Category(id: '', name: AppConstants.allCategories),
      ...categories,
    ]));
  }

  FutureOr<void> _onFetchGroups(_OnFetchGroups event, Emitter<KeepUpSoonState> emit) {
    return emit.forEach(
      _supabaseRepository.watchDBGroups(),
      onData: (groups) => state.copyWith(groups: groups),
    );
  }

  FutureOr<void> _onFetchContacts(_OnFetchContacts event, Emitter<KeepUpSoonState> emit) {
    return emit.forEach(
      _supabaseRepository.watchDBContacts(),
      onData: (contacts) => state.copyWith(contacts: contacts),
    );
  }

  FutureOr<void> _onKeepUpGroup(_OnKeepUpGroup event, Emitter<KeepUpSoonState> emit) async {
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.keepUpGroup(event.group);
    PageCommand pageCommand;
    if (resource.isSuccess) {
      pageCommand = PageCommandMessage.showSuccess(
        LocaleKey.keepUpGroupSuccessfully.tr,
      );
    } else {
      pageCommand = PageCommandMessage.showError(
        resource.message ?? LocaleKey.keepUpGroupFailed.tr,
      );
    }
    emit(state.copyWith(
      isLoading: false,
      pageCommand: pageCommand,
    ));
  }

  FutureOr<void> _onKeepUpContact(_OnKeepUpContact event, Emitter<KeepUpSoonState> emit) async {
    emit(state.copyWith(isLoading: true));
    final resource = await _supabaseRepository.keepUpContact(event.contact);
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
  }

  FutureOr<void> _onGotoGroupDetails(_OnGotoGroupDetails event, Emitter<KeepUpSoonState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.toPage(
        AppPages.groupDetail,
        argument: event.group,
      ),
    ));
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
}
