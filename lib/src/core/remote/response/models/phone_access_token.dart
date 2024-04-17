import 'package:json_annotation/json_annotation.dart';

part 'phone_access_token.g.dart';

@JsonSerializable()
class PhoneAccessToken {
  @JsonKey(name: 'token')
  final String value;

  const PhoneAccessToken(this.value);

  factory PhoneAccessToken.fromJson(Map<String, dynamic> json) => _$PhoneAccessTokenFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneAccessTokenToJson(this);
}
