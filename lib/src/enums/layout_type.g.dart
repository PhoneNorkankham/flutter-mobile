// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LayoutTypeAdapter extends TypeAdapter<LayoutType> {
  @override
  final int typeId = 2;

  @override
  LayoutType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LayoutType.list;
      case 1:
        return LayoutType.grid;
      default:
        return LayoutType.list;
    }
  }

  @override
  void write(BinaryWriter writer, LayoutType obj) {
    switch (obj) {
      case LayoutType.list:
        writer.writeByte(0);
        break;
      case LayoutType.grid:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LayoutTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
