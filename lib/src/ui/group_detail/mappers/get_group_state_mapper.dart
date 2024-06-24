import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GetGroupStateMapper implements BaseStateMapper<GroupDetailState, DataResult<Group>> {
  @override
  GroupDetailState mapResultToState(GroupDetailState state, DataResult<Group> result) {
    if (result.isError) {
      PageError pageError = result.asError!.error;
      return state.copyWith(
        pageState: PageState.success,
        pageCommand: pageError.toPageCommand(),
      );
    } else {
      final Group group = result.valueOrCrash;
      final GroupRequest request = GroupRequest.fromJson(group.toJson());
      return state.copyWith(
        pageState: PageState.success,
        request: request,
        groupId: group.id,
        groupDetail: group,
      );
    }
  }
}
