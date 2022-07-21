// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:taskdorm/constants.dart';
import 'package:taskdorm/widgets/customTaskTiles.dart';
import 'package:taskdorm/widgets/custom_navigation.dart';
import 'package:taskdorm/models/task.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Task> _tasks = [
      Task(title: 'Learn to code', tag: 'sport'),
      Task(title: 'Read the new book.', tag: 'tech'),
      Task(title: 'Design the ui for app', tag: 'hobby'),
      Task(title: 'Play soccer', tag: 'food'),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkThemeBackground,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            //    showModalBottomSheet(context: context, builder: () {
            //   return null;
            // })
            // }
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              CustomNavigationBar(),
              // listview
              Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    String title = _tasks[index].title;
                    String tag = _tasks[index].tag;
                    bool done = _tasks[index].done;
                    return CustomClassTile(
                      title: title,
                      tag: tag,
                      done: done,
                    );
                  }),
                  itemCount: _tasks.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
