import '../../../core/utils/result.dart';
import '../../../infrastructure/repository/map_pdf_repository.dart';
import '../../../infrastructure/repository/map_stroke_repository.dart';

class GetMapPdfUseCase {
  GetMapPdfUseCase(this._mapPdfRepository, this._mapStrokeRepository);
  final MapPdfRepository _mapPdfRepository;
  final MapStrokeRepository _mapStrokeRepository;

  Future<Result<String, Exception>> call() async {
    try {
      final result = await _mapPdfRepository.getMapPdf();
      // 新しい開催のマップには前回の書き込みを残さない
      if (result.isDownloaded) {
        await _mapStrokeRepository.deleteAllMapStrokes();
      }
      return Success(result.filePath);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
