import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixclone/application/search/searchevent_bloc.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/search/widgets/title.dart';

// const imageurl =
//     'https://www.themoviedb.org/t/p/w1280/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg';

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
          child: BlocBuilder<SearcheventBloc, SearcheventState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("error getting data"),
                );
              } else if (state.IdleList.isEmpty) {
                return const Center(
                  child: Text("list is empty"),
                );
              }
              return ListView.separated(
                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  itemBuilder: ((ctx, index) {
                    final movie = state.IdleList[index];
                    return TopSearchItemField(
                      imageUrl: '$ImageappendUrl${movie.posterpath}',
                      title: movie.title ?? "No Title provided",
                    );
                  }),
                  separatorBuilder: (ctx, index) => kheight,
                  itemCount: state.IdleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemField extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemField(
      {Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * .35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        Expanded(
            child: Text(
          title,
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
