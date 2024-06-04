import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';

enum NewContactOptions { phoneContacts, manually }

class NewContactOptionsBottomSheet extends StatelessWidget {
  static Future<dynamic> show() {
    return Get.bottomSheet(const NewContactOptionsBottomSheet());
  }

  const NewContactOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text(LocaleKey.addContacts.tr),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () => Get.back(result: NewContactOptions.phoneContacts),
          child: Text(LocaleKey.usePhoneContacts.tr),
        ),
        CupertinoActionSheetAction(
          onPressed: () => Get.back(result: NewContactOptions.manually),
          child: Text(LocaleKey.createManually.tr),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () => Get.back(),
        child: Text(LocaleKey.cancel.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
