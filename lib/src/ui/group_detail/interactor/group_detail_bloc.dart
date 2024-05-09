import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/enums/group_type.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';

part 'group_detail_bloc.freezed.dart';
part 'group_detail_event.dart';
part 'group_detail_state.dart';

class GroupDetailBloc extends Bloc<GroupDetailEvent, GroupDetailState> {
  GroupDetailBloc() : super(const GroupDetailState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupDetailState> emit) async {
    final arguments = Get.arguments;
    final String groupId = arguments is Group
        ? arguments.id
        : arguments is String
            ? arguments
            : '';
    if (groupId.isEmpty) {
      emit(state.copyWith(groupType: GroupType.newGroup));
    } else {
      emit(state.copyWith(groupType: GroupType.groupDetail));
    }
  }
}
