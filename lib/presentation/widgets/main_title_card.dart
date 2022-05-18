import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';

import 'main_card.dart';
import 'main_title.dart';

class MainTitleCardHome extends StatelessWidget {
  final String title;
  const MainTitleCardHome({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: const MainCardForHome(),
                    )),
          ),
        )
      ],
    );
  }
}
