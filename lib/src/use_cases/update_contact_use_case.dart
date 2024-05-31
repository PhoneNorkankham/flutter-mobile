import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class UpdateContactUseCase extends InputUseCase<DataResult<Contact>, ContactRequest> {
  final SupabaseRepository _supabaseRepository;

  UpdateContactUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Contact>> run(ContactRequest input) {
    return _supabaseRepository.updateContact(input).then((resource) async {
      final Contact? contact = resource.data;
      if (resource.isSuccess && contact != null) {
        // Remove contact in joined groups
        final resource = await _supabaseRepository.deleteContactInJoinedGroups(contact.id);
        if (resource.isError) {
          return Result.error(resource.toPageError());
        }
        if (contact.groupId.isNotEmpty) {
          // Add contact to group
          final resource = await _supabaseRepository.addContactToGroup(
            contactId: contact.id,
            groupId: contact.groupId,
          );
          if (resource.isError) {
            return Result.error(resource.toPageError());
          }
        }
        return Result.value(contact);
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
