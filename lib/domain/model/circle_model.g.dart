// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SnsLinksModel _$SnsLinksModelFromJson(Map<String, dynamic> json) =>
    _SnsLinksModel(
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

Map<String, dynamic> _$SnsLinksModelToJson(_SnsLinksModel instance) =>
    <String, dynamic>{
      'site': instance.site,
      'twitter': instance.twitter,
      'youtube': instance.youtube,
      'sns': instance.sns,
    };

_SocialLink _$SocialLinkFromJson(Map<String, dynamic> json) => _SocialLink(
      text: json['text'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$SocialLinkToJson(_SocialLink instance) =>
    <String, dynamic>{
      'text': instance.text,
      'url': instance.url,
    };

_KeywordModel _$KeywordModelFromJson(Map<String, dynamic> json) =>
    _KeywordModel(
      text: json['text'] as String,
      phonetic: json['phonetic'] as String,
    );

Map<String, dynamic> _$KeywordModelToJson(_KeywordModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'phonetic': instance.phonetic,
    };

_RealSpModel _$RealSpModelFromJson(Map<String, dynamic> json) => _RealSpModel(
      area: json['area'] as String?,
      no: json['no'] as String?,
    );

Map<String, dynamic> _$RealSpModelToJson(_RealSpModel instance) =>
    <String, dynamic>{
      'area': instance.area,
      'no': instance.no,
    };

_WebSpModel _$WebSpModelFromJson(Map<String, dynamic> json) => _WebSpModel(
      area: json['area'] as String,
      no: json['no'] as String,
    );

Map<String, dynamic> _$WebSpModelToJson(_WebSpModel instance) =>
    <String, dynamic>{
      'area': instance.area,
      'no': instance.no,
    };
