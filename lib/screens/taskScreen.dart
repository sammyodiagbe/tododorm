// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:taskdorm/constants.dart';
import 'package:taskdorm/data/task_data.dart';
import 'package:taskdorm/widgets/bottomSheet.dart';
import 'package:taskdorm/widgets/customTaskTiles.dart';
import 'package:taskdorm/widgets/custom_navigation.dart';
import 'package:taskdorm/models/task.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkThemeBackground,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return BottomSheetWidget();
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
                    Task _task = Provider.of<TaskData>(context).getTasks[index];
                    return CustomClassTile(task: _task);
                  }),
                  itemCount: Provider.of<TaskData>(context).tasksLength,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
