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
      Task(title: 'Learn to code', tag: 'sport'),
      Task(title: 'Learn to code', tag: 'sport'),
      Task(title: 'Learn to code', tag: 'sport'),
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
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CustomNavigationBar(),
              // listview
              Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return CustomClassTile();
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
