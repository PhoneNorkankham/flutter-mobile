import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/enums/contact_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';

class CreateContactStateMapper implements BaseStateMapper<ContactDetailState, DataResult<Contact>> {
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

      return state.copyWith(
        isLoading: false,
        avatar: null,
        request: request,
        contactId: contact.id,
        contactType: ContactType.contactDetail,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.contactCreatedSuccessfully.tr),
      );
    }
  }
}
