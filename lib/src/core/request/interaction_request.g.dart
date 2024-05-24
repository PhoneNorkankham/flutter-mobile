// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InteractionRequest _$$_InteractionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_InteractionRequest(
      interactionId: json['id'] as String? ?? '',
      ownerId: json['owner_id'] as String? ?? '',
      contactId: json['contact_id'] as String? ?? '',
      dateCompleted:
          const DateTimeJsonConverter().fromJson(json['date_completed']),
      method: $enumDecodeNullable(
              _$InteractionMethodTypeEnumMap, json['method'],
              unknownValue: InteractionMethodType.KeepUp) ??
          InteractionMethodType.KeepUp,
    );

Map<String, dynamic> _$$_InteractionRequestToJson(
    _$_InteractionRequest instance) {
  final val = <String, dynamic>{
    'owner_id': instance.ownerId,
    'contact_id': instance.contactId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_completed',
      const DateTimeJsonConverter().toJson(instance.dateCompleted));
  val['method'] = _$InteractionMethodTypeEnumMap[instance.method]!;
  return val;
}

const _$InteractionMethodTypeEnumMap = {
  InteractionMethodType.Message: 'Message',
  InteractionMethodType.Call: 'Call',
  InteractionMethodType.Contact: 'Contact',
  InteractionMethodType.KeepUp: 'KeepUp',
};
