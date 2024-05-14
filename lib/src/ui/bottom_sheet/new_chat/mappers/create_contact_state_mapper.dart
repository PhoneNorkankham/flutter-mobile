import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/contact_request.dart';
import 'package:keepup/src/enums/new_chat_tab_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_chat/interactor/new_chat_bloc.dart';

class CreateContactStateMapper implements BaseStateMapper<NewChatState, DataResult<Contact>> {
  @override
  NewChatState mapResultToState(NewChatState state, DataResult<Contact> result) {
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
        tabType: NewChatTabType.newChat,
        interval: 0,
        group: null,
        contactRequest: const ContactRequest(),
        avatar: null,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.contactCreatedSuccessfully.tr),
      );
    }
  }
}
