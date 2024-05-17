import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'keep_up_today_bloc.freezed.dart';
part 'keep_up_today_event.dart';
part 'keep_up_today_state.dart';

class KeepUpTodayBloc extends Bloc<KeepUpTodayEvent, KeepUpTodayState> {
  final SupabaseRepository _supabaseRepository;

  KeepUpTodayBloc(this._supabaseRepository) : super(const KeepUpTodayState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
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
}
