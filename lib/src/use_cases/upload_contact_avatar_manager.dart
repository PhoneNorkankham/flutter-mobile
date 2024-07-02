import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:keepup/src/core/repository/rapidapi_repository.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:keepup/src/utils/app_utils.dart';

class UploadContactAvatarRequest {
  final String contactId;
  final String phone;
  final File? file;

  UploadContactAvatarRequest({
    required this.contactId,
    this.phone = '',
    this.file,
  });
}

class UploadContactAvatarManager {
  final List<UploadContactAvatarRequest> _newRequests = [];
  bool _isRunning = false;

  void runRequests(List<UploadContactAvatarRequest> requests) {
    if (requests.isEmpty) return;
    _newRequests.addAll(requests);
    _runEntityRequest(_newRequests.first);
  }

  Future<void> _runEntityRequest(UploadContactAvatarRequest request) async {
    _isRunning = true;
    File? file = request.file;
    if (AppConstants.enabledWhatsappProfilePicApi && file == null && request.phone.isNotEmpty) {
      // Add dial code to phone number
      String phone = AppUtils.getPhoneNumber(request.phone);
      if (phone.isNotEmpty) {
        // Only keep numeric characters 0 - 9
        phone = phone.replaceAll(RegExp('[^0-9]'), '');
        // Delay 1s rate limit for RAPIDAPI
        await Future.delayed(const Duration(seconds: 1));
        // Get avatar from phone number
        final RapidapiRepository rapidapiRepository = Get.find();
        final resource = await rapidapiRepository.getPicBase64(phone);
        final String base64 = resource.data ?? '';
        if (resource.isSuccess && base64.isNotEmpty) {
          try {
            // Convert to file
            Uint8List uint8list = base64Decode(base64);
            file = await AppUtils.getFile(uint8list);
          } catch (_) {}
        }
      }
    }

    if (file != null) {
      // Upload avatar to Supabase
      final SupabaseRepository supabaseRepository = Get.find();
      final resource = await supabaseRepository.uploadAvatar(file);
      final String avatar = resource.data ?? '';
      if (resource.isSuccess && avatar.isNotEmpty) {
        // Update avatar of contact
        await supabaseRepository.updateContactAvatar(
          contactId: request.contactId,
          avatar: avatar,
        );
      }
    }

    if (_isRunning) {
      _isRunning = false;
      // Remove request when update is successful
      _newRequests.remove(request);
      if (_newRequests.isNotEmpty) {
        // Run the next request
        return _runEntityRequest(_newRequests.first);
      }
    }
  }

  void clearAll() {
    _isRunning = false;
    _newRequests.clear();
  }
}
