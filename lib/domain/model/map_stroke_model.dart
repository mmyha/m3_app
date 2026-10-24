import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_stroke_model.freezed.dart';

/// マップへの手書きの線
///
/// 座標と線幅はページサイズに対する割合(0〜1)で持つため、ズームしても地図とずれない
@freezed
abstract class MapStrokeModel with _$MapStrokeModel {
  const factory MapStrokeModel({
    int? id, // 保存前はnull
    required int pageNumber,
    required int color, // ARGB
    required double width, // ページ幅に対する割合
    required List<Offset> points,
    // 消しゴムなら、それより前に描いた線を消す
    @Default(false) bool isEraser,
  }) = _MapStrokeModel;
}
