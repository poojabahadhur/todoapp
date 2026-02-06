import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  static const String todoListKey = 'toDoListKey';
  List<Map<String, dynamic>> ToDoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    final now = DateTime.now();
    ToDoList = [
      {
        "task": "Make tutorial",
        "completed": false,
        "created": now.toString(),
        "due": now.add(const Duration(minutes: 10)).toString(),
      },
      {
        "task": "Go to gym",
        "completed": false,
        "created": now.toString(),
        "due": now.add(const Duration(minutes: 20)).toString(),
      },
    ];
    UpdateDataBase();
  }

  void LoadData() {
    final loadedList = _mybox.get(todoListKey);
    if (loadedList != null) {
      ToDoList = List<Map<String, dynamic>>.from(
        (loadedList as List).map((item) => Map<String, dynamic>.from(item)),
      );
    }
  }

  void UpdateDataBase() {
    _mybox.put(todoListKey, ToDoList);
  }
}
