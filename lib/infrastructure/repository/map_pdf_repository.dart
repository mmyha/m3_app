import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../http/map_pdf_api/map_api_service.dart';

class MapPdfRepository {
  MapPdfRepository(this._mapApiService);
  final MapApiService _mapApiService;

  Future<String> getMapPdf() async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/m3_map.pdf';
    if (_checkIfFileExists(filePath)) {
      return filePath;
    } else {
      await _downloadPdf();
      return filePath;
    }
  }

  Future<void> _downloadPdf() async {
    try {
      final response = await _mapApiService.downloadPdf();
      await _savePdfLocal(response.data);
    } on Exception catch (_) {
      rethrow;
    }
    return;
  }

  Future<void> _savePdfLocal(List<int> res) async {
    // アプリケーションドキュメントディレクトリのパスを取得
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/m3_map.pdf';

    // ファイルに書き込み
    final file = File(filePath);
    await file.writeAsBytes(res);
  }

  bool _checkIfFileExists(String filePath) {
    final file = File(filePath);
    return file.existsSync();
  }
}
