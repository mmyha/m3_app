import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/http/map_pdf_api/map_api_service.dart';
import '../common/dio/dio_provider.dart';

final mapPdfServiceProvider = Provider<MapApiService>((ref) {
  final dio = ref.read(dioProvider);
  return MapApiService(
    dio,
    baseUrl: dotenv.get('M3_MAP_URL'),
  );
});
