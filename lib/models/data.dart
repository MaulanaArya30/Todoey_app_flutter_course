import 'package:flutter/foundation.dart'; //More specific and lighter than material.dart
import 'package:todoey_app_flutter_course/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk 2'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Eggs'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
