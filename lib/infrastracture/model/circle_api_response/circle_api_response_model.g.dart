// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CircleApiResponseImpl _$$CircleApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CircleApiResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CircleApiResponseImplToJson(
        _$CircleApiResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phonetic: json['phonetic'] as String,
      genre: json['genre'] as String,
      spaceSize: (json['spaceSize'] as num).toInt(),
      adult: json['adult'] as bool,
      prText: json['prText'] as String,
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => Keyword.fromJson(e as Map<String, dynamic>))
          .toList(),
      realSp: json['realSp'] == null
          ? null
          : RealSp.fromJson(json['realSp'] as Map<String, dynamic>),
      webSp: json['webSp'] == null
          ? null
          : WebSp.fromJson(json['webSp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
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
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
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

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
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

_$KeywordImpl _$$KeywordImplFromJson(Map<String, dynamic> json) =>
    _$KeywordImpl(
      text: json['text'] as String,
      phonetic: json['phonetic'] as String,
    );

Map<String, dynamic> _$$KeywordImplToJson(_$KeywordImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'phonetic': instance.phonetic,
    };

_$RealSpImpl _$$RealSpImplFromJson(Map<String, dynamic> json) => _$RealSpImpl(
      area: json['area'] as String?,
      no: json['no'] as String?,
    );

Map<String, dynamic> _$$RealSpImplToJson(_$RealSpImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'no': instance.no,
    };

_$WebSpImpl _$$WebSpImplFromJson(Map<String, dynamic> json) => _$WebSpImpl(
      area: json['area'] as String,
      no: json['no'] as String,
    );

Map<String, dynamic> _$$WebSpImplToJson(_$WebSpImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'no': instance.no,
    };
