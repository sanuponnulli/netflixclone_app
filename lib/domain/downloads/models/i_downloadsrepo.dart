import 'package:dartz/dartz.dart';
import 'package:netflixclone/domain/core/failures/downloads_failures.dart';
import 'package:netflixclone/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<Mainfailure, List<Downloads>>> getDownloadsImages();
}
