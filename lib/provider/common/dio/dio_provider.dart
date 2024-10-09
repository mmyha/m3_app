import 'package:dio/dio.dart';
import 'package:m3_app/core/dio/custom_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final dioProvider = Provider<Dio>((_) => MyDio());
