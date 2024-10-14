import 'package:dio/dio.dart';
import 'package:m3_app/infrastructure/model/circle_api_response/circle_api_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'circle_api_service.g.dart';

@RestApi()
// ignore: one_member_abstracts
abstract class CircleApiService {
  factory CircleApiService(Dio dio) = _CircleApiService;

  @GET('/{event}/resources/circles.json')
  Future<CircleApiResponse> getLatestEventCircles(@Path('event') String event);
}
