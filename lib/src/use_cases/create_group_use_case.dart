import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CreateGroupUseCase extends InputUseCase<DataResult<Group>, GroupRequest> {
  final SupabaseRepository _supabaseRepository;

  CreateGroupUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Group>> run(GroupRequest input) {
    // Create new group
    return _supabaseRepository.insertGroup(input).then((resource) async {
      final Group? group = resource.data;
      if (resource.isSuccess && group != null) {
        // Get contact ids of new group
        final List<String> contactIds = group.contacts.map((e) => e.toString()).toList();
        if (contactIds.isNotEmpty) {
          // Get all contacts match group id
          final List<Contact> contacts = await _supabaseRepository.getAllContactByIds(contactIds);
          if (contacts.isNotEmpty) {
            // Get requests from contacts
            final List<ContactRequest> requests = contacts.map((e) {
              // Replace groupId form group
              final Contact contact = e.copyWith(groupId: group.id);
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
