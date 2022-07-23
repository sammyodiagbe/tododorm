// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:taskdorm/constants.dart';
import 'package:taskdorm/data/task_data.dart';
import 'package:taskdorm/screens/taskScreen.dart';

void main(List<String> args) {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: accentColor),
          textTheme: ThemeData.dark().textTheme.apply(
                fontFamily: 'Rubik',
              ),
          // floatingActionButtonTheme: FloatingActionButtonThemeData(
          //   backgroundColor:
          // ),
        ),
        themeMode: ThemeMode.dark,
        home: TaskScreen(),
      ),
    );
  }
}
