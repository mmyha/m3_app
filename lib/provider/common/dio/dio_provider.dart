import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/core/dio/custom_dio.dart';

final dioProvider = Provider<Dio>((ref) => MyDio());
