import "package:flutter/material.dart";
import 'package:provider/provider.dart';
// ignore_for_file: prefer_const_constructors
import 'package:taskdorm/constants.dart';
import 'package:taskdorm/data/task_data.dart';
import '../models/task.dart';

class CustomClassTile extends StatelessWidget {
  final Task task;

  CustomClassTile({Key? key, required this.task}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, provider, child) {
        return GestureDetector(
          onLongPress: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Are you sure you want to delete this taks.?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          print('Deleting task');
                        },
                        child: Text('Delete'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Go back'),
                      )
                    ],
                  );
                });
          },
          child: Container(
            decoration: BoxDecoration(
              color: tileContainerColor,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '10 minutes ago',
                    ),
                    SizedBox(height: 10),
                    CustomTagIndicator(
                      tag: task.tag,
                      color: int.parse(task.colorCode),
                    )
                  ],
                ),

                // toggle button

                CustomRadioButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomTagIndicator extends StatelessWidget {
  final String tag;
  final int color;

  const CustomTagIndicator({Key? key, required this.tag, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(color),
      ),
      child: Center(
        child: Text(
          tag,
          style: tagTextStyle,
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final double _height = 40;
  final double _width = 40;

  final double _childHeight = 20;
  final double _childWidth = 20;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('This is coming together');
      },
      child: Container(
        height: _height,
        width: _width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: darkThemeBackground,
          shape: BoxShape.circle,
        ),
        child: Container(
          height: _childHeight,
          width: _childWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff6364FF),
          ),
        ),
      ),
    );
  }
}
