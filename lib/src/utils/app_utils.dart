import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keepup/src/core/managers/permission_manager.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/utils/app_country_codes.dart';
import 'package:path_provider/path_provider.dart';

class AppUtils {
  /// Check is debug mode
  static bool isDebugMode() {
    if (kReleaseMode) {
      return false;
    } else {
      return true;
    }
  }

  static Future<void> onCloseSnackBar() async {
    if (Get.isSnackbarOpen) {
      // Wait for snack bar closing then doing pop the dialog
      await SnackbarController.closeCurrentSnackbar();
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  static Future<File?> pickImage(ImageSource source) async {
    bool isGranted = await Get.find<PermissionManager>().checkPermission(
      source == ImageSource.camera ? PermissionType.Camera : PermissionType.Photos,
      showDialog: true,
    );
    if (isGranted) {
      final Future<XFile?> request = ImagePicker().pickImage(
        source: source,
        imageQuality: 60,
        maxWidth: 1024,
        maxHeight: 1024,
      );
      return request.then((pickedFile) {
        if (pickedFile == null) return null;
        return File(pickedFile.path);
      }).catchError((ex) {
        debugPrint('error: $ex');
        return null;
      });
    } else {
      return null;
    }
  }

  static List<ContactRequest> combineContacts(
    List<ContactRequest> contacts,
    List<ContactRequest> deviceContacts,
  ) {
    final List<ContactRequest> newContacts = [...contacts];
    for (ContactRequest contact in deviceContacts) {
      // Combine supabase contacts to match device contacts
      final ContactRequest? oldContact = contacts
          .where((e) => e.contactId == contact.contactId || e.phoneNo == contact.phoneNo)
          .firstOrNull;
      if (oldContact == null) {
        // Add contact from device to new contacts
        newContacts.add(contact);
      }
    }
    newContacts.sort((a, b) => a.name.compareTo(b.name));
    return newContacts;
  }

  static Future<File?> getFile(Uint8List uint8list) async {
    if (uint8list.isEmpty) return null;
    try {
      final fileName = '${DateTime.now().millisecondsSinceEpoch}_${Random().nextInt(1000)}.png';
      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/$fileName').create();
      await file.writeAsBytes(uint8list);
      return file;
    } catch (_) {
      return null;
    }
  }

  static String getPhoneNumber(String phone) {
    if (phone.startsWith('+')) {
      return phone;
    } else if (phone.startsWith('0')) {
      return phone.replaceFirst('0', AppCountryCodes.country?.dialCode ?? '+1');
    } else {
      return '${AppCountryCodes.country?.dialCode ?? '+1'}$phone';
    }
  }

  static int compareAToZToOther(String a, String b) {
    // Get the first character of each element
    String firstA = a[0].toUpperCase();
    String firstB = b[0].toUpperCase();

    // Check if first character is letter
    bool isLetterA = RegExp(r'^[A-Z]$').hasMatch(firstA);
    bool isLetterB = RegExp(r'^[A-Z]$').hasMatch(firstB);

    // If both are letters, arrange in alphabetical order
    if (isLetterA && isLetterB) {
      return a.compareTo(b);
    }
    // If A is a letter and B is not a letter, A comes first.
    if (isLetterA && !isLetterB) {
      return -1;
    }
    // If B is a letter and A is not a letter, B comes first.
    if (!isLetterA && isLetterB) {
      return 1;
    }
    // If both are not letters, sort in normal order
    return a.compareTo(b);
  }
}
