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
      Task(title: 'Learn to code', tag: 'sport', colorCode: '0xffF8AB4A'),
      Task(title: 'Read the new book.', tag: 'tech', colorCode: '0xffFF7360'),
      Task(
          title: 'Design the ui for app',
          tag: 'hobby',
          colorCode: '0xffB1D199'),
      Task(title: 'Play soccer', tag: 'food', colorCode: '0xffaa9aff'),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkThemeBackground,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  // color: Colors.white,
                );
              },
            );
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
                    int colorCode = int.parse(_tasks[index].colorCode);
                    return CustomClassTile(
                        title: title,
                        tag: tag,
                        done: done,
                        colorCode: colorCode);
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
