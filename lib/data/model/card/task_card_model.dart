// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
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
  final String? id;
  @HiveField(1)
  final String? boardId;
  @HiveField(2)
  final String? name;
  @HiveField(3)
  final List<Task>? tasks;

  @override
  bool operator ==(covariant TaskCard other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.boardId == boardId &&
      other.name == name &&
      listEquals(other.tasks, tasks);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      boardId.hashCode ^
      name.hashCode ^
      tasks.hashCode;
  }
}
