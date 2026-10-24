import 'package:flutter_test/flutter_test.dart';
import 'package:m3_app/core/utils/result.dart';
import 'package:m3_app/domain/usecase/map_pdf/get_map_pdf_usecase.dart';
import 'package:m3_app/infrastructure/repository/map_pdf_repository.dart';
import 'package:m3_app/infrastructure/repository/map_stroke_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'map_pdf_usecase_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<MapPdfRepository>(),
  MockSpec<MapStrokeRepository>(),
])
void main() {
  late MockMapPdfRepository mockMapPdfRepository;
  late MockMapStrokeRepository mockMapStrokeRepository;
  late GetMapPdfUseCase useCase;

  setUp(() {
    mockMapPdfRepository = MockMapPdfRepository();
    mockMapStrokeRepository = MockMapStrokeRepository();
    useCase = GetMapPdfUseCase(mockMapPdfRepository, mockMapStrokeRepository);
  });

  group('GetMapPdfUseCase', () {
    test('新しくダウンロードしたら書き込みを削除する', () async {
      when(mockMapPdfRepository.getMapPdf()).thenAnswer(
        (_) async => (filePath: 'm3_map_2026f.pdf', isDownloaded: true),
      );

      final result = await useCase.call();

      expect(result, isA<Success<String, Exception>>());
      expect((result as Success<String, Exception>).value, 'm3_map_2026f.pdf');
      verify(mockMapStrokeRepository.deleteAllMapStrokes()).called(1);
    });

    test('保存済みのマップなら書き込みを残す', () async {
      when(mockMapPdfRepository.getMapPdf()).thenAnswer(
        (_) async => (filePath: 'm3_map_2026f.pdf', isDownloaded: false),
      );

      final result = await useCase.call();

      expect(result, isA<Success<String, Exception>>());
      verifyNever(mockMapStrokeRepository.deleteAllMapStrokes());
    });

    test('取得に失敗したらFailure', () async {
      when(mockMapPdfRepository.getMapPdf()).thenThrow(Exception('error'));

      final result = await useCase.call();

      expect(result, isA<Failure<String, Exception>>());
      verifyNever(mockMapStrokeRepository.deleteAllMapStrokes());
    });
  });
}
