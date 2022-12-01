import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app_demo/models/task_data.dart';
import 'package:to_do_app_demo/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
            itemCount: taskdata.taskCount,
            itemBuilder: (context, index) {
              final task = taskdata.tasks[index];
              return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxcallback: (checkboxstate) {
                  taskdata.updateTask(task);
                },
                longpressCallback: () {
                  taskdata.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
