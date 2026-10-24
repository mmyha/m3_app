import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_space_model.freezed.dart';

/// 番号が増える向き。a/b, x/y/z はこの向きに並ぶ
enum MapSpaceDirection { up, down, left, right }

/// マップ上のスペース(半分に分ける前の1スペース分)
@freezed
abstract class MapSpaceModel with _$MapSpaceModel {
  const factory MapSpaceModel({
    required int pageNumber,
    required Rect rect, // ページサイズに対する割合
    required MapSpaceDirection direction,
  }) = _MapSpaceModel;
}
