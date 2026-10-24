import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_space_repository.dart';
import '../../model/map_space_model.dart';

/**
 * マップ上のスペースの位置を取得
 */
class FetchMapSpacesUseCase {
  FetchMapSpacesUseCase(this._mapSpaceRepository);
  final MapSpaceRepository _mapSpaceRepository;

  Future<Result<Map<String, MapSpaceModel>, Exception>> call() async {
    try {
      final result = await _mapSpaceRepository.getMapSpaces();
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
