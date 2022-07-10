part of 'searchevent_bloc.dart';

@freezed
class SearcheventState with _$SearcheventState {
  const factory SearcheventState({
    required List<SearchResulstData> searchResultList,
    required List<Downloads> IdleList,
    required bool isLoading,
    required bool isError,
  }) = _SearcheventState;

  factory SearcheventState.initial() => SearcheventState(
      IdleList: [], searchResultList: [], isLoading: false, isError: false);
}
