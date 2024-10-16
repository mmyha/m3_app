import 'package:m3_app/domain/model/circle_wish_model.dart';

import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/circle_repository.dart';
import '../../../infrastructure/repository/wish_list_repository.dart';

/**
 * ウィッシュリストに追加、サークルDBのお気に入りを更新
 */
class AddWishListUseCase {
  AddWishListUseCase(this._wishListRepository, this._circleRepository);
  final WishListRepository _wishListRepository;
  final CircleRepository _circleRepository;

  Future<Result<void, Exception>> call(CircleWishModel wish) async {
    try {
      final result = await _updateDB(wish);
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<void> _updateDB(CircleWishModel wish) async {
    try {
      await _wishListRepository.addCircleFav(wish);
      await _circleRepository.updateCircleFavorite(
        circleId: wish.circleId,
        isFav: true,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }
}
