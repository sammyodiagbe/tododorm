// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

void main(List<String> args) {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Rubik', // added rubik as the preferred font family
      ),
    );
  }
}
