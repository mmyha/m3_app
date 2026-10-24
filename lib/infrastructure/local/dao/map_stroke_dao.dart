import 'dart:convert';
import 'dart:ui';

import '../../../domain/model/map_stroke_model.dart';
import '../db/circle_database.dart';

class MapStrokeDao {
  MapStrokeDao(this.db);
  final CircleDatabase db;

  Future<List<MapStrokeModel>> getAllMapStrokes() async {
    final data = await db.getAllMapStrokes();

    final modelList = data.map((stroke) {
      return MapStrokeModel(
        id: stroke.id,
        pageNumber: stroke.pageNumber,
        color: stroke.color,
        width: stroke.width,
        points: _decodePoints(stroke.points),
        isEraser: stroke.isEraser,
      );
    }).toList();

    return modelList;
  }

  /// 保存したIDを返す
  Future<int> addMapStroke({required MapStrokeModel stroke}) async {
    final id = await db.addMapStroke(
      stroke: stroke,
      points: _encodePoints(stroke.points),
    );
    return id;
  }

  Future<void> deleteMapStrokes({required List<int> ids}) async {
    await db.deleteMapStrokes(ids: ids);
  }

  Future<void> deleteAllMapStrokes() async {
    await db.deleteAllMapStrokes();
  }

  String _encodePoints(List<Offset> points) {
    return jsonEncode([
      for (final point in points) ...[point.dx, point.dy],
    ]);
  }

  List<Offset> _decodePoints(String json) {
    final values = (jsonDecode(json) as List<dynamic>).cast<num>();
    return [
      for (var i = 0; i + 1 < values.length; i += 2)
        Offset(values[i].toDouble(), values[i + 1].toDouble()),
    ];
  }
}
