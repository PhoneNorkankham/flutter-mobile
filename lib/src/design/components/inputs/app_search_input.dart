import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/inputs/app_input_text_field.dart';
import 'package:keepup/src/locale/locale_key.dart';

class AppSearchInput extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final EdgeInsets? margin;
  final String? hintText;

  const AppSearchInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.onSubmitted,
    this.margin,
    this.hintText,
  });

  @override
  State<AppSearchInput> createState() => _AppSearchInputState();
}

class _AppSearchInputState extends State<AppSearchInput> {
  bool _showRemoveButton = false;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        _showRemoveButton = widget.controller.text.isNotEmpty;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.symmetric(horizontal: 20.0),
      height: 36,
      child: Stack(
        children: [
          AppInputTextField(
            controller: widget.controller,
            prefix: Icon(
              Icons.search,
              color: Theme.of(context).inputDecorationTheme.hintStyle?.color,
              size: 20,
            ),
            maxLines: 1,
            hintText: widget.hintText ?? LocaleKey.search.tr,
            textInputAction: TextInputAction.search,
            textInputType: TextInputType.name,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onSubmitted,
          ),
          if (_showRemoveButton)
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: IconButton(
                onPressed: () {
                  widget.controller.clear();
                  widget.onChanged?.call('');
                  setState(() {
                    _showRemoveButton = false;
                  });
                },
                icon: const Icon(Icons.close, size: 20),
                color: Theme.of(context).inputDecorationTheme.hintStyle?.color,
              ),
            ),
        ],
      ),
    );
  }
}
