import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/provider/infrastructure/database_provider.dart';

import '../../infrastructure/local/dao/circle_dao.dart';
import '../../infrastructure/local/dao/circle_fav_dao.dart';

final circleDaoProvider =
    Provider<CircleInfoDao>((ref) => CircleInfoDao(ref.read(databaseProvider)));

final circleFavDaoProvider =
    Provider<CircleFavDao>((ref) => CircleFavDao(ref.read(databaseProvider)));
