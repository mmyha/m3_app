import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/domain/usecase/circle/save_circle_to_db_usecase.dart';
import 'package:m3_app/domain/usecase/wish_list/delete_wish_usecase.dart';

import '../../domain/usecase/circle/fetch_circle_usecase.dart';
import '../../domain/usecase/wish_list/add_wish_list_usecase.dart';
import '../../domain/usecase/wish_list/fetch_wish_list_usecase.dart';
import '../../domain/usecase/wish_list/update_wish_list_usecase.dart';
import '../../infrastructure/repository/provider/repository_providers.dart';

final fetchCircleUseCaseProvider =
    Provider((ref) => FetchCircleUseCase(ref.read(circleRepositoryProvider)));

final saveCircleUseCaseProvider = Provider(
  (ref) => SaveCircleInfoToDBUseCase(ref.read(circleRepositoryProvider)),
);

final fetchWishListUseCaseProvider = Provider(
  (ref) => FetchWishListUseCase(
    ref.read(wishListRepositoryProvider),
  ),
);

final addWishListUseCaseProvider = Provider(
  (ref) => AddWishListUseCase(
    ref.read(wishListRepositoryProvider),
    ref.read(circleRepositoryProvider),
  ),
);

final deleteWishUseCaseProvider = Provider(
  (ref) => DeleteWishUseCase(
    ref.read(wishListRepositoryProvider),
    ref.read(circleRepositoryProvider),
  ),
);

final updateWishListUseCaseProvider = Provider(
  (ref) => UpdateWishListUseCase(
    ref.read(wishListRepositoryProvider),
  ),
);
