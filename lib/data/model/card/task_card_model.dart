import 'package:hive/hive.dart';

import '../task/task_model.dart';

part 'task_card_model.g.dart';

@HiveType(typeId: 1)
class TaskCard extends HiveObject {
  TaskCard({
    this.name,
    this.tasks = const [],
    this.id,
    this.boardId,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? boardId;
  @HiveField(2)
  final String? name;
  @HiveField(3)
  final List<Task>? tasks;
}
