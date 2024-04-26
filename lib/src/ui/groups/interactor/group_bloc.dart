import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/enums/group_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/groups/components/group_item.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'group_bloc.freezed.dart';
part 'group_event.dart';
part 'group_state.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc() : super(const GroupState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnGotoNewGroup>(_onGotoNewGroup);
    on<_OnGotoGroupDetails>(_onGotoGroupDetails);
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupState> emit) async {}

  FutureOr<void> _onGotoNewGroup(_OnGotoNewGroup event, Emitter<GroupState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.toPage(
        AppPages.groupDetail,
        argument: GroupType.newGroup,
      ),
    ));
  }

  FutureOr<void> _onGotoGroupDetails(_OnGotoGroupDetails event, Emitter<GroupState> emit) {
    emit(state.copyWith(
      pageCommand: PageCommandNavigation.toPage(
        AppPages.groupDetail,
        argument: GroupType.groupDetail,
      ),
    ));
  }
}
