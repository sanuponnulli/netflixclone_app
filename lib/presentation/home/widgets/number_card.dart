import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 60,
              height: 150,
            ),
            Container(
              width: 150,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: kradius10,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w1280/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg'))),
            )
          ],
        ),
        Positioned(
            left: 28,
            bottom: 10,
            child: BorderedText(
              strokeWidth: 6,
              strokeColor: Colors.white,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 120,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              ),
            ))
      ],
    );
  }
}
