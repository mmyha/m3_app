import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/wish_list_repository.dart';

class DeleteWishUseCase {
  const DeleteWishUseCase(this._wishListRepository);
  final WishListRepository _wishListRepository;

  /**
   * ウィッシュリストから削除
   */
  Future<Result<void, Exception>> call(int circleId) async {
    try {
      final result = await _wishListRepository.deleteCircleFav(circleId);
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
