import 'package:flutter/foundation.dart';
import 'package:taskdorm/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Learn to code', tag: 'sport'),
    Task(title: 'Learn to code', tag: 'sport'),
    Task(title: 'Learn to code', tag: 'sport'),
    Task(title: 'Learn to code', tag: 'sport'),
  ];

  List<Task> get getTasks {
    return _tasks;
  }

  int get tasksLength {
    return _tasks.length;
  }
}
