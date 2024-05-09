import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class AddContactsUseCase extends InputUseCase<VoidResult, List<ContactRequest>> {
  final SupabaseRepository _supabaseRepository;

  AddContactsUseCase(this._supabaseRepository);

  @override
  Future<VoidResult> run(List<ContactRequest> input) async {
    Resource resource;
    final List<ContactRequest> oldContactRequests =
        input.where((element) => element.contactId.isNotEmpty).toList();
    for (ContactRequest contactRequest in oldContactRequests) {
      resource = await _supabaseRepository.updateContact(contactRequest);
      if (resource.isSuccess) {
        resource = await _supabaseRepository.updateContactInGroups(
          contactId: contactRequest.contactId,
          groupIds: contactRequest.groupIds,
        );
        if (resource.isError) {
          return Result.error(resource.toPageError());
        }
      } else {
        return Result.error(resource.toPageError());
      }
    }

    final List<ContactRequest> newContactRequests =
        input.where((element) => element.contactId.isEmpty && element.groupIds.isNotEmpty).toList();
    for (ContactRequest contactRequest in newContactRequests) {
      resource = await _supabaseRepository.insertContact(contactRequest);
      if (resource.isSuccess) {
        final Contact? contact = resource.data;
        if (contact != null) {
          resource = await _supabaseRepository.updateContactInGroups(
            contactId: contact.id,
            groupIds: contactRequest.groupIds,
          );
          if (resource.isError) {
            return Result.error(resource.toPageError());
          }
        }
      } else {
        return Result.error(resource.toPageError());
      }
    }

    return Result.value(null);
  }
}
