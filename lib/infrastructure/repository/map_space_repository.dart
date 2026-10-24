import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:m3_app/core/constant/circle_event_name_const.dart';

import '../../domain/model/map_space_model.dart';

/// マップ上のスペースの位置(tool/map_spaces で開催ごとに生成したもの)
class MapSpaceRepository {
  const MapSpaceRepository(this._bundle);
  final AssetBundle _bundle;

  static const _assetPath =
      'assets/map/spaces_${CircleEventNameConst.CURRENT_EVENT}.json';

  /// "A-01" のようなスペース名ごとの位置
  Future<Map<String, MapSpaceModel>> getMapSpaces() async {
    try {
      final json =
          jsonDecode(await _bundle.loadString(_assetPath))
              as Map<String, dynamic>;
      final pageNumber = json['page'] as int;
      final spaces = json['spaces'] as Map<String, dynamic>;

      return spaces.map((key, value) {
        final space = value as Map<String, dynamic>;
        final rect = (space['rect'] as List<dynamic>).cast<num>();
        return MapEntry(
          key,
          MapSpaceModel(
            pageNumber: pageNumber,
            rect: Rect.fromLTRB(
              rect[0].toDouble(),
              rect[1].toDouble(),
              rect[2].toDouble(),
              rect[3].toDouble(),
            ),
            direction: MapSpaceDirection.values.byName(space['dir'] as String),
          ),
        );
      });
    } on Exception catch (_) {
      rethrow;
    }
  }
}
