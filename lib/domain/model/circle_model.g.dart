// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CircleModelImpl _$$CircleModelImplFromJson(Map<String, dynamic> json) =>
    _$CircleModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phonetic: json['phonetic'] as String,
      genre: json['genre'] as String,
      spaceSize: (json['spaceSize'] as num).toInt(),
      adult: json['adult'] as bool,
      prText: json['prText'] as String,
      links: json['links'] == null
          ? const SnsLinksModel()
          : SnsLinksModel.fromJson(json['links'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => KeywordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      realSp: json['realSp'] == null
          ? null
          : RealSpModel.fromJson(json['realSp'] as Map<String, dynamic>),
      webSp: json['webSp'] == null
          ? null
          : WebSpModel.fromJson(json['webSp'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$CircleModelImplToJson(_$CircleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phonetic': instance.phonetic,
      'genre': instance.genre,
      'spaceSize': instance.spaceSize,
      'adult': instance.adult,
      'prText': instance.prText,
      'links': instance.links,
      'keywords': instance.keywords,
      'realSp': instance.realSp,
      'webSp': instance.webSp,
      'isFavorite': instance.isFavorite,
    };

_$SnsLinksModelImpl _$$SnsLinksModelImplFromJson(Map<String, dynamic> json) =>
    _$SnsLinksModelImpl(
      site: json['site'] == null
          ? null
          : SocialLink.fromJson(json['site'] as Map<String, dynamic>),
      twitter: json['twitter'] == null
          ? null
          : SocialLink.fromJson(json['twitter'] as Map<String, dynamic>),
      youtube: json['youtube'] == null
          ? null
          : SocialLink.fromJson(json['youtube'] as Map<String, dynamic>),
      sns: json['sns'] == null
          ? null
          : SocialLink.fromJson(json['sns'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SnsLinksModelImplToJson(_$SnsLinksModelImpl instance) =>
    <String, dynamic>{
      'site': instance.site,
      'twitter': instance.twitter,
      'youtube': instance.youtube,
      'sns': instance.sns,
    };

_$SocialLinkImpl _$$SocialLinkImplFromJson(Map<String, dynamic> json) =>
    _$SocialLinkImpl(
      text: json['text'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SocialLinkImplToJson(_$SocialLinkImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'url': instance.url,
    };

_$KeywordModelImpl _$$KeywordModelImplFromJson(Map<String, dynamic> json) =>
    _$KeywordModelImpl(
      text: json['text'] as String,
      phonetic: json['phonetic'] as String,
    );

Map<String, dynamic> _$$KeywordModelImplToJson(_$KeywordModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'phonetic': instance.phonetic,
    };

_$RealSpModelImpl _$$RealSpModelImplFromJson(Map<String, dynamic> json) =>
    _$RealSpModelImpl(
      area: json['area'] as String?,
      no: json['no'] as String?,
    );

Map<String, dynamic> _$$RealSpModelImplToJson(_$RealSpModelImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'no': instance.no,
    };

_$WebSpModelImpl _$$WebSpModelImplFromJson(Map<String, dynamic> json) =>
    _$WebSpModelImpl(
      area: json['area'] as String,
      no: json['no'] as String,
    );

Map<String, dynamic> _$$WebSpModelImplToJson(_$WebSpModelImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'no': instance.no,
    };
