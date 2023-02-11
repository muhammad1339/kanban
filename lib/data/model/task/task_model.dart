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
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? describtion;
  @HiveField(3)
  final TaskStatus? status;
  @HiveField(4)
  final int? timeSpentInMillies;
  @HiveField(5)
  final int? createdAt;
  @HiveField(6)
  final int? updatedAt;
  @HiveField(7)
  final int? completedAt;
  @HiveField(8)
  final int? deletedAt;
  @HiveField(9)
  final int? boardId;
  @HiveField(10)
  final int? taskCardId;
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
