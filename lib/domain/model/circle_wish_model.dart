import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle_wish_model.freezed.dart';

@freezed
abstract class CircleWishModel with _$CircleWishModel {
  const factory CircleWishModel({
    required int circleId,
    required String name,
    required String spaceName,
    required bool isFavorite,
    required bool isDone,
    required int amount,
    required String memo,
  }) = _CircleWishModel;
}
