import 'package:m3_app/domain/model/circle_wish_model.dart';

import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/wish_list_repository.dart';

/**
 * ウィッシュリストを取得
 */
class FetchWishListUseCase {
  FetchWishListUseCase(this._wishListRepository);
  final WishListRepository _wishListRepository;

  Future<Result<List<CircleWishModel>, Exception>> call() async {
    try {
      final result = await _wishListRepository.getAllCircleFav();
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
