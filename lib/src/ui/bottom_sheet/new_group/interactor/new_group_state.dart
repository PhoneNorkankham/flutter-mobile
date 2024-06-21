part of 'new_group_bloc.dart';

@freezed
class NewGroupState with _$NewGroupState {
  const NewGroupState._();

  const factory NewGroupState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default([]) List<ContactRequest> selectedContacts,
    @Default(GroupRequest()) GroupRequest groupRequest,
    File? avatar,
  }) = _NewGroupState;

  bool get enabledCreateNewGroupButton => groupRequest.isValidate;
}
