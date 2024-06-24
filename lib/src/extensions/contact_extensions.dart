import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:contacts_service/contacts_service.dart' as cs;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:path_provider/path_provider.dart';

extension ContactsExtensions on List<Contact> {
  List<Contact> toKeepUpToday() {
    if (isEmpty) return this;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    return where((element) {
      final DateTime expiration = element.expiration ?? DateTime.now();
      final DateTime expirationDateOnly = DateUtils.dateOnly(expiration);
      return expirationDateOnly.isToday || expirationDateOnly.isBefore(now);
    }).toList();
  }

  List<Contact> toKeepUpInAWeek() {
    if (isEmpty) return this;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final DateTime nextWeek = now.add(const Duration(days: 7));
    return where((element) {
      final DateTime expiration = element.expiration ?? DateTime.now();
      final DateTime expirationDateOnly = DateUtils.dateOnly(expiration);
      return expirationDateOnly.isToday || expirationDateOnly.isBefore(nextWeek);
    }).toList();
  }

  List<Contact> toKeepUpInAMonth() {
    if (isEmpty) return this;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final DateTime nextMonth = now.copyWith(month: now.month + 1);
    return where((element) {
      final DateTime expiration = element.expiration ?? DateTime.now();
      final DateTime expirationDateOnly = DateUtils.dateOnly(expiration);
      return expirationDateOnly.isToday || expirationDateOnly.isBefore(nextMonth);
    }).toList();
  }
}

extension CSContactsExtensions on List<cs.Contact> {
  Future<List<ContactRequest>> toContactRequests() async {
    final List<cs.Contact> contacts = await cs.ContactsService.getContacts();
    final List<ContactRequest> contactRequests = [];
    for (final contact in contacts) {
      final ContactRequest? contactRequest = await contact.toContactRequest();
      if (contactRequest != null) {
        contactRequests.add(contactRequest);
      }
    }
    return contactRequests;
  }
}

extension CSContactExtensions on cs.Contact {
  Future<ContactRequest?> toContactRequest() async {
    final String displayName = this.displayName ?? '';
    final String familyName = this.familyName ?? '';
    final String middleName = this.middleName ?? '';
    final String givenName = this.givenName ?? '';
    final String name;
    if (displayName.isNotEmpty) {
      name = displayName.trim();
    } else {
      name = '$familyName $middleName $givenName'.trim();
    }
    if (name.isNotEmpty) {
      final String email =
          emails?.firstWhereOrNull((email) => email.value?.isNotEmpty ?? false)?.value ?? '';
      final String phoneNo =
          phones?.firstWhereOrNull((phone) => phone.value?.isNotEmpty ?? false)?.value ?? '';
      ContactRequest contactRequest = ContactRequest(
        name: name,
        email: email,
        phoneNo: phoneNo,
      );

      final Uint8List? avatar = this.avatar;
      if (avatar != null && avatar.isNotEmpty) {
        try {
          final String fileName = jsonEncode(phoneNo) + Random().nextInt(1000).toString();
          final Directory tempDir = await getTemporaryDirectory();
          final File file = await File('${tempDir.path}/$fileName.png').create();
          await file.writeAsBytes(avatar);
          contactRequest = contactRequest.copyWith(file: file);
        } catch (_) {}
      }
      return contactRequest;
    }
    return null;
  }
}
