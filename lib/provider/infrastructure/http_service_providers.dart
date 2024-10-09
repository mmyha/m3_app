import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastracture/http/circle_api/circle_api_service.dart';
import '../common/dio/dio_provider.dart';

final circleApiServiceProvider = Provider<CircleApiService>((ref) {
  final dio = ref.read(dioProvider);
  return CircleApiService(dio);
});
