// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

import '../card/task_card_model.dart';

part 'board_model.g.dart';

@HiveType(typeId: 0)
class Board extends HiveObject {
  Board({
    this.id,
    this.name,
    this.taskCards = const [],
  });
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  List<TaskCard>? taskCards;

  @override
  String toString() => 'Board(id: $id, name: $name)';

  @override
  bool operator ==(covariant Board other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
