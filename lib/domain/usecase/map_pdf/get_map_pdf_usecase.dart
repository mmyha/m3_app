import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_pdf_repository.dart';

class GetMapPdfUseCase {
  GetMapPdfUseCase(this._mapPdfRepository);
  final MapPdfRepository _mapPdfRepository;

  Future<Result<String, Exception>> call() async {
    try {
      final file = await _mapPdfRepository.getMapPdf();
      return Success(file);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
