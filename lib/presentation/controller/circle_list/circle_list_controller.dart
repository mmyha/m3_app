import 'package:m3_app/domain/model/circle_model.dart';
import 'package:m3_app/provider/usecase/usecase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/result.dart';

part 'circle_list_controller.g.dart';

@riverpod
class CircleListController extends _$CircleListController {
  @override
  FutureOr<List<CircleModel>> build() {
    state = const AsyncValue.loading();
    return _fetchCircleInfoFromDB();
  }

  // リストを更新するためのメソッド
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetchCircleInfoFromDB);
  }

  Future<void> updateFavorite(CircleModel circle) async {
    final addWishListUseCase = ref.read(addWishListUseCaseProvider);
    final deleteWishUseCase = ref.read(deleteWishUseCaseProvider);

    switch (circle.isFavorite!) {
      case true:
        final result = await deleteWishUseCase.call(circle.id);
        switch (result) {
          case Success<void, Exception>():
            break;
          case Failure<void, Exception>():
            throw result.exception;
        }
      case false:
        final result = await addWishListUseCase.call(circle);
        switch (result) {
          case Success<void, Exception>():
            break;
          case Failure<void, Exception>():
            throw result.exception;
        }
        final newCircle = circle.copyWith(isFavorite: !circle.isFavorite!);
        state = state.whenData(
          (circles) =>
              [...circles.map((e) => e.id == circle.id ? newCircle : e)],
        );
    }
  }

  Future<List<CircleModel>> _fetchCircleInfoFromDB() async {
    final useCase = ref.read(fetchCircleUseCaseProvider);
    final result = await useCase.call();

    switch (result) {
      case Success<List<CircleModel>, Exception>():
        return result.value;
      case Failure<List<CircleModel>, Exception>():
        throw result.exception;
    }
  }
}
