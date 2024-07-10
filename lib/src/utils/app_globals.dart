import 'package:keepup/src/core/request/contact_request.dart';

class AppGlobals {
  static List<ContactRequest>? _deviceContacts;

  static List<ContactRequest> get deviceContacts => _deviceContacts ?? [];

  static void setDeviceContacts(List<ContactRequest> items) => _deviceContacts = items;
}
