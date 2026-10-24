import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_stroke_repository.dart';

/**
 * マップの手書きの線を削除
 */
class DeleteMapStrokesUseCase {
  DeleteMapStrokesUseCase(this._mapStrokeRepository);
  final MapStrokeRepository _mapStrokeRepository;

  Future<Result<void, Exception>> call(List<int> ids) async {
    try {
      final result = await _mapStrokeRepository.deleteMapStrokes(ids);
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
