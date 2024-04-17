// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_value.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokenValueAdapter extends TypeAdapter<TokenValue> {
  @override
  final int typeId = 0;

  @override
  TokenValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TokenValue(
      token: fields[0] == null ? '' : fields[0] as String,
      type: fields[1] == null ? '' : fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TokenValue obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenValue _$TokenValueFromJson(Map<String, dynamic> json) => TokenValue(
      token: json['token'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$TokenValueToJson(TokenValue instance) =>
    <String, dynamic>{
      'token': instance.token,
      'type': instance.type,
    };
