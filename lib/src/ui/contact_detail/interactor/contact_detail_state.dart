part of 'contact_detail_bloc.dart';

@freezed
class ContactDetailState with _$ContactDetailState {
  const ContactDetailState._();

  const factory ContactDetailState({
    PageCommand? pageCommand,
    @Default(ContactType.newContact) ContactType contactType,
    @Default(false) bool isLoading,
    @Default('') String contactId,
    @Default(ContactRequest()) ContactRequest request,
    @Default(0) double interval,
    @Default(AppConstants.defaultEveryDays) List<ChoiceEveryDayData> everyDays,
  }) = _ContactDetailState;
}
