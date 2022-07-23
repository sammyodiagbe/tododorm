// ignore_for_file: prefer_const_constructors\
import "../constants.dart";

import "package:flutter/material.dart";

class TagWidget extends StatelessWidget {
  final String tagName;
  final Color color;
  final Function setTag;
  const TagWidget(
      {Key? key,
      required this.tagName,
      required this.color,
      required this.setTag})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setTag(tagName);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(tagName),
      ),
    );
  }
}
