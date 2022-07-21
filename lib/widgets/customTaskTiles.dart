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
        child: Text('hello'),
      ),
    );
  }
}
