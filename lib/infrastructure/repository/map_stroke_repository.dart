import '../../domain/model/map_stroke_model.dart';
import '../local/dao/map_stroke_dao.dart';

class MapStrokeRepository {
  const MapStrokeRepository(this._dao);
  final MapStrokeDao _dao;

  Future<List<MapStrokeModel>> getAllMapStrokes() async {
    try {
      final data = await _dao.getAllMapStrokes();
      return data;
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<int> addMapStroke(MapStrokeModel stroke) async {
    try {
      final id = await _dao.addMapStroke(stroke: stroke);
      return id;
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<void> deleteMapStroke(int id) async {
    try {
      await _dao.deleteMapStroke(id: id);
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<void> deleteAllMapStrokes() async {
    try {
      await _dao.deleteAllMapStrokes();
    } on Exception catch (_) {
      rethrow;
    }
  }
}
