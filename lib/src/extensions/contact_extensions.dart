import 'dart:io';
import 'dart:typed_data';

import 'package:contacts_service/contacts_service.dart' as cs;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/extensions/date_time_extensions.dart';
import 'package:keepup/src/utils/app_utils.dart';

extension ContactsExtensions on List<Contact> {
  List<Contact> toKeepUpToday() {
    if (isEmpty) return this;
    final List<Contact> contacts = where((contact) {
      final DateTime date = contact.expiration ?? DateTime.now();
      return date.isDateBeforeDayAfterTomorrow;
    }).toList();
    contacts.sort((a, b) => a.expirationDays.compareTo(b.expirationDays));
    return contacts;
  }

  // Get upcoming expiring contacts (starting the day after tomorrow)
  List<Contact> toKeepUpSoon() {
    final List<Contact> contacts = where((contact) {
      final DateTime date = contact.expiration ?? DateTime.now();
      return !date.isDateBeforeDayAfterTomorrow;
    }).toList();
    contacts.sort((a, b) => a.expirationDays.compareTo(b.expirationDays));
    return contacts;
  }

  // Get contacts that are expiring this week (starting the day after tomorrow)
  List<Contact> toKeepUpInAWeek() {
    final List<Contact> contacts = where((contact) {
      final DateTime date = contact.expiration ?? DateTime.now();
      return date.isDateInCurrentWeekFromDayAfterTomorrow;
    }).toList();
    contacts.sort((a, b) => a.expirationDays.compareTo(b.expirationDays));
    return contacts;
  }

  // Get contacts that are expiring this month (starting next week)
  List<Contact> toKeepUpInAMonth() {
    final List<Contact> contacts = where((contact) {
      final DateTime date = contact.expiration ?? DateTime.now();
      return date.isDateInNextWeekAndThisMonth;
    }).toList();
    contacts.sort((a, b) => a.expirationDays.compareTo(b.expirationDays));
    return contacts;
  }
}

extension ContactExtension on Contact {
  double getMoonPercent(int totalDays) {
    if (totalDays == 0) return 0;
    return (totalDays - expirationDays) / totalDays;
  }

  int get expirationDays {
    final DateTime? expiration = this.expiration;
    if (expiration == null) return 0;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final int diff = DateUtils.dateOnly(expiration).difference(now).inDays;
    return diff;
  }
}

extension CSContactsExtensions on List<cs.Contact> {
  Future<List<ContactRequest>> toContactRequests() async {
    final List<ContactRequest> contactRequests = [];
    for (final contact in this) {
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
    String name;
    if (displayName.isNotEmpty) {
      name = displayName.trim();
    } else {
      name = '$familyName $middleName $givenName'.trim();
    }
    name = name.replaceAll('(', '').replaceAll(')', '').replaceAll('\'', '');
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

      final Uint8List? unit8List = avatar;
      if (unit8List != null && unit8List.isNotEmpty) {
        final File? file = await AppUtils.getFile(unit8List);
        return contactRequest.copyWith(file: file);
      } else {
        return contactRequest;
      }
    }
    return null;
  }
}
