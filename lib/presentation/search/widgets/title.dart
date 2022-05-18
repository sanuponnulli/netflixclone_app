import 'package:flutter/material.dart';

class SearchtextTitle extends StatelessWidget {
  String title;
  SearchtextTitle({Key? key, this.title = 'Top Searches'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
