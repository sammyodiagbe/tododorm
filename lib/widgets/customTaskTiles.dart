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
        return Opacity(
          opacity: task.done ? 0.5 : 1,
          child: GestureDetector(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title:
                          Text('Are you sure you want to delete this task.?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            provider.deleteTask(task);
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Delete',
                            style: TextStyle(color: redishColor),
                          ),
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

                  CustomRadioButton(task: task),
                ],
              ),
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
  Task task;
  final double _childHeight = 20;
  final double _childWidth = 20;

  CustomRadioButton({Key? key, required this.task});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<TaskData>(context, listen: false).updateTask(task);
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
            color: task.done ? purpish : null,
          ),
        ),
      ),
    );
  }
}
