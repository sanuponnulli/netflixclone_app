//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button.dart';

class ScreenNewAndHot extends StatelessWidget {
  ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "New & Hot",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          ),
          actions: [
            Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            ),
            Container(
              width: 30,
              height: 20,
              color: Colors.blue,
            ),
            kwidth
          ],
          bottom: TabBar(
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kwhitecolor,
              ),
              tabs: const [
                Tab(
                  text: "🍿Coming Soon",
                ),
                Tab(text: "👀Everyone's watching")
              ]),
        ),
        body: TabBarView(
            children: [_buildComingSoon(context), _buildComingSoon(context)]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children: [
        kheight,
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 500,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("FEB"),
                  Text(
                    "11",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: Size.width - 50,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        //color: Colors.amber,
                        width: double.infinity,
                        height: 200,
                        child: Image.network(
                          "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/wiE9doxiLwq3WCGamDIOb2PqBqc.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 10,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black.withOpacity(.5),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.volume_off,
                                size: 30,
                                color: kwhitecolor,
                              )),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "TALL GIRL",
                        style: TextStyle(
                            letterSpacing: -5,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Custombutton(
                            icon: Icons.all_out_sharp,
                            title: "Remind Me",
                            textsize: 12,
                            iconsize: 20,
                          ),
                          kwidth,
                          kwidth,
                          Custombutton(
                            icon: Icons.info,
                            title: "info",
                            textsize: 12,
                            iconsize: 20,
                          ),
                          kwidth
                        ],
                      )
                    ],
                  ),
                  kheight,
                  const Text("Coming on friday"),
                  kheight,
                  const Text("Tall girl 2"),
                  kheight,
                  const Text("hdfjhsbdjhsgdfsdhgbfhsdgjh")
                ],
              ),
              //color: Colors.blue,
            )
          ],
        )
      ],
    );
  }

  Widget _buildEveryonesWatching() {
    return const SizedBox();
  }
}
