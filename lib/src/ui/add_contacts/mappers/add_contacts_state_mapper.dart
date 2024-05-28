import 'package:keepup/src/ui/add_contacts/interactor/add_contacts_bloc.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/utils/app_pages.dart';

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
        pageCommand: PageCommandNavigation.pop(
          result: PopResult(
            status: true,
            resultFromPage: AppPages.addContacts,
          ),
        ),
      );
    }
  }
}
