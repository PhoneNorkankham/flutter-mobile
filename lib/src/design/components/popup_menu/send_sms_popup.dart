import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_assets.dart';
import 'package:keepup/src/utils/app_async_action.dart';

class SendSmsPopup extends StatelessWidget {
  static Future<void> show(String phoneNumber) =>
      Get.bottomSheet(SendSmsPopup(phoneNumber: phoneNumber));

  final String phoneNumber;

  const SendSmsPopup({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoActionSheet(
        title: Text(
          'Select Application',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 14,
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              AppAsyncAction.instance.sendSMS(phoneNumber: phoneNumber);
            },
            child: const Row(
              children: [
                SizedBox(width: 8),
                Icon(Icons.sms, size: 24, color: Colors.teal),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'SMS',
                    style: TextStyle(color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 36),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              AppAsyncAction.instance.sendWhatsappSMS(phoneNumber);
            },
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
                const Expanded(
                  child: Text(
                    'WhatsApp',
                    style: TextStyle(color: Colors.blueAccent),
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
