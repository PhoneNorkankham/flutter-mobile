import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class CreateContactUseCase extends InputUseCase<DataResult<Contact>, ContactRequest> {
  final SupabaseRepository _supabaseRepository;

  CreateContactUseCase(this._supabaseRepository);

  @override
  Future<DataResult<Contact>> run(ContactRequest input) {
    return _supabaseRepository.insertContact(input).then((resource) {
      final Contact? contact = resource.data;
      if (resource.isSuccess && contact != null) {
        // Add contact to group
        final request = _supabaseRepository.addContactToGroup(
          contactId: contact.id,
          groupId: contact.groupId,
        );
        return request.then((resource) {
          if (resource.isSuccess) {
            return Result.value(contact);
          } else {
            return Result.error(resource.toPageError());
          }
        });
      } else {
        return Result.error(resource.toPageError());
      }
    });
  }
}
