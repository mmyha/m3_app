import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_stroke_repository.dart';

/**
 * マップの手書きの線を全て削除
 */
class ClearMapStrokesUseCase {
  ClearMapStrokesUseCase(this._mapStrokeRepository);
  final MapStrokeRepository _mapStrokeRepository;

  Future<Result<void, Exception>> call() async {
    try {
      final result = await _mapStrokeRepository.deleteAllMapStrokes();
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
