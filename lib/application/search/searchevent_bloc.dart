import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixclone/domain/core/failures/downloads_failures.dart';
import 'package:netflixclone/domain/downloads/models/downloads.dart';
import 'package:netflixclone/domain/downloads/models/i_downloadsrepo.dart';
import 'package:netflixclone/domain/search/search_service.dart';

import '../../domain/search/model/search_response/search_response.dart';

part 'searchevent_event.dart';
part 'searchevent_state.dart';
part 'searchevent_bloc.freezed.dart';

@injectable
class SearcheventBloc extends Bloc<SearcheventEvent, SearcheventState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearcheventBloc(this._downloadsService, this._searchService)
      : super(SearcheventState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.IdleList.isNotEmpty) {
        emit(
          SearcheventState(
              searchResultList: [],
              IdleList: state.IdleList,
              isLoading: false,
              isError: false),
        );
      }
      emit(
        SearcheventState(
            searchResultList: [],
            IdleList: [],
            isLoading: true,
            isError: false),
      );
      //get trending
      final _result = await _downloadsService.getDownloadsImages();
      final _state = _result.fold(
        (Mainfailure f) {
          emit(
            const SearcheventState(
                searchResultList: [],
                IdleList: [],
                isLoading: false,
                isError: true),
          );
        },
        (List<Downloads> list) {
          emit(
            SearcheventState(
                searchResultList: [],
                IdleList: list,
                isLoading: false,
                isError: false),
          );
        },
      );

      //show to ui
      emit(_state);
    });
    on<_Searchmovie>((event, emit) async {
      //call search movie api
      emit(const SearcheventState(
          IdleList: [], isError: false, isLoading: true, searchResultList: []));
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final _state = _result.fold((Mainfailure f) {
        return const SearcheventState(
            searchResultList: [],
            IdleList: [],
            isLoading: false,
            isError: true);
      }, (SearchResponse r) {
        return SearcheventState(
            searchResultList: r.results!,
            IdleList: [],
            isLoading: false,
            isError: false);
      });

      //show to ui
      emit(_state);
    });
  }
}
