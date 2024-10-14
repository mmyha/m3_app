import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m3_app/domain/model/circle_model.dart';

part 'circle_api_response_model.freezed.dart';
part 'circle_api_response_model.g.dart';

@freezed
class CircleApiResponse with _$CircleApiResponse {
  const factory CircleApiResponse({
    required List<CircleModel> items,
  }) = _CircleApiResponse;

  factory CircleApiResponse.fromJson(Map<String, dynamic> json) =>
      _$CircleApiResponseFromJson(json);
}
