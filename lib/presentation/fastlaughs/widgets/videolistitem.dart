import 'package:flutter/material.dart';
import 'package:netflixclone/application/fast_lauhg/fastlaughs_bloc.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w1280/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg';

class VideoListInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;
  const VideoListInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListInheritedWidget.of(context)?.movieData.posterpath;
    final videoUrl = videoUrls[index % videoUrls.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(.5),
                    radius: 30,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_mute,
                        ))),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: posterPath == null
                          ? null
                          : NetworkImage('$ImageappendUrl$posterPath'),
                    ),
                    VideoActionWidget(
                      icon: Icons.emoji_emotions,
                      title: 'LOL',
                    ),
                    VideoActionWidget(
                      icon: Icons.add,
                      title: 'My List',
                    ),
                    GestureDetector(
                      onTap: () {
                        final movieName = VideoListInheritedWidget.of(context)
                            ?.movieData
                            .posterpath;
                        if (movieName != null) {
                          Share.share(movieName);
                        }
                      },
                      child: VideoActionWidget(
                        icon: Icons.share,
                        title: 'Share',
                      ),
                    ),
                    VideoActionWidget(
                      icon: Icons.play_arrow,
                      title: 'Play',
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(color: kwhitecolor, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer(
      {Key? key, required this.videoUrl, required this.onStateChanged})
      : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((_) => setState(() {}));

    _videoPlayerController.play();
    //_videoPlayerController.setLooping(false);
  }

  @override
  Widget build(BuildContext context) {
    print(_videoPlayerController.value.toString());
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
