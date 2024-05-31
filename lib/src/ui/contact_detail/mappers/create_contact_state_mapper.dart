import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/contact_detail/interactor/contact_detail_bloc.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';
import 'package:keepup/src/utils/app_pages.dart';

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
      return state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.pop(
          result: PopResult(
            status: true,
            resultFromPage: AppPages.contactDetail,
            data: LocaleKey.contactCreatedSuccessfully.tr,
          ),
        ),
      );
    }
  }
}
