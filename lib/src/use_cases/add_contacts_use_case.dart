import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/use_cases/upload_contact_avatar_manager.dart';

class AddContactsUseCase extends InputUseCase<ListResult<Contact>, List<ContactRequest>> {
  final SupabaseRepository _supabaseRepository;
  final UploadContactAvatarManager _uploadContactAvatarManager;

  AddContactsUseCase(this._supabaseRepository, this._uploadContactAvatarManager);

  @override
  Future<ListResult<Contact>> run(List<ContactRequest> input) async {
    final List<Contact> results = [];

    // #1. Update old contacts
    final List<ContactRequest> oldContacts = input.where((e) => e.contactId.isNotEmpty).toList();
    final resource = await _supabaseRepository.updateContacts(oldContacts);
    if (resource.isSuccess) {
      results.addAll(resource.data ?? []);
    } else {
      return Result.error(resource.toPageError());
    }

    // #2. Create new contacts
    final List<ContactRequest> newContacts = input.where((e) => e.contactId.isEmpty).toList();
    final List<UploadContactAvatarRequest> requests = [];
    for (ContactRequest contactRequest in newContacts) {
      final resource = await _supabaseRepository.createContact(contactRequest);
      final Contact? contact = resource.data;
      if (contact != null) {
        // #2.1 Add contact to results
        results.add(contact);

        // #2.2 Add request to upload contact avatar
        final request = UploadContactAvatarRequest(
          contactId: contact.id,
          phone: contact.phoneNo,
          file: contactRequest.file,
        );
        requests.add(request);
      }
    }

    // #3. Run requests to upload contact avatar in background
    if (requests.isNotEmpty) {
      _uploadContactAvatarManager.runRequests(requests);
    }

    // #4. Sort contacts by name
    results.sort((a, b) => a.name.compareTo(b.name));

    return Result.value(results);
  }
}
