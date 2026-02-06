import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp/data/database.dart';
import '../util/dialogbox.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _mybox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    super.initState();
    if (_mybox.get("toDoListKey") == null) {
      db.createInitialData();
    } else {
      db.LoadData();
    }
  }

  final _controller = TextEditingController();

  void savenewtask(Duration selectedDuration) {
    setState(() {
      DateTime now = DateTime.now();
      DateTime dueTime = now.add(selectedDuration);

      db.ToDoList.add({
        "task": _controller.text,
        "completed": false,
        "created": now.toString(),
        "due": dueTime.toString(),
      });

      _controller.clear();
    });

    db.UpdateDataBase();
    Navigator.of(context).pop();
  }

  void CheckBoxChanged(bool? value, int index) {
    setState(() {
      db.ToDoList[index]["completed"] = value!;
    });
    db.UpdateDataBase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialogbox(
          controller: _controller,
          onsave: savenewtask,
          oncancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deletetask(int index) {
    setState(() {
      db.ToDoList.removeAt(index);
    });
    db.UpdateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9), // Light pastel green
      appBar: AppBar(
        backgroundColor: const Color(0xFF80CBC4),
        title: const Center(
          child: Text(
            "MY TO DO LIST",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4DB6AC),
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.ToDoList.length,
        itemBuilder: (context, index) {
          var task = db.ToDoList[index];
          return ToDoTile(
            taskName: task["task"],
            taskCompleted: task["completed"],
            onChanged: (value) => CheckBoxChanged(value, index),
            deleteFunction: (context) => deletetask(index),
            createdDate: DateTime.parse(task["created"]),
            dueTime: DateTime.parse(task["due"]),
          );
        },
      ),
    );
  }
}
