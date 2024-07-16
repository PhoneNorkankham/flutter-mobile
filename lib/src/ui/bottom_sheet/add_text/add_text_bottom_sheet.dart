import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/ui/base/base_page.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/components/add_text_app_bar.dart';
import 'package:keepup/src/ui/bottom_sheet/add_text/interactor/add_text_type.dart';

class AddTextBottomSheet extends StatefulWidget {
  static Future<String> show({required AddTextType type, String value = ''}) => Get.bottomSheet(
        isScrollControlled: false,
        ignoreSafeArea: false,
        AddTextBottomSheet(type: type, value: value),
      ).then((value) => value is String ? value : '');

  final AddTextType type;
  final String value;

  const AddTextBottomSheet({super.key, required this.type, required this.value});

  @override
  State<AddTextBottomSheet> createState() => _AddTextBottomSheetState();
}

class _AddTextBottomSheetState extends State<AddTextBottomSheet> {
  final _textController = TextEditingController();
  final _textFocusNode = FocusNode();

  @override
  void initState() {
    _textController.text = widget.value;

    Future.delayed(
      const Duration(milliseconds: 300),
      () => FocusScope.of(context).requestFocus(_textFocusNode),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String value = _textController.text;
    return SafeArea(
      maintainBottomViewPadding: true,
      child: BasePage(
        unFocusWhenTouchOutsideInput: true,
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
          ),
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              AddTextAppBar(
                title: widget.type.title,
                onSavePressed: value.isNotEmpty ? () => Get.back(result: value) : null,
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AppInputTextField(
                  focusNode: _textFocusNode,
                  controller: _textController,
                  maxLines: 5,
                  hintText: widget.type.hint,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) => setState(() {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
