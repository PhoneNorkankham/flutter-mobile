import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class UpdateGroupUseCase extends InputUseCase<DataResult<Group>, GroupRequest> {
  final SupabaseRepository _supabaseRepository;

  UpdateGroupUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Group>> run(GroupRequest input) {
    return _supabaseRepository.updateGroup(input).then((resource) async {
      final Group? group = resource.data;
      if (resource.isSuccess && group != null) {
        // Get contact ids of new group
        final List<String> contactIds = group.contacts.map((e) => e.toString()).toList();
        if (contactIds.isNotEmpty) {
          // Get all contacts match group id
          final List<Contact> oldContacts =
              await _supabaseRepository.getAllContactByGroupId(group.id);
          // Get all contacts match group id
          final List<Contact> addContacts =
              await _supabaseRepository.getAllContactByIds(contactIds);
          // Merge two contacts list
          final List<Contact> contacts = [
            ...oldContacts,
            ...addContacts.where((contact) => !oldContacts.contains(contact))
          ];
          if (contacts.isNotEmpty) {
            // Get requests of new contacts
            final List<ContactRequest> requests = contacts.map((e) {
              final Contact contact = e.copyWith(
                // Removed or replace this group
                groupId: contactIds.contains(e.id) ? group.id : '',
                expiration: Value(group.frequencyInterval.toExpirationDate()),
              );
              return ContactRequest.fromJson(contact.toJson());
            }).toList();
            // Update all contacts
            await _supabaseRepository.updateContacts(requests);
          }
        }
        return Result.value(group);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
