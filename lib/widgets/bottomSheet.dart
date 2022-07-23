// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:taskdorm/constants.dart';
import 'package:taskdorm/widgets/tagCapsule.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff000000).withOpacity(0.4),
      child: Container(
        height: 500,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: darkThemeBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  'Yo,',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 5),
                Text(
                  'Gogetter.',
                  style: TextStyle(
                    fontSize: 16,
                    color: orangeColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Create a new task.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                fillColor: tileContainerColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                hintText: 'Enter task name.',
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 20),
            // the tags
            Text(
              'Choose a tag.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                TagWidget(tagName: 'Tech', color: redishColor),
                SizedBox(
                  width: 10,
                ),
                TagWidget(
                  tagName: 'Music',
                  color: orangeColor,
                ),
                SizedBox(
                  width: 10,
                ),
                TagWidget(tagName: 'sport', color: purpish),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'Create task.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
