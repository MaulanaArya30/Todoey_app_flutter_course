import 'package:flutter/material.dart';
import 'package:todoey_app_flutter_course/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../models/data.dart';

class TaskList extends StatelessWidget {
  // final List<Task> tasks;

  // const TaskList({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, data, child) {
      return ListView.builder(
        itemCount: data.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: data.tasks[index].name,
            isChecked: data.tasks[index].isDone,
            checkboxCallback: (bool? checkboxState) {
              // setState(() {
              //   Provider.of<Data>(context).tasks[index].toggleDone();
              // });
            },
          );
        },
      );
    });
  }
}
