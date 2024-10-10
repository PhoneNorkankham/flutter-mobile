part of 'contact_detail_bloc.dart';

@freezed
class ContactDetailState with _$ContactDetailState {
  const ContactDetailState._();

  const factory ContactDetailState({
    PageCommand? pageCommand,
    @Default(ContactType.newContact) ContactType contactType,
    @Default(false) bool isLoading,
    @Default('') String contactId,
    @Default([]) List<Group> groups,
    Group? selectedGroup,
    @Default(ContactRequest()) ContactRequest request,
    File? avatar,
    BingSearchImageData? bingSearchImageData,
  }) = _ContactDetailState;
}
