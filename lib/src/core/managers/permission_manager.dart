import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/dialogs/app_dialogs.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:permission_handler/permission_handler.dart';

enum PermissionType {
  Contacts,
  Photos,
  Camera;

  String get title {
    switch (this) {
      case PermissionType.Contacts:
        return LocaleKey.contacts.tr;
      case PermissionType.Photos:
        return LocaleKey.photoLibrary.tr;
      case PermissionType.Camera:
        return LocaleKey.camera.tr;
    }
  }

  String get descriptions => LocaleKey.settingContent.trParams({'name': title});

  Future<Permission> get permission async {
    switch (this) {
      case PermissionType.Contacts:
        return Permission.contacts;
      case PermissionType.Photos:
        if (Platform.isAndroid) {
          final AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
          return androidInfo.version.sdkInt >= 33 ? Permission.photos : Permission.storage;
        } else {
          final iosInfo = await DeviceInfoPlugin().iosInfo;
          final String numberVersion = iosInfo.systemVersion.split('.').firstOrNull ?? '0';
          final double version = double.tryParse(numberVersion) ?? 0;
          return version >= 14 ? Permission.photos : Permission.storage;
        }
      case PermissionType.Camera:
        return Permission.camera;
    }
  }
}

class PermissionManager {
  Future<bool> checkPermission(PermissionType type, {bool showDialog = true}) async {
    bool isPermission = true;
    Permission permission = await type.permission;
    PermissionStatus status = await permission.status;
    if (status.isDenied) {
      status = await permission.request();
    }
    if (status.isPermanentlyDenied) {
      isPermission = false;
      if (showDialog) {
        Get.back();
        await showConfirmDialog(
          type.descriptions,
          confirmTitle: LocaleKey.goToSettings.tr,
          onConfirmed: () async {
            await openAppSettings();
            Get.back();
          },
          cancelTitle: LocaleKey.cancel.tr,
        );
      }
    }

    if (status.isDenied) isPermission = false;

    return isPermission;
  }
}
