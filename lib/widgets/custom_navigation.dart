// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/images/logo.svg'),
              SizedBox(
                width: 2,
              ),
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
          SizedBox(
            height: 20,
          ),
          Text('You have 0 tasks')
        ],
      ),
    );
  }
}
