import 'package:freezed_annotation/freezed_annotation.dart';

import 'circle_model.dart';

part 'circle_wish_model.freezed.dart';

@freezed
class CircleWishModel with _$CircleWishModel {
  const factory CircleWishModel({
    required CircleModel circle,
    required bool isDone,
    required int amount,
    required String memo,
  }) = _CircleWishModel;
}
