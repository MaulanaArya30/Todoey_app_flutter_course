import 'package:flutter/material.dart';
import 'package:todoey_app_flutter_course/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
