import 'package:m3_app/provider/usecase/usecase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/result.dart';

part 'circle_map_controller.g.dart';

@riverpod
class CircleMapController extends _$CircleMapController {
  @override
  FutureOr<String> build() async {
    state = const AsyncValue.loading();

    return _fetch();
  }

  Future<String> _fetch() async {
    final useCase = ref.read(getMapPdfUseCaseProvider);
    final result = await useCase.call();
    switch (result) {
      case Success<String, Exception>():
        return result.value;
      case Failure<String, Exception>():
        throw result.exception;
    }
  }
}
