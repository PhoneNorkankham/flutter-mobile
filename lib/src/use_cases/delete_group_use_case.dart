import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class DeleteGroupUseCase extends InputUseCase<VoidResult, Group> {
  final SupabaseRepository _supabaseRepository;

  DeleteGroupUseCase(this._supabaseRepository);

  @override
  Future<VoidResult> run(Group input) {
    return _supabaseRepository.deleteGroup(input.id).then((resource) async {
      if (resource.isSuccess) {
        // Get contactIds
        final List<String> contactIds = input.contacts.map((e) => e.toString()).toList();
        // Get all contacts by contactIds
        final List<Contact> contacts = await _supabaseRepository.getAllContactByIds(contactIds);
        if (contacts.isNotEmpty) {
          // Get requests of new contacts
          final List<ContactRequest> requests = contacts.map((e) {
            // Removed this group
            final Contact contact = e.copyWith(groupId: '');
            return ContactRequest.fromJson(contact.toJson());
          }).toList();
          // Update all contacts
          await _supabaseRepository.updateContacts(requests);
        }
        return Result.value(null);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
