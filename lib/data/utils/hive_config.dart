import 'package:hive_flutter/hive_flutter.dart';

import '../model/model.dart';

class HiveConfig {
  static const String boardBox = "board_box";

  static const String cardBox = "card_box";

  static const String taskBox = "task_box";

  static Future<void> config() async {
    // init hive storage
    await Hive.initFlutter();
    // register adapters
    Hive.registerAdapter(BoardAdapter());
    Hive.registerAdapter(TaskCardAdapter());
    Hive.registerAdapter(TaskAdapter());
    Hive.registerAdapter(TaskStatusAdapter());
  }

  static Future<Box> openBoardBox() async {
    // open boxes
    final box = await Hive.openBox(boardBox);
    return box;
  }

  static Future<Box> openCardBox() async {
    // open boxes
    final box = await Hive.openBox(cardBox);
    return box;
  }

  static Future<Box> openTaskBox() async {
    // open boxes
    final box = await Hive.openBox(taskBox);
    return box;
  }
}
