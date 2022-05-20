import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';

import 'custom_button.dart';

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(Kmainimage))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custombutton(
                  iconsize: 20,
                  textsize: 12,
                  icon: Icons.add,
                  title: 'My list',
                ),
                _playwidget(),
                Custombutton(
                  icon: Icons.info,
                  title: 'Info',
                  iconsize: 20,
                  textsize: 12,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playwidget() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kwhitecolor)),
        onPressed: () {},
        icon: Icon(
          Icons.play_arrow,
          size: 25,
          color: Kblack,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Play',
            style: TextStyle(color: Kblack, fontSize: 15),
          ),
        ));
  }
}
