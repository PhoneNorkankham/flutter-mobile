import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/locale/locale_key.dart';

class AppSearchInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const AppSearchInput({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppInputTextField(
        prefix: Icon(
          Icons.search,
          color: Theme.of(context).inputDecorationTheme.hintStyle?.color,
          size: 20,
        ),
        maxLines: 1,
        hintText: LocaleKey.search.tr,
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
