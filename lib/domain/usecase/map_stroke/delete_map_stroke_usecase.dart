import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_stroke_repository.dart';

/**
 * マップの手書きの線を削除
 */
class DeleteMapStrokeUseCase {
  DeleteMapStrokeUseCase(this._mapStrokeRepository);
  final MapStrokeRepository _mapStrokeRepository;

  Future<Result<void, Exception>> call(int id) async {
    try {
      final result = await _mapStrokeRepository.deleteMapStroke(id);
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
