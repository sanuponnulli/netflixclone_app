import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: 'results')
  List<SearchResulstData>? results;

  SearchResponse({
    this.results = const [],
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class SearchResulstData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchResulstData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchResulstData.fromJson(Map<String, dynamic> json) {
    return _$SearchResulstDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResulstDataToJson(this);
}
