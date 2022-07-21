// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      width: double.infinity,
      child: Row(
        children: [
          Text(
            'Taskdom',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
