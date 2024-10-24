import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keepup/src/core/converters/date_time_converter.dart';
import 'package:keepup/src/core/model/contact_phone.dart';
import 'package:keepup/src/utils/app_validation.dart';

part 'contact_request.freezed.dart';
part 'contact_request.g.dart';

@freezed
class ContactRequest with _$ContactRequest {
  const ContactRequest._();

  @JsonSerializable(includeIfNull: false)
  const factory ContactRequest({
    @Default('') @JsonKey(name: 'id', includeToJson: false) String contactId,
    @Default('') @JsonKey(name: 'owner_id') String ownerId,
    @Default('') @JsonKey(name: 'group_id') String groupId,
    @Default('') String avatar,
    @Default('') String name,
    @Default('') String email,
    @Default('') @JsonKey(name: 'phone_no') String phoneNo,
    @Default([]) List<ContactPhone> phones,
    @DateTimeJsonConverter() @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @DateTimeJsonConverter() DateTime? expiration,
    @DateTimeJsonConverter() @JsonKey(name: 'date_created') DateTime? dateCreated,
    @Default(false) @JsonKey(includeFromJson: false, includeToJson: false) bool isExpanded,
    @JsonKey(includeFromJson: false, includeToJson: false) File? file,
  }) = _ContactRequest;

  factory ContactRequest.fromJson(Map<String, dynamic> json) => _$ContactRequestFromJson(json);

  String? get nameError => AppValidations.validateField(name);

  String? get emailError => AppValidations.validateEmail(email);

  bool get isValidate =>
      groupId.isNotEmpty && name.isNotEmpty && nameError == null && emailError == null;

  double getMoonPercent(int totalDays) {
    if (totalDays == 0) return 0;
    return (totalDays - expirationDays) / totalDays;
  }

  int get expirationDays {
    final DateTime? expiration = this.expiration;
    if (expiration == null) return 0;
    final DateTime now = DateUtils.dateOnly(DateTime.now());
    final int diff = DateUtils.dateOnly(expiration).difference(now).inDays;
    return diff;
  }
}
