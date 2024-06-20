import 'dart:io';

import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class AddContactsUseCase extends InputUseCase<ListResult<Contact>, List<ContactRequest>> {
  final SupabaseRepository _supabaseRepository;

  AddContactsUseCase(this._supabaseRepository);

  @override
  Future<ListResult<Contact>> run(List<ContactRequest> input) async {
    final List<Contact> contacts = [];

    // #1. Update old contacts
    final List<ContactRequest> oldContacts = input.where((e) => e.contactId.isNotEmpty).toList();
    final resource = await _supabaseRepository.updateContacts(oldContacts);
    if (resource.isSuccess) {
      contacts.addAll(resource.data ?? []);
    } else {
      return Result.error(resource.toPageError());
    }

    // #2. Create new contacts
    final List<ContactRequest> newContacts = input.where((e) => e.contactId.isEmpty).toList();
    for (ContactRequest contactRequest in newContacts) {
      final File? file = contactRequest.file;
      if (file != null) {
        // #2.1 Upload avatar of contact
        final resource = await _supabaseRepository.uploadAvatar(file);
        final String avatar = resource.data ?? '';
        if (resource.isSuccess && avatar.isNotEmpty) {
          contactRequest = contactRequest.copyWith(avatar: avatar);
        }
      }

      // #2.2 Create new contact
      final resource = await _supabaseRepository.createContact(contactRequest);
      final Contact? contact = resource.data;
      if (contact != null) contacts.add(contact);
      if (resource.isError) {
        return Result.error(resource.toPageError());
      }
    }

    // #3. Sort contacts by name
    contacts.sort((a, b) => a.name.compareTo(b.name));

    return Result.value(contacts);
  }
}
