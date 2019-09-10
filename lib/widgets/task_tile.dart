import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tasks.dart';

class TaskTile extends StatelessWidget {
  TaskTile(this.idx);
  final int idx;

  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasks, _) => ListTile(
        onLongPress: () => tasks.remove(idx),
        contentPadding: EdgeInsets.all(0),
        title: Text(
          tasks.item(idx).text,
          style: TextStyle(
            decoration: tasks.item(idx).done
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: tasks.item(idx).done,
          onChanged: (done) => tasks.done(idx, done),
        ),
      ),
    );
  }
}
