import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/core/strings.dart';
import 'package:netflixclone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseurl/trending/all/day?api_key=$apikey";
  static const search = '$kbaseurl/search/movie?api_key=$apikey';
}
