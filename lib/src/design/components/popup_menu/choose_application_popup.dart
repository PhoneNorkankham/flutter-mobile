import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_assets.dart';

enum ApplicationType {
  none,
  normal,
  whatsapp,
}

class ChooseApplicationPopup extends StatelessWidget {
  static Future<ApplicationType> show({bool isMessage = true}) {
    return Get.bottomSheet(ChooseApplicationPopup(isMessage: isMessage)).then(
      (value) => value is ApplicationType ? value : ApplicationType.none,
    );
  }

  final bool isMessage;

  const ChooseApplicationPopup({super.key, required this.isMessage});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoActionSheet(
        title: Text(
          LocaleKey.selectApplication.tr,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 14,
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () => Get.back(result: ApplicationType.normal),
            child: Row(
              children: [
                const SizedBox(width: 8),
                Icon(
                  isMessage ? Icons.message : Icons.call,
                  size: 24,
                  color: Colors.teal,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    LocaleKey.carrier.tr,
                    style: const TextStyle(color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 36),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () => Get.back(result: ApplicationType.whatsapp),
            child: Row(
              children: [
                const SizedBox(width: 8),
                SvgPicture.asset(
                  AppAssets.ic_whatsapp_svg,
                  width: 24,
                  height: 24,
                  colorFilter: const ColorFilter.mode(
                    Colors.green,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    LocaleKey.whatsapp.tr,
                    style: const TextStyle(color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 36),
              ],
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          isDefaultAction: true,
          child: Text(
            LocaleKey.cancel.tr,
            style: const TextStyle(color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
