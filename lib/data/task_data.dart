import 'package:flutter/foundation.dart';
import 'package:taskdorm/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Learn to code', tag: 'sport', colorCode: '0xffF8AB4A'),
    Task(title: 'Read the new book.', tag: 'tech', colorCode: '0xffFF7360'),
    Task(title: 'Design the ui for app', tag: 'hobby', colorCode: '0xffB1D199'),
    Task(title: 'Play soccer', tag: 'food', colorCode: '0xffaa9aff'),
  ];

  List<Task> get getTasks {
    return _tasks;
  }

  int get tasksLength {
    return _tasks.length;
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
