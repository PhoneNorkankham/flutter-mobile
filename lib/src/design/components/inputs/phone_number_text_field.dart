import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/model/contact_phone.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/design/components/popup_menu/phone_label_popup.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/utils/app_constants.dart';

class PhoneNumberTextField extends StatelessWidget {
  final ContactPhone contactPhone;
  final ValueChanged<ContactPhone> onChanged;
  final ValueChanged<ContactPhone> onRemoved;

  const PhoneNumberTextField({
    super.key,
    required this.contactPhone,
    required this.onChanged,
    required this.onRemoved,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onRemoved.call(contactPhone),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(4),
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PhoneLabelPopup(
                  labels: AppConstants.phoneLabels,
                  selectedLabel: contactPhone.label,
                  onChanged: (value) => onChanged.call(contactPhone.copyWith(label: value)),
                ),
                Container(color: Colors.grey, width: 1.0, height: 20.0),
                Expanded(
                  child: AppInputTextField(
                    onChanged: (value) => onChanged.call(contactPhone.copyWith(value: value)),
                    initialValue: contactPhone.value,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    textInputType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      isDense: true,
                      hintText: LocaleKey.phoneNo.tr,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
