import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/repository/supabase_repository.dart';
import 'package:keepup/src/enums/group_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/base/interactor/page_command.dart';
import 'package:keepup/src/ui/base/interactor/page_states.dart';
import 'package:keepup/src/utils/app_pages.dart';

part 'group_bloc.freezed.dart';
part 'group_event.dart';
part 'group_state.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  final SupabaseRepository _supabaseRepository;

  GroupBloc(this._supabaseRepository) : super(const GroupState()) {
    on<_Initial>(_initial);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(pageCommand: null)));
    on<_OnChangedKeyword>((event, emit) => emit(state.copyWith(keyword: event.keyword)));
    on<_OnGotoNewGroup>(_onGotoNewGroup);
    on<_OnGotoGroupDetails>(_onGotoGroupDetails);
  }

  FutureOr<void> _initial(_Initial event, Emitter<GroupState> emit) {
    return emit.forEach<List<Group>>(
      _supabaseRepository.watchGroups(),
      onData: (groups) => state.copyWith(
        groups: groups,
        pageState: PageState.success,
      ),
      onError: (error, stacktrace) => state.copyWith(
        pageCommand: PageCommandMessage.showSuccess(LocaleKey.somethingWentWrong.tr),
        pageState: PageState.success,
      ),
    );
  }

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
        argument: event.group,
      ),
    ));
  }
}
