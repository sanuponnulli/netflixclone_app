import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixclone/application/downloads/downloads_bloc.dart';
import 'package:netflixclone/application/search/searchevent_bloc.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/domain/core/debouncer/debouncer.dart';
import 'package:netflixclone/presentation/search/widgets/search%20resultwidhet.dart';
import 'package:netflixclone/presentation/search/widgets/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({Key? key}) : super(key: key);
  final debouncer = Debouncer(milliseconds: 1000);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearcheventBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            backgroundColor: Colors.grey.withOpacity(.3),
            style: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            onChanged: (value) {
              if (value.isEmpty) {
                return;
              }
              debouncer.run(() {
                BlocProvider.of<SearcheventBloc>(context)
                    .add(SearcheventEvent.searchmovie(movieQuery: value));
              });
            },
          ),
          kheight,
          Expanded(child: BlocBuilder<SearcheventBloc, SearcheventState>(
            builder: (context, state) {
              if (state.searchResultList.isEmpty) {
                return Searchidlewidget();
              } else {
                return SearchResultWidget();
              }
              // return Container();
            },
          ))
        ],
      )),
    );
  }
}
