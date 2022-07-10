import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixclone/domain/downloads/models/downloads.dart';
import 'package:netflixclone/domain/downloads/models/i_downloadsrepo.dart';

part 'fastlaughs_event.dart';
part 'fastlaughs_state.dart';
part 'fastlaughs_bloc.freezed.dart';

final videoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
];

@injectable
class FastlaughsBloc extends Bloc<FastlaughsEvent, FastlaughsState> {
  FastlaughsBloc(
    IDownloadsRepo _downloadsservice,
  ) : super(FastlaughsState.initial()) {
    on<_Initialize>((event, emit) async {
      emit(
        const FastlaughsState(
          videoList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result = await _downloadsservice.getDownloadsImages();
      final _state = _result.fold((l) {
        return const FastlaughsState(
          videoList: [],
          isLoading: false,
          isError: true,
        );
      }, (r) {
        return FastlaughsState(
          videoList: r,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
    });
  }
}
