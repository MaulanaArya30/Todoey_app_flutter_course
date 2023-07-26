import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app_flutter_course/models/data.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallback;

  // AddTaskScreen({required this.addTaskCallback});

  final taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: taskController,
            ),
            SizedBox(height: 20),
            MaterialButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                //addTaskCallback(taskController.text);

                Provider.of<Data>(context, listen: false).addTask(taskController
                    .text); //need to add listen: fase to avoid error

                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
