import 'dart:ui';

import '../../domain/model/map_space_model.dart';

// ignore: avoid_classes_with_only_static_members
class MapSpaceUtil {
  static final _spaceNameRegExp = RegExp(r'^(.+)-(\d+)([a-z]*)$');

  /// "A-01a" を、マップのスペース("A-01")と分割位置("a")に分ける
  ///
  /// CircleUtil.generateSpaceName の "A-01a / Web-01" のような形にも対応する
  static ({String key, String suffix})? parseSpaceName(String spaceName) {
    final realSpace = spaceName.split(' / ').first.trim();
    final match = _spaceNameRegExp.firstMatch(realSpace);
    if (match == null) {
      return null;
    }
    final number = int.parse(match.group(2)!).toString().padLeft(2, '0');
    return (key: '${match.group(1)}-$number', suffix: match.group(3)!);
  }

  /// スペースのうち、分割位置([suffix])の部分の矩形
  ///
  /// a/b は2分割、x/y/z は3分割。"ab" のように続けて書かれていればまとめて返す
  static Rect partRect(MapSpaceModel space, String suffix) {
    const groups = ['ab', 'xyz'];
    final group = groups
        .where((group) => suffix.split('').every(group.contains))
        .firstOrNull;
    if (suffix.isEmpty || group == null) {
      return space.rect;
    }

    final indexes = suffix.split('').map(group.indexOf);
    final start = indexes.reduce((a, b) => a < b ? a : b) / group.length;
    final end = (indexes.reduce((a, b) => a > b ? a : b) + 1) / group.length;

    final rect = space.rect;
    return switch (space.direction) {
      MapSpaceDirection.down => Rect.fromLTRB(
        rect.left,
        rect.top + rect.height * start,
        rect.right,
        rect.top + rect.height * end,
      ),
      MapSpaceDirection.up => Rect.fromLTRB(
        rect.left,
        rect.bottom - rect.height * end,
        rect.right,
        rect.bottom - rect.height * start,
      ),
      MapSpaceDirection.right => Rect.fromLTRB(
        rect.left + rect.width * start,
        rect.top,
        rect.left + rect.width * end,
        rect.bottom,
      ),
      MapSpaceDirection.left => Rect.fromLTRB(
        rect.right - rect.width * end,
        rect.top,
        rect.right - rect.width * start,
        rect.bottom,
      ),
    };
  }
}
