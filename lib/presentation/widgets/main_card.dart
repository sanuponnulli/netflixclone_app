import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';

class MainCardForHome extends StatelessWidget {
  const MainCardForHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: kradius10,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.themoviedb.org/t/p/w1280/5HruMN0vvl84AqD7sCDXFNO4RhP.jpg',
              ))),
    );
  }
}
