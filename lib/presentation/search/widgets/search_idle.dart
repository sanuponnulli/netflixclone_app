import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/search/widgets/title.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w1280/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg';

class Searchidlewidget extends StatelessWidget {
  Searchidlewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchtextTitle(),
        kheight,
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.all(8),
              shrinkWrap: true,
              itemBuilder: ((ctx, index) => const TopSearchItemField()),
              separatorBuilder: (ctx, index) => kheight,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemField extends StatelessWidget {
  const TopSearchItemField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * .35,
          height: 65,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        ),
        const Expanded(
            child: Text(
          '  Movie Name',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
        const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Kblack,
            radius: 23,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: kwhitecolor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
