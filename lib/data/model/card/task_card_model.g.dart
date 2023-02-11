// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskCardAdapter extends TypeAdapter<TaskCard> {
  @override
  final int typeId = 1;

  @override
  TaskCard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskCard(
      name: fields[2] as String?,
      tasks: (fields[3] as List?)?.cast<Task>(),
      id: fields[0] as int?,
      boardId: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, TaskCard obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.boardId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.tasks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
