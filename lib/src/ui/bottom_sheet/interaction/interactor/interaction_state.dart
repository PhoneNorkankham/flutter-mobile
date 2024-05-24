part of 'interaction_bloc.dart';

@freezed
class InteractionState with _$InteractionState {
  const InteractionState._();

  const factory InteractionState({
    PageCommand? pageCommand,
    @Default(PageState.loading) PageState pageState,
    @Default(false) bool isLoading,
    Contact? contact,
    File? avatar,
  }) = _InteractionState;
}
