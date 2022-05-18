import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/search/widgets/search%20resultwidhet.dart';
import 'package:netflixclone/presentation/search/widgets/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            backgroundColor: Colors.grey.withOpacity(.3),
            style: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
          ),
          kheight,
          Expanded(child: SearchResultWidget())
        ],
      )),
    );
  }
}
