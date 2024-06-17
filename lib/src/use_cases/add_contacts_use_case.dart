import 'dart:io';

import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/core/resource.dart';
import 'package:keepup/src/ui/base/interactor/base_use_case.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class AddContactsUseCase extends InputUseCase<ListResult<Contact>, List<ContactRequest>> {
  final SupabaseRepository _supabaseRepository;

  AddContactsUseCase(this._supabaseRepository);

  @override
  Future<ListResult<Contact>> run(List<ContactRequest> input) async {
    List<Contact> contacts = [];
    Resource resource;
    final List<ContactRequest> oldContactRequests =
        input.where((element) => element.contactId.isNotEmpty).toList();
    for (ContactRequest contactRequest in oldContactRequests) {
      resource = await _supabaseRepository.updateContact(contactRequest);
      final Contact? contact = resource.data;
      if (contact != null) contacts.add(contact);
      if (resource.isSuccess) {
        resource = await _supabaseRepository.updateContactInGroup(
          contactId: contactRequest.contactId,
          groupId: contactRequest.groupId,
        );
        if (resource.isError) {
          return Result.error(resource.toPageError());
        }
      } else {
        return Result.error(resource.toPageError());
      }
    }

    final List<ContactRequest> newContactRequests =
        input.where((element) => element.contactId.isEmpty && element.groupId.isNotEmpty).toList();
    for (ContactRequest contactRequest in newContactRequests) {
      final File? file = contactRequest.file;
      if (file != null) {
        // Upload avatar
        final resource = await _supabaseRepository.uploadAvatar(file);
        final String avatar = resource.data ?? '';
        if (resource.isSuccess && avatar.isNotEmpty) {
          contactRequest = contactRequest.copyWith(avatar: avatar);
        }
      }

      // Insert contact
      resource = await _supabaseRepository.insertContact(contactRequest);
      final Contact? contact = resource.data;
      if (contact != null) contacts.add(contact);
      if (resource.isSuccess) {
        final Contact? contact = resource.data;
        if (contact != null) {
          resource = await _supabaseRepository.updateContactInGroup(
            contactId: contact.id,
            groupId: contactRequest.groupId,
          );
          if (resource.isError) {
            return Result.error(resource.toPageError());
          }
        }
      } else {
        return Result.error(resource.toPageError());
      }
    }

    return Result.value(contacts);
  }
}
