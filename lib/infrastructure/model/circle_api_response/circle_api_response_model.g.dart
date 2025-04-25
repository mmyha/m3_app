// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CircleApiResponseImpl _$$CircleApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CircleApiResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => CircleModelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CircleApiResponseImplToJson(
        _$CircleApiResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
