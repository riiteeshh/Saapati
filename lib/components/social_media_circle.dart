import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocialMediaCircle extends StatelessWidget {
  IconData iconData;
  Color circleColor;
  SocialMediaCircle(
      {super.key, required this.iconData, required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: circleColor,
      child: Icon(
        iconData,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
