import 'package:flutter_test/flutter_test.dart';
import 'package:m3_app/core/utils/circle_util.dart';
import 'package:m3_app/domain/model/circle_model.dart';

void main() {
  group('compareBySpace', () {
    CircleModel circle(int id, String? area, String? no) => CircleModel(
      id: id,
      name: 'circle$id',
      phonetic: '',
      genre: '',
      spaceSize: 1,
      adult: false,
      prText: '',
      keywords: const [],
      realSp: area == null ? null : RealSpModel(area: area, no: no),
    );

    test('エリア → 番号 → 分割位置の順に並べる', () {
      final circles = [
        circle(1, 'あ', '01a'),
        circle(2, 'B', '01a'),
        circle(3, 'A', '10a'),
        circle(4, 'A', '02b'),
        circle(5, 'A', '02a'),
        circle(6, 'A', '9x'),
      ]..sort(CircleUtil.compareBySpace);

      expect(circles.map((e) => e.id), [5, 4, 6, 3, 2, 1]);
    });

    test('スペースがないサークルは後ろに並べる', () {
      final circles = [
        circle(1, null, null),
        circle(2, 'B', '01a'),
        circle(3, 'A', '01a'),
      ]..sort(CircleUtil.compareBySpace);

      expect(circles.map((e) => e.id), [3, 2, 1]);
    });
  });
}
