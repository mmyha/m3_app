import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_stroke_repository.dart';
import '../../model/map_stroke_model.dart';

/**
 * マップの手書きの線を保存し、IDを返す
 */
class AddMapStrokeUseCase {
  AddMapStrokeUseCase(this._mapStrokeRepository);
  final MapStrokeRepository _mapStrokeRepository;

  Future<Result<int, Exception>> call(MapStrokeModel stroke) async {
    try {
      final result = await _mapStrokeRepository.addMapStroke(stroke);
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
