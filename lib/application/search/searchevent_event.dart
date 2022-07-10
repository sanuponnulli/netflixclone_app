part of 'searchevent_bloc.dart';

@freezed
class SearcheventEvent with _$SearcheventEvent {
  const factory SearcheventEvent.initialize() = Initialize;
  const factory SearcheventEvent.searchmovie({required String movieQuery}) =
      _Searchmovie;
}
