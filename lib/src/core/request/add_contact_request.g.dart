// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_contact_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddContactRequest _$$_AddContactRequestFromJson(Map<String, dynamic> json) =>
    _$_AddContactRequest(
      contactId: json['id'] as String? ?? '',
      ownerId: json['owner_id'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNo: json['phone_no'] as String? ?? '',
      dateOfBirth:
          const DateTimeJsonConverter().fromJson(json['date_of_birth']),
      frequency: (json['frequency'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [],
      expiration: const DateTimeJsonConverter().fromJson(json['expiration']),
      dateCreated: const DateTimeJsonConverter().fromJson(json['date_created']),
      isExpanded: json['is_expanded'] as bool? ?? false,
      isSelected: json['is_selected'] as bool? ?? false,
      groupIds: (json['group_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AddContactRequestToJson(
    _$_AddContactRequest instance) {
  final val = <String, dynamic>{
    'owner_id': instance.ownerId,
    'avatar': instance.avatar,
    'name': instance.name,
    'email': instance.email,
    'phone_no': instance.phoneNo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_of_birth',
      const DateTimeJsonConverter().toJson(instance.dateOfBirth));
  val['frequency'] = instance.frequency;
  writeNotNull(
      'expiration', const DateTimeJsonConverter().toJson(instance.expiration));
  writeNotNull('date_created',
      const DateTimeJsonConverter().toJson(instance.dateCreated));
  val['is_expanded'] = instance.isExpanded;
  val['is_selected'] = instance.isSelected;
  val['group_ids'] = instance.groupIds;
  return val;
}
