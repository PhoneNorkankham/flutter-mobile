import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/design/components/dialogs/dialog_type.dart';
import 'package:keepup/src/enums/sheet_type.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

part 'page_command.freezed.dart';

@freezed
abstract class PageCommand with _$PageCommand {
  const PageCommand._();

  factory PageCommand() = _PageCommand;
}

@freezed
class PageCommandNavigation extends PageCommand with _$PageCommandNavigation {
  const PageCommandNavigation._() : super._();

  factory PageCommandNavigation.toPage(String page, {dynamic argument}) = _ToPage;

  factory PageCommandNavigation.replacePage(String page, {dynamic argument}) = _ReplacePage;

  factory PageCommandNavigation.pushAndRemoveUntilPage(
    String page,
    RoutePredicate predicate, {
    dynamic argument,
  }) = _PushAndRemoveUntilPage;

  factory PageCommandNavigation.pop({PopResult? result, @Default(false) bool isDialog}) = _Pop;

  factory PageCommandNavigation.popUntil(String page, {PopResult? popResult}) = _PopUntil;
}

@freezed
class PageCommandMessage extends PageCommand with _$PageCommandMessage {
  const PageCommandMessage._() : super._();

  factory PageCommandMessage.showError(String msg) = _ShowErrorMessage;

  factory PageCommandMessage.showSuccess(String msg) = _ShowSuccessMessage;
}

@freezed
class PageCommandDialog extends PageCommand with _$PageCommandDialog {
  const PageCommandDialog._() : super._();

  factory PageCommandDialog(DialogType dialogType, {dynamic argument}) = _PageCommandDialog;

  factory PageCommandDialog.showError(String msg) = _ShowErrorDialog;

  factory PageCommandDialog.showSuccess(String msg) = _ShowSuccessDialog;

  factory PageCommandDialog.showExpirationSession() = _ShowExpirationSessionDialog;
}

@freezed
class PageCommandShowBottomSheet extends PageCommand with _$PageCommandShowBottomSheet {
  const PageCommandShowBottomSheet._() : super._();

  factory PageCommandShowBottomSheet({required SheetType sheetType, dynamic argument}) =
      _PageCommandShowBottomSheet;
}
