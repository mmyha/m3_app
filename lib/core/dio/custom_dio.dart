import 'dart:developer' as dev;

import 'package:dio/dio.dart';

/// カスタムDio
class MyDio with DioMixin implements Dio {
  factory MyDio() {
    if (_instance == null) {
      final dio = MyDio._()
        ..options = BaseOptions(
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Access-Control-Allow-Origin': '*',
          },
          // 接続タイムアウト、受信タイムアウト、送信タイムアウトを設定
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 20),
          sendTimeout: const Duration(seconds: 15),
        )
        ..interceptors.add(
          // Log表示
          LogInterceptor(
            logPrint: (object) => dev.log(
              '\x1B[32m$object\x1B[0m',
              name: '\x1B[32m If/Logger \x1B[0m',
            ),
          ),
        )
        ..httpClientAdapter = HttpClientAdapter();
      _instance = dio;
    }
    return _instance!;
  }
  MyDio._();
  static MyDio? _instance;
}
