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
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  List<TaskCard>? taskCards;
}
