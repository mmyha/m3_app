import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:m3_app/core/utils/map_space_util.dart';
import 'package:m3_app/domain/model/map_space_model.dart';

void main() {
  group('parseSpaceName', () {
    test('分割位置ごとに分ける', () {
      expect(MapSpaceUtil.parseSpaceName('A-01a'), (key: 'A-01', suffix: 'a'));
      expect(MapSpaceUtil.parseSpaceName('ク-19x'), (key: 'ク-19', suffix: 'x'));
      expect(
        MapSpaceUtil.parseSpaceName('B-03ab'),
        (key: 'B-03', suffix: 'ab'),
      );
      expect(MapSpaceUtil.parseSpaceName('藍-19'), (key: '藍-19', suffix: ''));
    });

    test('番号を2桁にそろえる', () {
      expect(MapSpaceUtil.parseSpaceName('V-1a'), (key: 'V-01', suffix: 'a'));
    });

    test('Webスペースが付いていても会場のスペースを使う', () {
      expect(
        MapSpaceUtil.parseSpaceName('A-01a / Web-01'),
        (key: 'A-01', suffix: 'a'),
      );
    });

    test('形式が違えばnull', () {
      expect(MapSpaceUtil.parseSpaceName(''), isNull);
      expect(MapSpaceUtil.parseSpaceName('A01a'), isNull);
    });
  });

  group('partRect', () {
    const rect = Rect.fromLTRB(0, 0, 6, 12);
    MapSpaceModel space(MapSpaceDirection direction) =>
        MapSpaceModel(pageNumber: 1, rect: rect, direction: direction);

    test('分割位置がなければスペース全体', () {
      final down = space(MapSpaceDirection.down);
      expect(MapSpaceUtil.partRect(down, ''), rect);
      expect(MapSpaceUtil.partRect(down, 'ab'), rect);
      expect(MapSpaceUtil.partRect(down, 'xyz'), rect);
    });

    // 凡例: 03a が上、03b が下(番号は下へ増える)
    test('下向きならaが上', () {
      final down = space(MapSpaceDirection.down);
      expect(
        MapSpaceUtil.partRect(down, 'a'),
        const Rect.fromLTRB(0, 0, 6, 6),
      );
      expect(
        MapSpaceUtil.partRect(down, 'b'),
        const Rect.fromLTRB(0, 6, 6, 12),
      );
    });

    // 凡例: 19x が下、19z が上(番号は上へ増える)
    test('上向きならxが下', () {
      final up = space(MapSpaceDirection.up);
      expect(
        MapSpaceUtil.partRect(up, 'x'),
        const Rect.fromLTRB(0, 8, 6, 12),
      );
      expect(
        MapSpaceUtil.partRect(up, 'y'),
        const Rect.fromLTRB(0, 4, 6, 8),
      );
      expect(
        MapSpaceUtil.partRect(up, 'z'),
        const Rect.fromLTRB(0, 0, 6, 4),
      );
      expect(
        MapSpaceUtil.partRect(up, 'xy'),
        const Rect.fromLTRB(0, 4, 6, 12),
      );
    });

    // 凡例: 01a が右、01b が左(番号は左へ増える)
    test('左向きならaが右', () {
      final left = space(MapSpaceDirection.left);
      expect(
        MapSpaceUtil.partRect(left, 'a'),
        const Rect.fromLTRB(3, 0, 6, 12),
      );
      expect(
        MapSpaceUtil.partRect(left, 'b'),
        const Rect.fromLTRB(0, 0, 3, 12),
      );
    });

    test('右向きならaが左', () {
      final right = space(MapSpaceDirection.right);
      expect(
        MapSpaceUtil.partRect(right, 'a'),
        const Rect.fromLTRB(0, 0, 3, 12),
      );
      expect(
        MapSpaceUtil.partRect(right, 'z'),
        const Rect.fromLTRB(4, 0, 6, 12),
      );
    });

    test('知らない分割位置ならスペース全体', () {
      expect(
        MapSpaceUtil.partRect(space(MapSpaceDirection.down), 'ax'),
        rect,
      );
    });
  });
}
