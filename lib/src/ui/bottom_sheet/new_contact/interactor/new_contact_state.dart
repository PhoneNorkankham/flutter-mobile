part of 'new_contact_bloc.dart';

@freezed
class NewContactState with _$NewContactState {
  const NewContactState._();

  const factory NewContactState({
    @Default(PageState.loading) PageState pageState,
    PageCommand? pageCommand,
    @Default(false) bool isLoading,
    @Default([]) List<Group> groups,
    Group? selectedGroup,
    @Default(ContactRequest()) ContactRequest contactRequest,
    File? avatar,
  }) = _NewContactState;

  bool get enabledCreateNewContactButton => contactRequest.isValidate;
}
