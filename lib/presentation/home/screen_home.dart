import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/home/widgets/number_card.dart';
import 'package:netflixclone/presentation/widgets/main_title.dart';

import '../widgets/main_title_card.dart';
import 'widgets/background_card.dart';
import 'widgets/complete_number_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          if (direction == ScrollDirection.forward) {
            scrollnotifier.value = true;
          } else if (direction == ScrollDirection.reverse) {
            scrollnotifier.value = false;
          }
          // print(direction);

          return true;
        },
        child: Stack(
          children: [
            ListView(
              children: const [
                BackGroundCard(),
                kheight,
                MainTitleCardHome(
                  title: 'Released in the past year',
                ),
                kheight,
                MainTitleCardHome(
                  title: 'Trending Now',
                ),
                kheight,
                CompleteNumberCard(),
                MainTitleCardHome(
                  title: 'Tense Drama',
                ),
                kheight,
                MainTitleCardHome(
                  title: 'South Indian Cinema',
                ),
              ],
            ),
            ValueListenableBuilder(
              valueListenable: scrollnotifier,
              builder: (context, n, Widget? _) {
                return n == true
                    ? AnimatedContainer(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black,
                              Colors.black.withOpacity(.1),
                            ],
                          ),
                        ),
                        duration: const Duration(milliseconds: 20000),
                        width: double.infinity,
                        height: 60,
                        //color: Colors.black.withOpacity(.4),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                    width: 50,
                                    height: 40,
                                    image: NetworkImage(
                                      "https://pngrow.com/preview/625/netflix-logo-circle-png",
                                    )),
                                const Spacer(),
                                const Icon(Icons.cast),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    color: Colors.blue,
                                    width: 30,
                                    height: 30,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "TV Shows",
                                  style: khometextstyle,
                                ),
                                Text(
                                  "Movies",
                                  style: khometextstyle,
                                ),
                                Text(
                                  " ShowsCategories",
                                  style: khometextstyle,
                                )
                              ],
                            )
                          ],
                        ))
                    : const SizedBox();
              },
            )
          ],
        ),
      ),
    ));
  }
}
