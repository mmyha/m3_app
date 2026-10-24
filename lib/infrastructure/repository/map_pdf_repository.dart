import 'dart:io';

import 'package:m3_app/core/constant/circle_event_name_const.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../http/map_pdf_api/map_api_service.dart';

class MapPdfRepository {
  MapPdfRepository(this._mapApiService);
  final MapApiService _mapApiService;

  // 開催ごとにファイルを分け、開催が変わったら新しいマップを取得する
  static const _fileNamePrefix = 'm3_map';
  static const _fileName =
      '${_fileNamePrefix}_${CircleEventNameConst.CURRENT_EVENT}.pdf';

  /// マップのファイルパスと、今回新しくダウンロードしたかを返す
  Future<({String filePath, bool isDownloaded})> getMapPdf() async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = p.join(directory.path, _fileName);
    if (_checkIfFileExists(filePath)) {
      return (filePath: filePath, isDownloaded: false);
    } else {
      await _downloadPdf(filePath);
      await _deleteOldPdfs(directory);
      return (filePath: filePath, isDownloaded: true);
    }
  }

  Future<void> _downloadPdf(String filePath) async {
    try {
      final response = await _mapApiService.downloadPdf();
      await _savePdfLocal(filePath, response.data);
    } on Exception catch (_) {
      rethrow;
    }
    return;
  }

  Future<void> _savePdfLocal(String filePath, List<int> res) async {
    // ファイルに書き込み
    final file = File(filePath);
    await file.writeAsBytes(res);
  }

  /// 前回までの開催のマップを削除
  Future<void> _deleteOldPdfs(Directory directory) async {
    final oldFiles = directory.listSync().whereType<File>().where((file) {
      final name = p.basename(file.path);
      return name.startsWith(_fileNamePrefix) &&
          name.endsWith('.pdf') &&
          name != _fileName;
    });
    for (final file in oldFiles) {
      await file.delete();
    }
  }

  bool _checkIfFileExists(String filePath) {
    final file = File(filePath);
    return file.existsSync();
  }
}
