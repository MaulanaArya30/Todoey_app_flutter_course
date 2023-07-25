import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked; //= false;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback});

  // void toggleCheck(bool? value) {
  //   if (value != null) {
  //     setState(() {
  //       isChecked = value;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked, //checkboxstate,
        onChanged: checkboxCallback as void Function(bool?)?,
        //onChanged: toggleCheckBox as void Function(bool?)?,
      ),
      // trailing: TaskCheckbox(
      //   checkboxstate: isChecked,
      //   toggleCheckBox: toggleCheck,
      // ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   TaskCheckbox({required this.checkboxstate, required this.toggleCheckBox});

//   final bool checkboxstate;
//   final Function toggleCheckBox;

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
