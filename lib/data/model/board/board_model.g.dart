// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BoardAdapter extends TypeAdapter<Board> {
  @override
  final int typeId = 0;

  @override
  Board read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Board(
      id: fields[0] as String?,
      name: fields[1] as String?,
      taskCards: (fields[2] as List?)?.cast<TaskCard>(),
    );
  }

  @override
  void write(BinaryWriter writer, Board obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.taskCards);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BoardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
