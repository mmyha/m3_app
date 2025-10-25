// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CircleApiResponse _$CircleApiResponseFromJson(Map<String, dynamic> json) =>
    _CircleApiResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => CircleModelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CircleApiResponseToJson(_CircleApiResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
