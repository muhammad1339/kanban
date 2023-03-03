// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 2)
class Task extends HiveObject {
  Task({
    this.id,
    this.name,
    this.describtion = "",
    this.status = TaskStatus.todo,
    this.timeSpentInMillies,
    this.createdAt,
    this.updatedAt,
    this.completedAt,
    this.deletedAt,
    this.boardId,
    this.taskCardId,
  });
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? describtion;
  @HiveField(3)
  final TaskStatus? status;
  @HiveField(4)
  final int? timeSpentInMillies;
  @HiveField(5)
  final DateTime? createdAt;
  @HiveField(6)
  final DateTime? updatedAt;
  @HiveField(7)
  final DateTime? completedAt;
  @HiveField(8)
  final DateTime? deletedAt;
  @HiveField(9)
  final String? boardId;
  @HiveField(10)
  final String? taskCardId;

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.describtion == describtion &&
      other.status == status &&
      other.timeSpentInMillies == timeSpentInMillies &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.completedAt == completedAt &&
      other.deletedAt == deletedAt &&
      other.boardId == boardId &&
      other.taskCardId == taskCardId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      describtion.hashCode ^
      status.hashCode ^
      timeSpentInMillies.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      completedAt.hashCode ^
      deletedAt.hashCode ^
      boardId.hashCode ^
      taskCardId.hashCode;
  }
}

@HiveType(typeId: 3)
enum TaskStatus {
  @HiveField(0)
  todo(1),
  @HiveField(1)
  inProgress(2),
  @HiveField(2)
  done(3);

  final int status;
  const TaskStatus(this.status);

  @override
  String toString() {
    switch (this) {
      case TaskStatus.todo:
        return "ToDo";
      case TaskStatus.inProgress:
        return "InProgress";
      case TaskStatus.done:
        return "Done";
    }
  }
}
