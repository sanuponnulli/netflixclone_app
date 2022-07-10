import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixclone/domain/core/api_endpoints.dart';
import 'package:netflixclone/domain/downloads/models/downloads.dart';
import 'package:netflixclone/domain/core/failures/downloads_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflixclone/domain/downloads/models/i_downloadsrepo.dart';

@LazySingleton(as: IDownloadsRepo)
class Downloadsrepository implements IDownloadsRepo {
  @override
  Future<Either<Mainfailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        print(downloadList);

        // final List<Downloads> downloadList = [];
        // for (final raw in response.data) {
        //   downloadList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        // }
        print(downloadList);
        return Right(downloadList);
      } else {
        return const Left(Mainfailure.serverfailure());
      }
    } catch (e) {
      return const Left(Mainfailure.clientfailure());
    }
  }
}
