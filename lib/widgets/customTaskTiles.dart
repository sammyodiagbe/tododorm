import "package:flutter/material.dart";
// ignore_for_file: prefer_const_constructors
import 'package:taskdorm/constants.dart';

class CustomClassTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Redesign landing page'),
              SizedBox(height: 5),
              Text(
                '10 minutes ago',
              ),
              SizedBox(height: 10),
              CustomTagIndicator()
            ],
          ),
        ]),
      ),
    );
  }
}

class CustomTagIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.green,
      ),
      height: 20,
      width: 50,
      child: Center(
        child: Text('hello'),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
