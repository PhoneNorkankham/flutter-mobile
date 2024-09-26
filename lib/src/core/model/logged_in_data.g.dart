// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_in_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoggedInDataAdapter extends TypeAdapter<LoggedInData> {
  @override
  final int typeId = 1;

  @override
  LoggedInData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoggedInData(
      isLoggedIn: fields[0] == null ? false : fields[0] as bool,
      isExpired: fields[1] == null ? false : fields[1] as bool,
      isAnonymous: fields[2] == null ? false : fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, LoggedInData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isLoggedIn)
      ..writeByte(1)
      ..write(obj.isExpired)
      ..writeByte(2)
      ..write(obj.isAnonymous);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoggedInDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggedInDataImpl _$$LoggedInDataImplFromJson(Map<String, dynamic> json) =>
    _$LoggedInDataImpl(
      isLoggedIn: json['is_logged_in'] as bool? ?? false,
      isExpired: json['is_expired'] as bool? ?? false,
      isAnonymous: json['is_anonymous'] as bool? ?? false,
    );

Map<String, dynamic> _$$LoggedInDataImplToJson(_$LoggedInDataImpl instance) =>
    <String, dynamic>{
      'is_logged_in': instance.isLoggedIn,
      'is_expired': instance.isExpired,
      'is_anonymous': instance.isAnonymous,
    };
