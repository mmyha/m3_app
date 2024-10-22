import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/circle_repository.dart';
import '../../../infrastructure/repository/wish_list_repository.dart';

class DeleteWishUseCase {
  const DeleteWishUseCase(this._wishListRepository, this._circleRepository);
  final WishListRepository _wishListRepository;
  final CircleRepository _circleRepository;

  /**
   * ウィッシュリストから削除
   */
  Future<Result<void, Exception>> call(int circleId) async {
    try {
      final result = await _wishListRepository.deleteCircleFav(circleId);
      await _circleRepository.updateCircleFavorite(
        circleId: circleId,
        isFav: false,
      );
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
