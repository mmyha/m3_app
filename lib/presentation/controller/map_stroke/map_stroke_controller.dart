import 'package:m3_app/domain/model/map_stroke_model.dart';
import 'package:m3_app/provider/usecase/usecase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/result.dart';

part 'map_stroke_controller.g.dart';

@riverpod
class MapStrokeController extends _$MapStrokeController {
  @override
  FutureOr<List<MapStrokeModel>> build() {
    state = const AsyncValue.loading();
    return _fetch();
  }

  Future<void> add(MapStrokeModel stroke) async {
    final current = state.value ?? [];
    // 保存完了を待つと描いた線が一瞬消えるので、先に表示へ反映する
    state = AsyncValue.data([...current, stroke]);

    final useCase = ref.read(addMapStrokeUseCaseProvider);
    final result = await useCase.call(stroke);
    switch (result) {
      case Success<int, Exception>():
        state = AsyncValue.data([
          ...current,
          stroke.copyWith(id: result.value),
        ]);
      case Failure<int, Exception>():
        state = AsyncValue.data(current);
        throw result.exception;
    }
  }

  /// 最後に描いた線を取り消す
  Future<void> undo() async {
    final current = state.value ?? [];
    final last = current.lastOrNull;
    // 保存中の線はIDがないので取り消さない
    if (last == null || last.id == null) {
      return;
    }

    final useCase = ref.read(deleteMapStrokeUseCaseProvider);
    final result = await useCase.call(last.id!);
    switch (result) {
      case Success<void, Exception>():
        state = AsyncValue.data(current.sublist(0, current.length - 1));
      case Failure<void, Exception>():
        throw result.exception;
    }
  }

  Future<void> clear() async {
    final useCase = ref.read(clearMapStrokesUseCaseProvider);
    final result = await useCase.call();
    switch (result) {
      case Success<void, Exception>():
        state = const AsyncValue.data([]);
      case Failure<void, Exception>():
        throw result.exception;
    }
  }

  Future<List<MapStrokeModel>> _fetch() async {
    final useCase = ref.read(fetchMapStrokesUseCaseProvider);
    final result = await useCase.call();
    switch (result) {
      case Success<List<MapStrokeModel>, Exception>():
        return result.value;
      case Failure<List<MapStrokeModel>, Exception>():
        throw result.exception;
    }
  }
}
