import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/converters/date_time_converter.dart';
import 'package:keepup/src/enums/interaction_type.dart';

part 'interaction_request.freezed.dart';
part 'interaction_request.g.dart';

@freezed
class InteractionRequest with _$InteractionRequest {
  const InteractionRequest._();

  @JsonSerializable(includeIfNull: false)
  const factory InteractionRequest({
    @Default('') @JsonKey(name: 'id', includeToJson: false) String interactionId,
    @Default('') @JsonKey(name: 'owner_id') String ownerId,
    @Default('') @JsonKey(name: 'contact_id') String contactId,
    @DateTimeJsonConverter() @JsonKey(name: 'date_completed') DateTime? dateCompleted,
    @Default(InteractionMethodType.None)
    @JsonKey(unknownEnumValue: InteractionMethodType.None)
    InteractionMethodType method,
  }) = _InteractionRequest;

  factory InteractionRequest.fromJson(Map<String, dynamic> json) =>
      _$InteractionRequestFromJson(json);
}
