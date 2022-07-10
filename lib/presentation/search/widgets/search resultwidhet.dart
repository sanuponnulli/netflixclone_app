import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixclone/application/search/searchevent_bloc.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/search/widgets/title.dart';

// const imageurl =
//     'https://www.themoviedb.org/t/p/w1280/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchtextTitle(
          title: 'Movies & TV',
        ),
        kheight,
        Expanded(
          child: BlocBuilder<SearcheventBloc, SearcheventState>(
            builder: (context, state) {
              return GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                childAspectRatio: 1 / 2,
                crossAxisSpacing: 8,
                shrinkWrap: true,
                children: List.generate(20, (index) {
                  final movie = state.searchResultList[index];

                  return MainCard(
                    imageUrl: '$ImageappendUrl${movie.posterPath}',
                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
