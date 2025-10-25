// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CircleModelDto _$CircleModelDtoFromJson(Map<String, dynamic> json) =>
    _CircleModelDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phonetic: json['phonetic'] as String,
      genre: json['genre'] as String,
      spaceSize: const IntOrStringConverter().fromJson(json['spaceSize']),
      adult: json['adult'] as bool,
      prText: json['prText'] as String,
      links: json['links'] == null
          ? const SnsLinksModel()
          : SnsLinksModel.fromJson(json['links'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => KeywordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      area: json['area'] as String?,
      number: json['number'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$CircleModelDtoToJson(_CircleModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phonetic': instance.phonetic,
      'genre': instance.genre,
      'spaceSize': const IntOrStringConverter().toJson(instance.spaceSize),
      'adult': instance.adult,
      'prText': instance.prText,
      'links': instance.links,
      'keywords': instance.keywords,
      'area': instance.area,
      'number': instance.number,
      'isFavorite': instance.isFavorite,
    };
