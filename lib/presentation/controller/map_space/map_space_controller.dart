import 'package:m3_app/domain/model/map_space_model.dart';
import 'package:m3_app/provider/usecase/usecase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/result.dart';

part 'map_space_controller.g.dart';

@riverpod
class MapSpaceController extends _$MapSpaceController {
  @override
  FutureOr<Map<String, MapSpaceModel>> build() {
    state = const AsyncValue.loading();
    return _fetch();
  }

  Future<Map<String, MapSpaceModel>> _fetch() async {
    final useCase = ref.read(fetchMapSpacesUseCaseProvider);
    final result = await useCase.call();
    switch (result) {
      case Success<Map<String, MapSpaceModel>, Exception>():
        return result.value;
      case Failure<Map<String, MapSpaceModel>, Exception>():
        throw result.exception;
    }
  }
}
