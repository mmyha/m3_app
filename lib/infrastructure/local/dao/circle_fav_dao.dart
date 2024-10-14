import '../../../domain/model/circle_wish_model.dart';
import '../db/circle_database.dart';

class CircleFavDao {
  CircleFavDao(this.db);
  final CircleDatabase db;

  Future<void> addCircleFav({required CircleWishModel wish}) async {
    await db.addWish(wish: wish);
  }

  Future<void> deleteCircleFav({required int circleId}) async {
    await db.deleteWish(circleId: circleId);
  }

  Future<List<CircleWishModel>> getAllCircleFav() async {
    final data = await db.getAllWishes();

    final modelList = data.map((wish) {
      return CircleWishModel(
        circleId: wish.circleId,
        name: wish.circleName,
        spaceName: wish.space ?? '',
        isFavorite: wish.isFavorite,
        isDone: wish.done,
        amount: wish.amount,
        memo: wish.memo ?? '',
      );
    }).toList();

    return modelList;
  }

  Future<void> updateCircleFav({required CircleWishModel wish}) async {
    await db.updateWish(wish: wish);
  }
}
