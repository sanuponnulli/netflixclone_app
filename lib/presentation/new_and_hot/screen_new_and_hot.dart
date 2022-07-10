//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';

import 'coming_soonwidget.dart';
//import 'package:netflixclone/presentation/home/widgets/custom_button.dart';

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
            children: [_buildComingSoon(context), _buildEveryonesWatching()]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return const ComingSoonwidget();
      },
    );
  }

  Widget _buildEveryonesWatching() {
    return const SizedBox();
  }
}
