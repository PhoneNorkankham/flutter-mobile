import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'keep_up_today_bloc.freezed.dart';
part 'keep_up_today_event.dart';
part 'keep_up_today_state.dart';

class KeepUpTodayBloc extends Bloc<KeepUpTodayEvent, KeepUpTodayState> {
  final SupabaseRepository _supabaseRepository;

  KeepUpTodayBloc(this._supabaseRepository) : super(const KeepUpTodayState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnGotoGroupDetails>(_onGotoGroupDetails);
    on<_OnKeepUpGroup>(_onKeepUpGroup);
  }

  FutureOr<void> _initial(_Initial event, Emitter<KeepUpTodayState> emit) async {
    _supabaseRepository.getTodayContacts();
    return emit.forEach(
      _supabaseRepository.watchTodayContacts(),
      onData: (contacts) => state.copyWith(
        contacts: contacts,
      ),
    );
  }

  Future<bool> isContactCompleted(Contact contact) async {
    final resource = await _supabaseRepository.getLastInteractionByContactId(contact.id);
    final Interaction? interaction = resource.data;
    if (interaction == null) return false;
    final DateTime? dateCompleted = interaction.dateCompleted;
    if (dateCompleted == null) return false;
    final Group? group = await _supabaseRepository
        .getDBGroups()
        .then((groups) => groups.where((group) => group.id == contact.groupId).firstOrNull);
    if (group == null) return false;
    final DateTime? expiration = contact.expiration;
    if (expiration == null) return false;
    final DateTime startDateTime = group.frequencyInterval.toDateCompleted(expiration);
    return startDateTime.isBefore(dateCompleted);
  }

  Future<List<Group>> getGroupsByContacts(List<Contact> contacts) =>
      _supabaseRepository.getGroupsByContacts(contacts);

  Future<bool> isGroupCompleted(Group group) async {
    final List<String> contactIds = group.contacts.map((e) => e.toString()).toList();
    final List<Contact> contacts =
        state.contacts.where((contact) => contactIds.contains(contact.id)).toList();
    for (Contact contact in contacts) {
      final isContactCompleted = await this.isContactCompleted(contact);
      if (!isContactCompleted) return false;
    }
    return true;
  }

  FutureOr<void> _onGotoGroupDetails(_OnGotoGroupDetails event, Emitter<KeepUpTodayState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.toPage(
        AppPages.groupDetail,
        argument: event.group,
      ),
    ));
  }

  FutureOr<void> _onKeepUpGroup(_OnKeepUpGroup event, Emitter<KeepUpTodayState> emit) async {
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
}
