import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle_model.freezed.dart';
part 'circle_model.g.dart';

@freezed
class CircleModel with _$CircleModel {
  const factory CircleModel({
    required int id,
    required String name,
    required String phonetic,
    required String genre,
    @IntOrStringConverter() required int? spaceSize,
    required bool adult,
    required String prText,
    @Default(SnsLinksModel()) SnsLinksModel links, // nullable
    required List<KeywordModel> keywords,
    RealSpModel? realSp, // nullable
    WebSpModel? webSp,
    @Default(false) bool? isFavorite, // nullable
  }) = _CircleModel;
  factory CircleModel.fromJson(Map<String, dynamic> json) =>
      _$CircleModelFromJson(json);
}

@freezed
class SnsLinksModel with _$SnsLinksModel {
  const factory SnsLinksModel({
    SocialLink? site, // nullable
    SocialLink? twitter, // nullable
    SocialLink? youtube, // nullable
    SocialLink? sns, // nullable
  }) = _SnsLinksModel;

  factory SnsLinksModel.fromJson(Map<String, dynamic> json) =>
      _$SnsLinksModelFromJson(json);
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
class KeywordModel with _$KeywordModel {
  const factory KeywordModel({
    required String text,
    required String phonetic,
  }) = _KeywordModel;

  factory KeywordModel.fromJson(Map<String, dynamic> json) =>
      _$KeywordModelFromJson(json);
}

@freezed
class RealSpModel with _$RealSpModel {
  const factory RealSpModel({
    String? area, // nullable
    String? no, // nullable
  }) = _RealSpModel;

  factory RealSpModel.fromJson(Map<String, dynamic> json) =>
      _$RealSpModelFromJson(json);
}

@freezed
class WebSpModel with _$WebSpModel {
  const factory WebSpModel({
    required String area,
    required String no,
  }) = _WebSpModel;

  factory WebSpModel.fromJson(Map<String, dynamic> json) =>
      _$WebSpModelFromJson(json);
}

class IntOrStringConverter implements JsonConverter<int?, dynamic> {
  const IntOrStringConverter();

  @override
  int? fromJson(dynamic json) {
    if (json == null) {
      return null;
    } else if (json is int) {
      return json;
    } else if (json is String) {
      return int.tryParse(json) ?? 0;
    } else {
      throw Exception('Invalid type for int conversion ${json.runtimeType}');
    }
  }

  @override
  dynamic toJson(int? object) => object;
}
