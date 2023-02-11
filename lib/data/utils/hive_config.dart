import 'package:hive_flutter/hive_flutter.dart';

import '../model/model.dart';

class HiveConfig {
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

  static Future<void> openBox() async {
    // open boxes
    await Hive.openBox(taskBox);
  }
}
