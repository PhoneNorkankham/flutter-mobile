import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';

class AppInputTextField extends StatelessWidget {
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final String? hintText;
  final String? errorText;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final bool obscureText;
  final String? initialValue;
  final bool? enabled;
  final bool? readOnly;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final int? maxLength;
  final bool autoFocus;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextAlign textAlign;
  final Widget? prefix;
  final BoxConstraints? prefixIconConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixIconConstraints;
  final EdgeInsets? contentPadding;
  final FormFieldValidator<String>? validator;
  final InputDecoration? decoration;
  final Color? fillColor;
  final String obscuringCharacter;
  final Color? cursorColor;

  const AppInputTextField({
    super.key,
    this.onTap,
    this.controller,
    this.hintText,
    this.errorText,
    this.textInputAction,
    this.autofillHints,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.initialValue,
    this.enabled,
    this.readOnly,
    this.textInputType,
    this.inputFormatters,
    this.maxLines = 1,
    this.maxLength,
    this.autoFocus = false,
    this.focusNode,
    this.textCapitalization,
    this.textStyle,
    this.hintStyle,
    this.textAlign = TextAlign.start,
    this.prefix,
    this.prefixIconConstraints,
    this.suffix,
    this.suffixIconConstraints,
    this.contentPadding,
    this.validator,
    this.decoration,
    this.fillColor,
    this.cursorColor,
  });

  InputDecoration _inputDecoration(BuildContext context) => InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText ?? "",
        hintStyle: hintStyle,
        hintMaxLines: maxLines,
        errorText: errorText?.let((self) => self.isNotEmpty ? '* $self' : ''),
        errorStyle: Theme.of(context).inputDecorationTheme.errorStyle,
        errorMaxLines: 2,
        counterText: '',
        fillColor: fillColor,
        filled: true,
        isDense: true,
        prefixIcon: prefix,
        suffixIcon: suffix,
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      autofocus: autoFocus,
      focusNode: focusNode,
      readOnly: readOnly ?? false,
      decoration: decoration ?? _inputDecoration(context),
      style: textStyle ?? context.appTextTheme.medium14,
      maxLines: maxLines,
      maxLength: maxLength,
      textInputAction: textInputAction ?? TextInputAction.next,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      autofillHints: autofillHints,
      onChanged: onChanged,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      initialValue: initialValue,
      onFieldSubmitted: onFieldSubmitted,
      enabled: enabled,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      textAlign: textAlign,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: cursorColor,
    );
  }
}
