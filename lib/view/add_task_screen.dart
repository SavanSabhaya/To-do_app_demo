import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app_demo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Container(
          padding: const EdgeInsets.all(100),
          child: Column(children: [
            const Text('Add Task',
                style: TextStyle(fontSize: 25, color: Colors.lightBlueAccent)),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newvalue) {
                newTaskTitle = newvalue;
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: (() {
                          Provider.of<TaskData>(context, listen: false)
                              .addTask(newTaskTitle!);
                          Navigator.pop(context);
                        }),
                        child: const Text('Add')))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
