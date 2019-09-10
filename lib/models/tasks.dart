import 'dart:collection';

import 'package:flutter/material.dart';

import 'task.dart';

class Tasks with ChangeNotifier {
  List<Task> _tasks = [Task('First'), Task('second', done: true)];

  int get count => _tasks.length;

  Task item(int idx) => _tasks[idx];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void add(String task) {
    if (task == null || task.length == 0) return;
    _tasks.add(Task(task));
    notifyListeners();
  }

  void done(idx, done) {
    _tasks[idx].done = done;
    notifyListeners();
  }

  void remove(int idx) {
    _tasks.removeAt(idx);
    notifyListeners();
  }
}
