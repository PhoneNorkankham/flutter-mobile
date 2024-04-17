import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token_value.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class TokenValue {
  @HiveField(0, defaultValue: '')
  String token;

  @HiveField(1, defaultValue: '')
  String type;

  TokenValue({this.token = '', this.type = ''});

  factory TokenValue.fromJson(Map<String, dynamic> json) => _$TokenValueFromJson(json);

  TokenValue copyWith({
    String? accessToken,
    String? refreshToken,
  }) =>
      TokenValue(
        token: token,
        type: type,
      );
}
