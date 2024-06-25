import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/bottom_sheet/new_group/interactor/new_group_bloc.dart';
import 'package:keepup/src/ui/routing/pop_result.dart';

class CreateGroupStateMapper implements BaseStateMapper<NewGroupState, DataResult<Group>> {
  @override
  NewGroupState mapResultToState(NewGroupState state, DataResult<Group> result) {
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
