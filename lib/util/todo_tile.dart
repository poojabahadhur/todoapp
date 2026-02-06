import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;
  final DateTime createdDate;
  final DateTime dueTime;

  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    required this.createdDate,
    required this.dueTime,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isOverdue = now.isAfter(dueTime) && !taskCompleted;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: const Color.fromARGB(255, 217, 116, 108),
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isOverdue ? Colors.pink[100] : const Color(0xFFE0F2F1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(value: taskCompleted, onChanged: onChanged),
                  Expanded(
                    child: Text(
                      taskName,
                      style: TextStyle(
                        fontSize: 18,
                        decoration:
                            taskCompleted
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "Created: ${DateFormat.yMMMd().add_jm().format(createdDate)}",
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                "Due in: ${dueTime.difference(now).inMinutes} min",
                style: TextStyle(
                  fontSize: 12,
                  color: isOverdue ? Colors.red : Colors.black87,
                ),
              ),
              if (isOverdue)
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Time's up! Please complete the task",
                    style: TextStyle(fontSize: 12, color: Colors.redAccent),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
