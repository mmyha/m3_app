import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle_api_response_model.freezed.dart';
part 'circle_api_response_model.g.dart';

@freezed
class CircleApiResponse with _$CircleApiResponse {
  const factory CircleApiResponse({
    required List<Item> items,
  }) = _CircleApiResponse;

  factory CircleApiResponse.fromJson(Map<String, dynamic> json) =>
      _$CircleApiResponseFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required int id,
    required String name,
    required String phonetic,
    required String genre,
    required int spaceSize,
    required bool adult,
    required String prText,
    Links? links, // nullable
    required List<Keyword> keywords,
    RealSp? realSp, // nullable
    WebSp? webSp,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    SocialLink? site, // nullable
    SocialLink? twitter, // nullable
    SocialLink? youtube, // nullable
    SocialLink? sns, // nullable
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class SocialLink with _$SocialLink {
  const factory SocialLink({
    required String text,
    required String url,
  }) = _SocialLink;

  factory SocialLink.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkFromJson(json);
}

@freezed
class Keyword with _$Keyword {
  const factory Keyword({
    required String text,
    required String phonetic,
  }) = _Keyword;

  factory Keyword.fromJson(Map<String, dynamic> json) =>
      _$KeywordFromJson(json);
}

@freezed
class RealSp with _$RealSp {
  const factory RealSp({
    String? area, // nullable
    String? no, // nullable
  }) = _RealSp;

  factory RealSp.fromJson(Map<String, dynamic> json) => _$RealSpFromJson(json);
}

@freezed
class WebSp with _$WebSp {
  const factory WebSp({
    required String area,
    required String no,
  }) = _WebSp;

  factory WebSp.fromJson(Map<String, dynamic> json) => _$WebSpFromJson(json);
}
