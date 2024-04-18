import 'package:flutter/material.dart';
import 'package:todoy/models/task.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?) checkBoxToggle;

  TaskTile({this.isChecked, this.taskTitle,required this.checkBoxToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(taskTitle!, style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,),),
        trailing: Checkbox(
          activeColor: Colors.blueAccent,
          value: isChecked,
          onChanged: checkBoxToggle,
          // onChanged: checkBoxFunction,
        )
    );
  }
}


