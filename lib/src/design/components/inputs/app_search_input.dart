import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/locale/locale_key.dart';

class AppSearchInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final EdgeInsets? margin;
  final String? hintText;
  final TextEditingController? controller;

  const AppSearchInput({
    super.key,
    this.onChanged,
    this.margin,
    this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 20.0),
      height: 36,
      child: AppInputTextField(
        controller: controller,
        prefix: Icon(
          Icons.search,
          color: Theme.of(context).inputDecorationTheme.hintStyle?.color,
          size: 20,
        ),
        maxLines: 1,
        hintText: hintText ?? LocaleKey.search.tr,
        textInputAction: TextInputAction.search,
        onChanged: onChanged,
      ),
    );
  }
}
