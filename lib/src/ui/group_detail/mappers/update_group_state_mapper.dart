import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/request/group_request.dart';
import 'package:keepup/src/enums/group_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/base_state_mapper.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_error.dart';
import 'package:keepup/src/ui/base/result/result.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class UpdateGroupStateMapper implements BaseStateMapper<GroupDetailState, DataResult<Group>> {
  @override
  GroupDetailState mapResultToState(GroupDetailState state, DataResult<Group> result) {
    if (result.isError) {
      final PageError pageError = result.asError!.error;
      return state.copyWith(
        isLoading: false,
        pageCommand: pageError.pageErrorType == NetworkError.token
            ? PageCommandDialog.showExpirationSession()
            : PageCommandMessage.showError(pageError.message),
      );
    } else {
      final Group group = result.valueOrCrash;
      final GroupRequest request = GroupRequest.fromJson(group.toJson());
      return state.copyWith(
        isLoading: false,
        avatar: null,
        request: request,
        groupId: group.id,
        groupType: GroupType.groupDetail,
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.groupUpdatedSuccessfully.tr),
      );
    }
  }
}
