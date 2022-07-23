import 'package:flutter/foundation.dart';
import 'package:taskdorm/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Learn to code', tag: 'sport', colorCode: '0xffF8AB4A'),
    Task(title: 'Read the new book.', tag: 'tech', colorCode: '0xffFF7360'),
    Task(title: 'Design the ui for app', tag: 'music', colorCode: '0xffB1D199'),
    Task(title: 'Play soccer', tag: 'sport', colorCode: '0xffaa9aff'),
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

  void createTask(String title, String tag) {
    String color = tag == 'tech'
        ? '0xffFF7360'
        : tag == 'sport'
            ? '0xffF8AB4A'
            : '0xffB1D199';
    Task task = Task(colorCode: color, title: title, tag: tag);
    _tasks.add(task);
    notifyListeners();
  }
}
