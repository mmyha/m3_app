import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'map_api_service.g.dart';

@RestApi()
// ignore: one_member_abstracts
abstract class MapApiService {
  factory MapApiService(Dio dio, {String baseUrl}) = _MapApiService;

  @GET('/m3_55/M3tuushin55map_web.pdf')
  @DioResponseType(ResponseType.bytes)
  Future<HttpResponse<List<int>>> downloadPdf();
}
