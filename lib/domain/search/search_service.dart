import 'package:dartz/dartz.dart';
import 'package:netflixclone/domain/core/failures/downloads_failures.dart';
import 'package:netflixclone/domain/search/model/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<Mainfailure, SearchResponse>> searchMovies(
      {required String movieQuery});
}
