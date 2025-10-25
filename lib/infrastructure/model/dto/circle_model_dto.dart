import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/circle_model.dart';

part 'circle_model_dto.freezed.dart';
part 'circle_model_dto.g.dart';

@freezed
abstract class CircleModelDto with _$CircleModelDto {
  const factory CircleModelDto({
    required int id,
    required String name,
    required String phonetic,
    required String genre,
    @IntOrStringConverter() required int? spaceSize,
    required bool adult,
    required String prText,
    @Default(SnsLinksModel()) SnsLinksModel links, // nullable
    required List<KeywordModel> keywords,
    String? area,
    String? number,
    @Default(false) bool? isFavorite, // nullable
  }) = _CircleModelDto;
  factory CircleModelDto.fromJson(Map<String, dynamic> json) =>
      _$CircleModelDtoFromJson(json);
}
