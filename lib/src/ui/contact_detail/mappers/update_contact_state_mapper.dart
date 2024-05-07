import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/model/choice_every_day_data.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/enums/contact_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';
import 'package:keepup/src/utils/app_constants.dart';

class UpdateContactStateMapper implements BaseStateMapper<ContactDetailState, DataResult<Contact>> {
  @override
  ContactDetailState mapResultToState(ContactDetailState state, DataResult<Contact> result) {
    if (result.isError) {
      final PageError pageError = result.asError!.error;
      return state.copyWith(
        isLoading: false,
        pageCommand: pageError.pageErrorType == NetworkError.token
            ? PageCommandDialog.showExpirationSession()
            : PageCommandMessage.showError(pageError.message),
      );
    } else {
      final Contact contact = result.valueOrCrash;
      final ContactRequest request = ContactRequest.fromJson(contact.toJson());

      final DateTime now = DateUtils.dateOnly(DateTime.now());
      final DateTime expiration = DateUtils.dateOnly(request.expiration ?? now);
      final days = expiration.difference(now).inDays;

      final List<ChoiceEveryDayData> everyDays = [];
      if (request.frequency.isNotEmpty) {
        everyDays.addAll(AppConstants.defaultEveryDays.map((e) {
          final index = AppConstants.defaultEveryDays.indexOf(e);
          return e.copyWith(isActive: request.frequency.elementAt(index));
        }));
      }
      return state.copyWith(
        isLoading: false,
        avatar: null,
        request: request,
        interval: days.toDouble(),
        everyDays: everyDays,
        contactId: contact.id,
        contactType: ContactType.contactDetail,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.contactUpdatedSuccessfully.tr),
      );
    }
  }
}
