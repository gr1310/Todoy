import 'package:flutter/material.dart';
import 'package:todoy/widgets/tasks_tile.dart';
import 'package:todoy/models/task.dart';

class TaskList extends StatefulWidget {
  // const TaskList({
  //   super.key,
  // });

  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxToggle: (bool? newValue) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
