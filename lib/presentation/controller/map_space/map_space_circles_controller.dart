import 'package:m3_app/core/utils/map_space_util.dart';
import 'package:m3_app/domain/model/circle_model.dart';
import 'package:m3_app/provider/usecase/usecase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/result.dart';

part 'map_space_circles_controller.g.dart';

/// マップのスペース("A-01")ごとのサークル
@riverpod
class MapSpaceCirclesController extends _$MapSpaceCirclesController {
  @override
  FutureOr<Map<String, List<CircleModel>>> build() {
    state = const AsyncValue.loading();
    return _fetch();
  }

  Future<Map<String, List<CircleModel>>> _fetch() async {
    final useCase = ref.read(fetchCircleUseCaseProvider);
    final result = await useCase.call();
    switch (result) {
      case Success<List<CircleModel>, Exception>():
        return MapSpaceUtil.groupBySpace(result.value);
      case Failure<List<CircleModel>, Exception>():
        throw result.exception;
    }
  }
}
