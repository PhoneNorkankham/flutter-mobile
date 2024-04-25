part of 'contact_detail_bloc.dart';

@freezed
class ContactDetailState with _$ContactDetailState {
  const ContactDetailState._();

  const factory ContactDetailState({
    PageCommand? pageCommand,
    @Default(ContactType.newContact) ContactType contactType,
  }) = _ContactDetailState;
}
