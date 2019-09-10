import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  TasksList(this.tasks, this.cb);
  final List<Task> tasks;
  final Function cb;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, idx) => TaskTile(tasks[idx], cb),
      itemCount: tasks.length,
    );
  }
}
