import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixclone/application/fast_lauhg/fastlaughs_bloc.dart';
import 'package:netflixclone/application/search/searchevent_bloc.dart';
import 'package:netflixclone/presentation/fastlaughs/widgets/videolistitem.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughsBloc>(context)
          .add(const FastlaughsEvent.initialize());
    });
    return Scaffold(
      body: SafeArea(child: Scaffold(
        body: BlocBuilder<FastlaughsBloc, FastlaughsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Text("error while getting data");
            } else if (state.videoList.isEmpty) {
              return const Center(child: Text("list is emty"));
            }
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(state.videoList.length, (index) {
                return VideoListInheritedWidget(
                    widget:
                        VideoListItem(key: Key(index.toString()), index: index),
                    movieData: state.videoList[index]);
              }),
            );
          },
        ),
      )),
    );
  }
}
