import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/fastlaughs/widgets/videolistitem.dart';

class ScreenFastLaughs extends StatelessWidget {
  ScreenFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) => VideoListItem(index: index)),
        ),
      )),
    );
  }
}
