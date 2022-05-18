import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/widgets/app_bar_widgets.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            child: AppBarWidget(
              title: 'Downloads',
            ),
            preferredSize: Size.fromHeight(90)),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            _smartdownloads(),
            section2(),
            MaterialButton(
              onPressed: () {},
              color: kbuttoncolorblue,
              child: const Text(
                'Set up',
                style: TextStyle(
                    color: kwhitecolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: kwhitecolor,
              child: Text(
                'See What you can Download',
                style: TextStyle(
                    color: Kblack, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class section2 extends StatelessWidget {
  section2({Key? key}) : super(key: key);
  final List imagelist = [
    'https://www.themoviedb.org/t/p/w1280/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg',
    'https://www.themoviedb.org/t/p/w1280/YksR65as1ppF2N48TJAh2PLamX.jpg',
    'https://www.themoviedb.org/t/p/w1280/5HruMN0vvl84AqD7sCDXFNO4RhP.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhitecolor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Text(
          'We will download a personalized selection of movies and shows for you .So there is always something to watch on your device',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        Container(
          width: size.width,
          height: size.height * .69,
          //color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * .37,
                backgroundColor: Colors.grey.withOpacity(.5),
              ),
              ImagewidgetDownloads(
                angle: 20,
                //size: size,
                imagelist: imagelist[0],
                margin: const EdgeInsets.only(left: 130, bottom: 30),
              ),
              ImagewidgetDownloads(
                angle: -20,
                //size: size,
                imagelist: imagelist[1],
                margin: const EdgeInsets.only(right: 130, bottom: 30),
              ),
              ImagewidgetDownloads(
                // size: size,
                imagelist: imagelist[2],
                margin: const EdgeInsets.only(left: 0, bottom: 30),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _smartdownloads extends StatelessWidget {
  const _smartdownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(Icons.settings, color: kwhitecolor),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class ImagewidgetDownloads extends StatelessWidget {
  const ImagewidgetDownloads({
    Key? key,
    // required this.size,
    required this.imagelist,
    this.angle = 0,
    required this.margin,
  }) : super(key: key);

  //final Size size;
  final String imagelist;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * .4,
        height: size.height * .25,
        //color: Kblack,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imagelist)),
          borderRadius: BorderRadius.circular(6),
        ),
        //),
      ),
    );
  }
}
