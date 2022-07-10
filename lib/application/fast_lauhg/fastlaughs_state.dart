part of 'fastlaughs_bloc.dart';

@freezed
class FastlaughsState with _$FastlaughsState {
  const factory FastlaughsState(
      {required List<Downloads> videoList,
      required bool isLoading,
      required bool isError}) = _Initial;

  factory FastlaughsState.initial() =>
      const FastlaughsState(videoList: [], isLoading: true, isError: false);
}
