import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/infrastructure/repository/circle_repository.dart';
import 'package:m3_app/provider/infrastructure/dao_provider.dart';
import 'package:m3_app/provider/infrastructure/http_service_providers.dart';

import '../wish_list_repository.dart';

final circleRepositoryProvider = Provider<CircleRepository>(
  (ref) => CircleRepository(
    ref.read(circleApiServiceProvider),
    ref.read(circleDaoProvider),
  ),
);

final wishListRepositoryProvider = Provider<WishListRepository>(
  (ref) => WishListRepository(
    ref.read(circleFavDaoProvider),
  ),
);
