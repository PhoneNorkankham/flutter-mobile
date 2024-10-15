import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/contact_phone.dart';
import 'package:keepup/src/extensions/string_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';

class ChoosePhonePopup extends StatelessWidget {
  static Future<String> show(List<ContactPhone> phones) {
    return Get.bottomSheet(ChoosePhonePopup(phones: phones)).then(
      (value) => value is String ? value : '',
    );
  }

  final List<ContactPhone> phones;

  const ChoosePhonePopup({super.key, required this.phones});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoActionSheet(
        title: Text(
          LocaleKey.selectPhoneNumber.tr,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 14,
          ),
        ),
        actions: phones
            .map((phone) => CupertinoActionSheetAction(
                  onPressed: () => Get.back(result: phone.value),
                  child: Text(
                    '${phone.label.firstCharUpperCase}: ${phone.value}',
                    style: const TextStyle(color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  ),
                ))
            .toList(),
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
