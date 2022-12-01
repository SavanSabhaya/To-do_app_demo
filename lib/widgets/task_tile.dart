import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxcallback,
      required this.longpressCallback});
  final bool isChecked;
  final String taskTitle;
  final Function checkboxcallback;
  final Function longpressCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (() {
        longpressCallback();
      }),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: ((value) {
            checkboxcallback(value);
          })),
    );
  }
}
