part of 'contact_detail_bloc.dart';

@freezed
class ContactDetailState with _$ContactDetailState {
  const ContactDetailState._();

  const factory ContactDetailState({
    PageCommand? pageCommand,
    @Default(ContactType.newContact) ContactType contactType,
    @Default(false) bool isLoading,
    @Default('') String contactId,
    Group? group,
    @Default(ContactRequest()) ContactRequest request,
    File? avatar,
  }) = _ContactDetailState;
}
