import 'package:get/get.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';

class AddContactsStateMapper implements BaseStateMapper<AddContactsState, VoidResult> {
  @override
  AddContactsState mapResultToState(AddContactsState state, VoidResult result) {
    if (result.isError) {
      final PageError pageError = result.asError!.error;
      return state.copyWith(
        isLoading: false,
        pageCommand: pageError.pageErrorType == NetworkError.token
            ? PageCommandDialog.showExpirationSession()
            : PageCommandMessage.showError(pageError.message),
      );
    } else {
      return state.copyWith(
        isLoading: false,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.contactCreatedSuccessfully.tr),
      );
    }
  }
}