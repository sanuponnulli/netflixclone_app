import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/home/widgets/number_card.dart';
import 'package:netflixclone/presentation/search/widgets/search%20resultwidhet.dart';
import 'package:netflixclone/presentation/widgets/main_card.dart';
import 'package:netflixclone/presentation/widgets/main_title.dart';

import '../widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainTitleCardHome(
                title: 'Released in the past year',
              ),
              kheight,
              MainTitleCardHome(
                title: 'Trending Now',
              ),
              kheight,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainTitle(title: 'Top 10 TV shows in india today'),
                  kheight,
                  LimitedBox(
                      maxHeight: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                            10,
                            (index) => NumberCard(
                                  index: index,
                                )),
                      ))
                ],
              ),
              MainTitleCardHome(
                title: 'Tense Drama',
              ),
              kheight,
              MainTitleCardHome(
                title: 'South Indian Cinema',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
