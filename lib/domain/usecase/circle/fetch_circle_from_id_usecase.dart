import 'package:m3_app/core/utils/result.dart';
import 'package:m3_app/domain/model/circle_model.dart';

import '../../../infrastructure/repository/circle_repository.dart';

class FetchCircleFromIdUseCase {
  FetchCircleFromIdUseCase(this._circleRepository);
  final CircleRepository _circleRepository;

  Future<Result<CircleModel, Exception>> call(int circleId) async {
    try {
      final result = await _circleRepository.fetchCircleFromId(circleId);
      return Success(result);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
