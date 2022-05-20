import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';

class Custombutton extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;

  const Custombutton({
    Key? key,
    required this.icon,
    required this.title,
    required this.iconsize,
    required this.textsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconsize,
          color: kwhitecolor,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textsize),
        )
      ],
    );
  }
}
