import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixclone/domain/core/api_endpoints.dart';
import 'package:netflixclone/domain/search/model/search_response/search_response.dart';
import 'package:netflixclone/domain/core/failures/downloads_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflixclone/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<Mainfailure, SearchResponse>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {'query': movieQuery},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(Mainfailure.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(Mainfailure.clientfailure());
    }
  }
}
