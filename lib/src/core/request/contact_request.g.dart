// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactRequestImpl _$$ContactRequestImplFromJson(Map<String, dynamic> json) =>
    _$ContactRequestImpl(
      contactId: json['id'] as String? ?? '',
      ownerId: json['owner_id'] as String? ?? '',
      groupId: json['group_id'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNo: json['phone_no'] as String? ?? '',
      phones: (json['phones'] as List<dynamic>?)
              ?.map((e) => ContactPhone.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dateOfBirth:
          const DateTimeJsonConverter().fromJson(json['date_of_birth']),
      expiration: const DateTimeJsonConverter().fromJson(json['expiration']),
      dateCreated: const DateTimeJsonConverter().fromJson(json['date_created']),
    );

Map<String, dynamic> _$$ContactRequestImplToJson(
    _$ContactRequestImpl instance) {
  final val = <String, dynamic>{
    'owner_id': instance.ownerId,
    'group_id': instance.groupId,
    'avatar': instance.avatar,
    'name': instance.name,
    'email': instance.email,
    'phone_no': instance.phoneNo,
    'phones': instance.phones.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_of_birth',
      const DateTimeJsonConverter().toJson(instance.dateOfBirth));
  writeNotNull(
      'expiration', const DateTimeJsonConverter().toJson(instance.expiration));
  writeNotNull('date_created',
      const DateTimeJsonConverter().toJson(instance.dateCreated));
  return val;
}
