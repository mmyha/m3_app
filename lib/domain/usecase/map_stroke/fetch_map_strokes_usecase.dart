import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_stroke_repository.dart';
import '../../model/map_stroke_model.dart';

/**
 * マップの手書きの線を取得
 */
class FetchMapStrokesUseCase {
  FetchMapStrokesUseCase(this._mapStrokeRepository);
  final MapStrokeRepository _mapStrokeRepository;

  Future<Result<List<MapStrokeModel>, Exception>> call() async {
    try {
      final result = await _mapStrokeRepository.getAllMapStrokes();
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
