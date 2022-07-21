import "package:flutter/material.dart";
// ignore_for_file: prefer_const_constructors
import 'package:taskdorm/constants.dart';

class CustomClassTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('hey there');
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
                Text('Redesign landing page'),
                SizedBox(height: 5),
                Text(
                  '10 minutes ago',
                ),
                SizedBox(height: 10),
                CustomTagIndicator()
              ],
            ),

            // toggle button

            CustomRadioButton(),
          ],
        ),
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
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
