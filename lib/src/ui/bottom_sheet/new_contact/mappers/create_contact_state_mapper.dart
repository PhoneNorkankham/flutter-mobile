import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/ui//bottom_sheet/new_contact/interactor/new_contact_bloc.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class CreateContactStateMapper implements BaseStateMapper<NewContactState, DataResult<Contact>> {
  @override
  NewContactState mapResultToState(NewContactState state, DataResult<Contact> result) {
    if (result.isError) {
      final PageError pageError = result.asError!.error;
      return state.copyWith(
        isLoading: false,
        pageCommand: pageError.toPageCommand(),
      );
    } else {
      return state.copyWith(
        isLoading: false,
        pageCommand: PageCommandNavigation.pop(
          result: PopResult(status: true, resultFromPage: ''),
          isDialog: true,
        ),
      );
    }
  }
}
