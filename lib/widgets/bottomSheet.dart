// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:taskdorm/constants.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Color(0xff000000).withOpacity(0.4),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: darkThemeBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Yo'),
                SizedBox(width: 2),
                Text('Gogetter.'),
              ],
            ),
            SizedBox(height: 10),
            Text('Create a new task.'),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: tileContainerColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: 'Enter task name.',
              ),
            )
          ],
        ),
      ),
    );
  }
}
